<html>
<body>
<?php 
include('./conecta.php'); 

// Função para obter pontos com base no tipo de ponto
function getPontos($link, $sigla) {
    $sqlpc = "SELECT * FROM tiposdepontos WHERE Sigla = ?";
    $stmt = $link->prepare($sqlpc);
    $stmt->bind_param('s', $sigla);
    $stmt->execute();
    $result = $stmt->get_result();
    $ponto = 0;
    if ($row = $result->fetch_row()) {
        $ponto = $row[3];  // Valor do ponto
    }
    return $ponto;
}

$sqlapy = "SELECT * FROM apy ORDER BY RAND() LIMIT 1,1";
if ($rapy = $link->query($sqlapy)) {
    while ($rapi = $rapy->fetch_row()) { 
        $apikey = $rapi[1]; 
    }
}

$meucanal = $_COOKIE['idchanel'];
$id = $_GET['conf'];
$mtipo = $_GET['t'];
$agora = date('d/m/Y H:i');	

// URL para obter dados de inscrição
$url1 = 'https://www.googleapis.com/youtube/v3/subscriptions?part=snippet&key='.$apikey.'&channelId='.$_COOKIE['idchanel'].'&forChannelId='.$id;
$jdados = file_get_contents($url1);
$jdadosR = json_decode($jdados, true);

// Verifica se há resultados na API
$totalResults = isset($jdadosR['pageInfo']['totalResults']) ? $jdadosR['pageInfo']['totalResults'] : 0;

if ($mtipo == 'a') {
    if ($totalResults == 0) {
        echo "";
    } elseif ($totalResults >= 1) {
        // Canal foi inscrito
        $insert = "INSERT INTO canais (canal_id, souinscrito, datadeinscricao)
                   VALUES (?, ?, ?)";
        $stmt = $link->prepare($insert);
        $stmt->bind_param('sss', $_COOKIE['idchanel'], $id, $agora);
        $stmt->execute();

        // Obtém o ponto para 'PI'
        $ponto = getPontos($link, 'PI');

        // Inscrição - PI
        $iponto = "INSERT INTO pontosdocanal (canal_id, tipoponto, vtipoponto, canal_inscricao)
                   VALUES (?, 'PI', ?, ?)";
        $stmt = $link->prepare($iponto);
        $stmt->bind_param('sss', $_COOKIE['idchanel'], $ponto, $agora);
        $stmt->execute();

        // Retira 1 ponto de inscrição do canal
        $riponto = "INSERT INTO pontosdocanal (canal_id, tipoponto, vtipoponto, canal_inscricao)
                    VALUES (?, 'RPI', -1, ?)";
        $stmt = $link->prepare($riponto);
        $stmt->bind_param('ss', $id, $agora);
        $stmt->execute();
    }
}

// Caso o tipo seja 1 (desinscrever)
if ($mtipo == 1) {
    if ($totalResults == 0) {
        // Canal foi desinscrito
        $update = "UPDATE canais SET
                   souinscrito = '', datadeinscricao = '',
                   medesinscrevi = ?, datadedesinscricao = ?
                   WHERE canal_id = ? AND souinscrito = ?";
        $stmt = $link->prepare($update);
        $stmt->bind_param('ssss', $id, $agora, $_COOKIE['idchanel'], $id);
        $stmt->execute();

        // Obtém o ponto para 'PD'
        $ponto = getPontos($link, 'PD');

        // Remove 4 pontos
        $iponto = "INSERT INTO pontosdocanal (canal_id, tipoponto, vtipoponto, canal_inscricao)
                   VALUES (?, 'PD', ?, ?)";
        $stmt = $link->prepare($iponto);
        $stmt->bind_param('sss', $_COOKIE['idchanel'], $ponto, $agora);
        $stmt->execute();

        // Alimenta canal desinscrito com 2 pontos
        $ponto = getPontos($link, 'GD');
        $iponto = "INSERT INTO pontosdocanal (canal_id, tipoponto, vtipoponto, canal_inscricao)
                   VALUES (?, 'GD', ?, ?)";
        $stmt = $link->prepare($iponto);
        $stmt->bind_param('sss', $id, $ponto, $agora);
        $stmt->execute();
    }
}

// Caso o tipo seja 2 (reinscrever)
if ($mtipo == 2) {
    if ($totalResults >= 1) {
        // Canal foi reinscrito
        $update = "UPDATE canais SET
                   souinscrito = ?, datadeinscricao = ?,
                   medesinscrevi = '', datadedesinscricao = ''
                   WHERE canal_id = ? AND medesinscrevi = ?";
        $stmt = $link->prepare($update);
        $stmt->bind_param('ssss', $id, $agora, $_COOKIE['idchanel'], $id);
        $stmt->execute();

        // Obtém o ponto para 'PI' (inscrito)
        $ponto = getPontos($link, 'PI');

        // Inscrição - PI
        $iponto = "INSERT INTO pontosdocanal (canal_id, tipoponto, vtipoponto, canal_inscricao)
                   VALUES (?, 'PI', ?, ?)";
        $stmt = $link->prepare($iponto);
        $stmt->bind_param('sss', $_COOKIE['idchanel'], $ponto, $agora);
        $stmt->execute();

        // Retira 1 ponto de inscrição
        $riponto = "INSERT INTO pontosdocanal (canal_id, tipoponto, vtipoponto, canal_inscricao)
                    VALUES (?, 'RPI', -1, ?)";
        $stmt = $link->prepare($riponto);
        $stmt->bind_param('ss', $id, $agora);
        $stmt->execute();
    }
}

// Caso o tipo seja 3 (condição final)
if ($mtipo == 3) {
    if ($totalResults == 0) {
        // Canal desinscrito
        $update = "UPDATE canais SET
                   souinscrito = '', datadeinscricao = '',
                   medesinscrevi = ?, datadedesinscricao = ?
                   WHERE canal_id = ? AND souinscrito = ?";
        $stmt = $link->prepare($update);
        $stmt->bind_param('ssss', $id, $agora, $_COOKIE['idchanel'], $id);
        $stmt->execute();

        // Remove 4 pontos
        $ponto = getPontos($link, 'PD');
        $iponto = "INSERT INTO pontosdocanal (canal_id, tipoponto, vtipoponto, canal_inscricao)
                   VALUES (?, 'PD', ?, ?)";
        $stmt = $link->prepare($iponto);
        $stmt->bind_param('sss', $_COOKIE['idchanel'], $ponto, $agora);
        $stmt->execute();

        // Alimenta canal desinscrito com 2 pontos
        $ponto = getPontos($link, 'GD');
        $iponto = "INSERT INTO pontosdocanal (canal_id, tipoponto, vtipoponto, canal_inscricao)
                   VALUES (?, 'GD', ?, ?)";
        $stmt = $link->prepare($iponto);
        $stmt->bind_param('sss', $id, $ponto, $agora);
        $stmt->execute();
    }
}

// Fechar a janela do navegador após a execução
echo "<script>window.close()</script>";
?>

</body>
</html>
