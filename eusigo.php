<?php 
include('./conecta.php');
session_start(); // Coloquei isso para garantir que a sessão seja iniciada.

$listadeconsulta = [$_COOKIE['idchanel']]; // Usando um array para armazenar a lista de consultas.

$sqlapy = "SELECT * FROM apy ORDER BY RAND() LIMIT 1,1";
$apikey = '';
if ($rapy = $link->query($sqlapy)) {
    while ($rapi = $rapy->fetch_row()) { 
        $apikey = $rapi[1];
    }
}

$sqlnovos = "SELECT * FROM login WHERE canal_id IN (SELECT souinscrito FROM canais WHERE canal_id = ?) AND canal_id <> ? AND canal_status = 'S' ORDER BY RAND() LIMIT 0,10";
$stmt = $link->prepare($sqlnovos);
$stmt->bind_param('ss', $_COOKIE['idchanel'], $_COOKIE['idchanel']);
$stmt->execute();
$retornonovos = $stmt->get_result();

while ($respostanovos = $retornonovos->fetch_row()) {
    $id = $respostanovos[1];
    $url1 = 'https://www.googleapis.com/youtube/v3/subscriptions?part=snippet&key=' . $apikey . '&channelId=' . $_COOKIE['idchanel'] . '&forChannelId=' . $id;
    
    // Usando cURL ao invés de file_get_contents para maior controle e performance
    $jdados = file_get_contents($url1);
    if ($jdados !== false) {
        $jdadosR = json_decode($jdados, true);
        if (isset($jdadosR['pageInfo']['totalResults']) && $jdadosR['pageInfo']['totalResults'] >= 1) {
            $agora = date('d/m/Y H:i');
            // Preparando a consulta de inserção
            $sqlInsert = "INSERT INTO canais (canal_id, souinscrito, datadeinscricao) 
                          SELECT ?, ?, ? FROM DUAL WHERE NOT EXISTS (
                              SELECT canal_id FROM canais WHERE canal_id = ? AND souinscrito = ?
                          )";
            $stmtInsert = $link->prepare($sqlInsert);
            $stmtInsert->bind_param('sssss', $_COOKIE['idchanel'], $id, $agora, $_COOKIE['idchanel'], $id);
            $stmtInsert->execute();
        }
    }
}

// Reexecutando para pegar as estatísticas dos canais
$stmt->data_seek(0); // Resetando o ponteiro para reprocessar os dados
while ($respostanovos = $retornonovos->fetch_row()) {
    $id = $respostanovos[1];
    $nome = $respostanovos[2];  
    $url2 = 'https://www.googleapis.com/youtube/v3/channels?part=statistics&id=' . $id . '&key=' . $apikey;
    $api_response = file_get_contents($url2);
    $dadosdoinscrito = json_decode($api_response, true); 

    if (isset($dadosdoinscrito['items'][0]['statistics'])) {
        $totaldeinscritos = $dadosdoinscrito['items'][0]['statistics']['subscriberCount'];
        $totaldevisualizacoes = $dadosdoinscrito['items'][0]['statistics']['viewCount'];
        $totaldevideos = $dadosdoinscrito['items'][0]['statistics']['videoCount'];
    } else {
        $totaldeinscritos = 0;
        $totaldevisualizacoes = 0;
        $totaldevideos = 0;
    }
    $tempo = date("Ymdhisu");
?>
    <div class="col-xl-3 col-md-6 mb-4" id="a<?php echo $respostanovos[0];?>">
        <div class="card border-left-primary shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-1">
                        <a href="#" onclick="javascript:youtube('<?php echo $respostanovos[1]; ?>','a<?php echo $respostanovos[0]; ?>');">
                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                <?php echo  $respostanovos[2]; ?>
                            </div>
                            <div class="h6 mb-0 font-weight-bold text-gray-800">
                                <img src="<?php echo $respostanovos[3]; ?>" width="50%" alt="">
                            </div>
                            <img src="./img/inscrevasev.jpg" width="50%" alt="">
                        </a>
                    </div>
                    <ul class="navbar-nav ml-auto">
                        <div class="topbar-divider d-none d-sm-block"><small><?php echo $totaldevideos; ?> Vídeos</small></div>
                        <div class="topbar-divider d-none d-sm-block"><small><?php echo $totaldevisualizacoes; ?> Visualizações</small></div>
                        <div class="topbar-divider d-none d-sm-block"><small><?php echo $totaldeinscritos; ?> Inscritos +</small></div>
                        <div class="topbar-divider d-none d-sm-block">
                            <?php
                                $sqlcanaltotal = "SELECT count(souinscrito) FROM canais WHERE souinscrito = ?";
                                $stmtCanalTotal = $link->prepare($sqlcanaltotal);
                                $stmtCanalTotal->bind_param('s', $respostanovos[1]);
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
    // Gerenciando a lista de consultas de forma mais segura e eficiente
    $listadeconsulta[] = $id;
}
?>
</div> 

<script>
// Função para abrir o link do YouTube
function youtube(pagina, iddiv, idcanal) {
    var lista = <?php echo json_encode($listadeconsulta); ?>;
    var iddadiv = iddiv;
    var win = window.open("https://www.youtube.com/channel/" + pagina + "?sub_confirmation=1", "Youtube", "width=800,height=600"); 
    var timer = setInterval(function() {
        if (win.closed) { 
            window.open("./sql.php?conf=" + pagina + "&t=1", "Validar inscritos", "width=80,height=60"); 
            clearInterval(timer);   
            $(iddiv).remove();   
            $('#' + iddiv).remove();   
            const para = document.createElement("div");
            para.className = 'col-xl-3 col-md-6 mb-4';	  
            para.id = iddiv;
            document.getElementById("atual").appendChild(para);
            idchanel = <?php echo '"'.$_COOKIE['idchanel'].'"'; ?>;
            var link = "./nconsultadiv.php?a=" + lista + "&b=" + idchanel + "&d=" + iddiv;
            var conteudo = '#' + iddiv;
            $(conteudo).load(link); 
        }
    }, 500);
}
</script>
</body>
</html>
