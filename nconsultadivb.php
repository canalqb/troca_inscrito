<?php
include("./conecta.php");

// Sanitize and validate input
$idchanel = isset($_GET['b']) ? htmlspecialchars($_GET['b'], ENT_QUOTES, 'UTF-8') : null;
$api_key = isset($_GET['c']) ? htmlspecialchars($_GET['c'], ENT_QUOTES, 'UTF-8') : null;
$i = isset($_GET['d']) ? (int)$_GET['d'] : 0;
$lista = isset($_GET['a']) ? explode(',', $_GET['a']) : [];

if (!$idchanel || !$api_key || empty($lista)) {
    die("Missing required parameters.");
}

$in = implode("','", array_map('mysqli_real_escape_string', $lista));
$consulta1 = "SELECT * FROM login WHERE idcanal NOT IN (SELECT (desinscrito & inscrito) AS inscrito FROM inscritos WHERE idcanal IN ('$in')) AND ativo = 'sim' ORDER BY RAND() LIMIT 1,1";

if ($result1 = $link->query($consulta1)) {
    while ($row1 = $result1->fetch_row()) {
        $retornodeinscrito = $row1[1];

        if (strpos($in, $retornodeinscrito) !== false) {
            echo "Volte mais tarde!<br>O site está captando novos inscritos para você.<br>Aproveite e receba 10 pontos por referência.";
        } else {
            if ($idchanel != $retornodeinscrito) {
                // Fetch YouTube channel data using cURL
                $channelData = getYouTubeChannelData($api_key, $idchanel, $retornodeinscrito);
                if ($channelData) {
                    $titulocanal = $channelData['title'];
                    $imgpequena = $channelData['thumbnails']['default'];
                    $totaldeinscritos = $channelData['statistics']['subscriberCount'];
                    $totaldevisualizacoes = $channelData['statistics']['viewCount'];
                    $totaldevideos = $channelData['statistics']['videoCount'];

                    // Handle the list of channels for further processing
                    if (!isset($listadeconsulta)) {
                        $listadeconsulta = $retornodeinscrito;
                    } else {
                        $listadeconsulta = array_merge($listadeconsulta, [$retornodeinscrito]);
                    }
                    $i++;

                    // Display channel information
                    echo "<div class='col-md-auto' id='ab$i'>";
                    echo "<div class='card-header p-3 pt-2'>";
                    echo "<a onclick='javascript:youtube(\"$retornodeinscrito\", \"$i\");'>";
                    echo "<p class='text-sm mb-0 text-capitalize'>$titulocanal</p>";
                    echo "<img src='./assets/img/inscrevasev.jpg' width='88px' height='30%' />";
                    echo "<p><img src='$imgpequena' width='88px'/></p></a>";
                    echo "<p class='mb-0 '>$totaldevideos Videos</p>";
                    echo "<p class='mb-0 '><span class='text-success text-sm font-weight-bolder'>$totaldeinscritos</span> inscritos no canal.</p>";
                    echo "<p class='mb-0'><span class='text-success text-sm font-weight-bolder'>" . ($totaldeinscritos - 10) . "</span> inscritos, deste site.</p>";
                    echo "</div></div>";
                }
            }
        }
    }
}

/**
 * Fetch YouTube channel data (snippet, statistics)
 * 
 * @param string $api_key YouTube API key
 * @param string $idchanel Channel ID of the current user
 * @param string $retornodeinscrito Channel ID of the subscribed channel
 * @return array|null Channel data or null on failure
 */
function getYouTubeChannelData($api_key, $idchanel, $retornodeinscrito) {
    $url = "https://www.googleapis.com/youtube/v3/subscriptions?part=snippet&key=$api_key&channelId=$idchanel&forChannelId=$retornodeinscrito";
    $api_response = makeApiRequest($url);
    $verinscrito = json_decode($api_response, true);

    if (isset($verinscrito['pageInfo']['totalResults']) && $verinscrito['pageInfo']['totalResults'] == 0) {
        $url = "https://www.googleapis.com/youtube/v3/channels?part=snippet&id=$retornodeinscrito&key=$api_key";
        $api_response = makeApiRequest($url);
        $verinscrito = json_decode($api_response, true);

        if (isset($verinscrito['items'][0])) {
            $channelData = $verinscrito['items'][0]['snippet'];
            $statistics = $verinscrito['items'][0]['statistics'];

            return [
                'title' => $channelData['title'],
                'thumbnails' => $channelData['thumbnails'],
                'statistics' => $statistics,
            ];
        }
    }

    return null; // Return null if the channel is not found or there's an error
}

/**
 * Makes an API request and returns the response
 * 
 * @param string $url The URL of the API request
 * @return string API response
 */
function makeApiRequest($url) {
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $response = curl_exec($ch);
    curl_close($ch);
    
    return $response;
}
?>
