<html>
<body>
<div id="atual" class="row">
<?php 
include('./conecta.php'); 

// Inicializando variáveis
$i = 0;   
$listadeconsulta = [$_COOKIE['idchanel']];

// Obtendo a chave da API de forma segura
$sqlapy = "SELECT api_key FROM apy ORDER BY RAND() LIMIT 1";
$apikey = '';
if ($rapy = $link->query($sqlapy)) {
    while ($rapi = $rapy->fetch_row()) { 
        $apikey = $rapi[0];  // A chave da API
    }
}

// Consulta para obter canais relacionados
$sqlnovos = "SELECT * FROM login WHERE canal_id IN (
                SELECT medesinscrevi 
                FROM canais 
                WHERE canal_id = ?) AND canal_id <> ? AND canal_status = 'S' 
                ORDER BY RAND() LIMIT 0, 10";

// Preparando a consulta
if ($stmt = $link->prepare($sqlnovos)) {
    $stmt->bind_param('ss', $_COOKIE['idchanel'], $_COOKIE['idchanel']); // Bind para evitar SQL Injection
    $stmt->execute();
    $result = $stmt->get_result();

    // Exibindo resultados dos canais
    while ($respostanovos = $result->fetch_row()) {
        $id = $respostanovos[1];

        // Verificando a inscrição no canal
        $url1 = "https://www.googleapis.com/youtube/v3/subscriptions?part=snippet&key=$apikey&channelId={$_COOKIE['idchanel']}&forChannelId=$id";
        $jdados = json_decode(file_get_contents($url1), true);
        if (isset($jdados['pageInfo']['totalResults']) && $jdados['pageInfo']['totalResults'] == 0) {
            // Se não estiver inscrito, o canal pode ser mostrado
            $url2 = "https://www.googleapis.com/youtube/v3/channels?part=statistics&id=$id&key=$apikey";
            $api_response = json_decode(file_get_contents($url2), true);

            // Pega as estatísticas do canal
            $totaldeinscritos = $api_response['items'][0]['statistics']['subscriberCount'];
            $totaldevisualizacoes = $api_response['items'][0]['statistics']['viewCount'];
            $totaldevideos = $api_response['items'][0]['statistics']['videoCount'];

            // Gerando HTML para cada canal
            ?>
            <div class="col-xl-3 col-md-6 mb-4" id="a<?php echo $respostanovos[0];?>">
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
                                <div class="topbar-divider d-none d-sm-block"><small><?php echo $totaldevideos;?> Vídeos</small></div>
                                <div class="topbar-divider d-none d-sm-block"><small><?php echo $totaldevisualizacoes;?> Visualizações</small></div>
                                <div class="topbar-divider d-none d-sm-block"><small><?php echo $totaldeinscritos;?> Inscritos + </small></div>
                                <div class="topbar-divider d-none d-sm-block">
                                    <?php
                                    // Contando o número de inscritos no site
                                    $sqlcanaltotal = "SELECT count(souinscrito) FROM canais WHERE souinscrito = ?";
                                    if ($stmtTotal = $link->prepare($sqlcanaltotal)) {
                                        $stmtTotal->bind_param('s', $respostanovos[1]);
                                        $stmtTotal->execute();
                                        $resultTotal = $stmtTotal->get_result();
                                        if ($rsqlcanaltotal = $resultTotal->fetch_row()) {
                                            echo "<small>" . $rsqlcanaltotal[0] . " deste site.</small>";
                                        }
                                    }
                                    ?>
                                </div>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <?php

            // Atualizando a lista de canais para as futuras requisições
            $listadeconsulta[] = $id;
            $i++;
        }
    }
    $stmt->close();
}
?>
</div>

<script>
// Função para abrir o link do YouTube
function youtube(pagina, iddiv) {
    var lista = <?php echo json_encode($listadeconsulta); ?>;
    var iddadiv = iddiv;

    // Abre o canal no YouTube em uma nova janela
    var win = window.open("https://www.youtube.com/channel/" + pagina + "?sub_confirmation=1", "Youtube", "width=800,height=600");

    // Monitorando o fechamento da janela
    var timer = setInterval(function() {
        if (win.closed) { 
            // Após o fechamento da janela, valida o inscrito
            window.open("./sql.php?conf=" + pagina + "&t=2", "Validar inscritos", "width=80,height=60"); 
            clearInterval(timer);   

            // Remove o canal atual e carrega novamente
            $(iddiv).remove();   
            $('#' + iddiv).remove();   
            const para = document.createElement("div");
            para.className = 'col-xl-3 col-md-6 mb-4';	  
            para.id = iddiv;
            document.getElementById("atual").appendChild(para);
            var idchanel = <?php echo '"'.$_COOKIE['idchanel'].'"'; ?>;
            var link = "./nconsultadiv.php?a=" + JSON.stringify(lista) + "&b=" + idchanel + "&d=" + iddiv;
            var conteudo = '#' + iddiv;
            $(conteudo).load(link); 
        }
    }, 500);
}
</script>

</body>
</html>
