<html>
<body>
<?php

include('./conecta.php'); 

// Sanitizando entradas
$idchanel = isset($_GET['b']) ? mysqli_real_escape_string($link, $_GET['b']) : '';
$i = isset($_GET['d']) ? (int)$_GET['d'] : 0;
$canal = isset($_GET['e']) ? mysqli_real_escape_string($link, $_GET['e']) : '';
$lista = isset($_GET['a']) ? json_decode($_GET['a'], true) : [];

if (empty($lista)) {
    die("A lista de canais está vazia.");
}

// Obtendo a chave de API
$sqlapy = "SELECT * FROM apy ORDER BY RAND() LIMIT 1,1";
$apikey = '';
if ($rapy = $link->query($sqlapy)) {
    while ($rapi = $rapy->fetch_row()) {
        $apikey = $rapi[1];
    }
}

// Formando a lista para consulta
$in = "('" . implode("', '", array_map('mysqli_real_escape_string', $lista)) . "')";
$sqlnovos = "SELECT * FROM login WHERE canal_id NOT IN (SELECT CONCAT(souinscrito, medesinscrevi) AS inscrito FROM canais WHERE canal_id IN $in) AND canal_id NOT IN $in AND canal_status = 'S' ORDER BY RAND() LIMIT 0,1";

$retornonovos = $link->query($sqlnovos);
if ($retornonovos) {
    while ($respostanovos = $retornonovos->fetch_row()) {
        $id = $respostanovos[1];

        // Consultando se já está inscrito no canal
        $url0 = 'https://www.googleapis.com/youtube/v3/subscriptions?part=snippet&key=' . $apikey . '&channelId=UCdOA_1KzXHIp3gmVyyYv2sg&forChannelId=' . $id;
        $jdados0 = json_decode(file_get_contents($url0), true);
        if (isset($jdados0['pageInfo']['totalResults']) && $jdados0['pageInfo']['totalResults'] == 0) {
            $update = "UPDATE login SET canal_status = 'S' WHERE canal_id = '$id'";
            mysqli_query($link, $update);
        } else {
            // Verificando se o usuário já é inscrito no canal
            $url1 = 'https://www.googleapis.com/youtube/v3/subscriptions?part=snippet&key=' . $apikey . '&channelId=' . $_COOKIE['idchanel'] . '&forChannelId=' . $id;
            $jdados = json_decode(file_get_contents($url1), true);
            if (isset($jdados['pageInfo']['totalResults']) && $jdados['pageInfo']['totalResults'] >= 1) {
                $agora = date('Y-m-d H:i:s'); // Data formatada para SQL
                $iinscrito = "INSERT INTO canais (canal_id, souinscrito, datadeinscricao)
                SELECT  '" . $_COOKIE['idchanel'] . "', '$id', '$agora'
                WHERE NOT EXISTS (SELECT canal_id FROM canais WHERE canal_id = '" . $_COOKIE['idchanel'] . "')";
                mysqli_query($link, $iinscrito);
            }
        }

        // Obter estatísticas do canal
        $url2 = 'https://www.googleapis.com/youtube/v3/channels?part=statistics&id=' . $id . '&key=' . $apikey;
        $api_response = json_decode(file_get_contents($url2), true);
        if (isset($api_response['items'][0]['statistics'])) {
            $totaldeinscritos = $api_response['items'][0]['statistics']['subscriberCount'];
            $totaldevisualizacoes = $api_response['items'][0]['statistics']['viewCount'];
            $totaldevideos = $api_response['items'][0]['statistics']['videoCount'];

            // Criando div do canal
            ?>
            <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-1">
                            <a href="#" onclick="javascript:youtube('<?php echo $respostanovos[1]; ?>', '<?php echo $i; ?>');">
                                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1"></div>
                                <div class="h6 mb-0 font-weight-bold text-gray-800">
                                    <img src="<?php echo $respostanovos[3]; ?>" width="50%" alt="">
                                </div>
                                <img src="./img/inscrevasev.jpg" width="50%" alt="">
                            </a>
                        </div>
                        <ul class="navbar-nav ml-auto">
                            <div class="topbar-divider d-none d-sm-block">
                                <small><?php echo $totaldevideos; ?> Vídeos</small>
                            </div>
                            <div class="topbar-divider d-none d-sm-block">
                                <small><?php echo $totaldevisualizacoes; ?> Visualizações</small>
                            </div>
                            <div class="topbar-divider d-none d-sm-block">
                                <small><?php echo $totaldeinscritos; ?> Inscritos, sendo</small>
                            </div>
                            <div class="topbar-divider d-none d-sm-block">
                                <?php
                                $sqlcanaltotal = "SELECT count(souinscrito) FROM canais WHERE souinscrito = '" . $respostanovos[1] . "'";
                                if ($resqlcanaltotal = $link->query($sqlcanaltotal)) {
                                    while ($rsqlcanaltotal = $resqlcanaltotal->fetch_row()) {
                                        ?>
                                        <small><?php echo $rsqlcanaltotal[0]; ?> deste site</small>
                                        <?php
                                    }
                                }
                                ?>
                            </div>
                        </ul>
                    </div>
                </div>
            </div>
            <?php
        }
    }
}
?>
</body>
</html>
