<html><body>
<div id="atual" class="row">
<?php
include('./conecta.php');

// Validação e sanitização do cookie
$idChanel = isset($_COOKIE['idchanel']) ? htmlspecialchars($_COOKIE['idchanel'], ENT_QUOTES, 'UTF-8') : null;
if ($idChanel === null) {
    die('Erro: ID do canal não encontrado.');
}

// Preparar consulta para pegar a chave de API
$sqlapy = "SELECT api_key FROM apy ORDER BY RAND() LIMIT 1,1";
$rapy = $link->query($sqlapy);
if ($rapy && $rapy->num_rows > 0) {
    $apikey = $rapy->fetch_row()[0];
} else {
    die('Erro: Chave de API não encontrada.');
}

// Preparar consulta para pegar novos canais
$sqlnovos = "SELECT * FROM login 
             WHERE canal_id IN (SELECT canal_id FROM canais WHERE medesinscrevi = ?)
             AND canal_id <> ? 
             AND canal_status = 'S'  
             ORDER BY RAND() LIMIT 10";

$stmt = $link->prepare($sqlnovos);
$stmt->bind_param("ss", $idChanel, $idChanel);
$stmt->execute();
$retornonovos = $stmt->get_result();

// Exibir os resultados
$i = 0;
$listadeconsulta = ["'".$idChanel."'"];

while ($respostanovos = $retornonovos->fetch_row()) {
    $id = $respostanovos[1];
    $nome = $respostanovos[2];

    // Usar cURL para obter dados da API do YouTube
    $url2 = "https://www.googleapis.com/youtube/v3/channels?part=statistics&id={$id}&key={$apikey}";
    $api_response = getApiResponse($url2);
    $dadosdoinscrito = json_decode($api_response, true);

    $totaldeinscritos = $dadosdoinscrito['items'][0]['statistics']['subscriberCount'];
    $totaldevisualizacoes = $dadosdoinscrito['items'][0]['statistics']['viewCount'];
    $totaldevideos = $dadosdoinscrito['items'][0]['statistics']['videoCount'];

    // Gerar HTML para exibição
?>
    <div class="col-xl-3 col-md-6 mb-4" id="a<?php echo $respostanovos[0]; ?>">
        <div class="card border-left-primary shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-1">
                        <a href="#" onclick="javascript:youtube('<?php echo $respostanovos[1]; ?>', 'a<?php echo $respostanovos[0]; ?>');">
                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                <?php echo $respostanovos[2]; ?>
                            </div>
                            <div class="h6 mb-0 font-weight-bold text-gray-800">
                                <img src="<?php echo $respostanovos[3]; ?>" width="50%" alt="">
                            </div>
                            <img src="./img/inscrevasev.jpg" width="50%" alt=''>
                        </a>
                    </div>
                    <ul class="navbar-nav ml-auto">
                        <div class="topbar-divider d-none d-sm-block"><small><?php echo $totaldevideos; ?> Vídeos</small></div>
                        <div class="topbar-divider d-none d-sm-block"><small><?php echo $totaldevisualizacoes; ?> Viewers</small></div>
                        <div class="topbar-divider d-none d-sm-block"><small><?php echo $totaldeinscritos; ?> Inscritos +</small></div>
                        <div class="topbar-divider d-none d-sm-block">
                            <?php
                            $sqlcanaltotal = "SELECT count(souinscrito) FROM canais WHERE souinscrito = ?";
                            $stmtCanalTotal = $link->prepare($sqlcanaltotal);
                            $stmtCanalTotal->bind_param("s", $respostanovos[1]);
                            $stmtCanalTotal->execute();
                            $resqlcanaltotal = $stmtCanalTotal->get_result()->fetch_row();
                            ?>
                            <small><?php echo $resqlcanaltotal[0]; ?> deste site.</small>
                        </div>
                    </ul>
                </div>
            </div>
        </div>
    </div>
<?php
    // Construir lista de canais
    $listadeconsulta[] = "'".$id."'";
    $i++;
}

function getApiResponse($url) {
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $response = curl_exec($ch);
    curl_close($ch);
    return $response;
}
?>
</div>

<script>
// Função JavaScript para lidar com a interação de inscrição no YouTube
function youtube(pagina, iddiv) {
    var lista = <?php echo json_encode($listadeconsulta); ?>;
    var iddadiv = iddiv;
    var win = window.open("https://www.youtube.com/channel/" + pagina + "?sub_confirmation=1", "Youtube", "width=800,height=600");

    var timer = setInterval(function() {
        if (win.closed) {
            window.open("./sql.php?conf=" + pagina + "&t=3", "Validar inscritos", "width=80,height=60");
            clearInterval(timer);
            document.getElementById(iddiv).remove();
            const para = document.createElement("div");
            para.className = 'col-xl-3 col-md-6 mb-4';
            para.id = iddiv;
            document.getElementById("atual").appendChild(para);

            var idchanel = <?php echo '"'.$_COOKIE['idchanel'].'"'; ?>;
            var link = "./nconsultadiv.php?a=" + lista + "&b=" + idchanel + "&d=" + iddiv;
            document.getElementById(iddiv).load(link);
        }
    }, 500);
}
</script>
</body></html>
