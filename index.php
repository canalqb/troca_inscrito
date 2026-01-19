<?php 
session_start();
include('./conecta.php');

if (isset($_COOKIE['idchanel'])) {
    // Previne SQL Injection usando prepared statements
    $canal_id = $_COOKIE['idchanel'];

    $stmt = $link->prepare("SELECT * FROM login WHERE canal_id = ? AND canal_status = 'S'");
    $stmt->bind_param('s', $canal_id);  // 's' para string (canal_id)
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $respostacanal = $result->fetch_assoc();
        
        // Armazenando as informações do canal em variáveis de sessão ou locais
        $_SESSION['canal_id'] = $respostacanal['canal_id'];
        $_SESSION['canal_nome'] = $respostacanal['canal_nome'];
        $_SESSION['canal_imgP'] = $respostacanal['canal_imgP'];
        $_SESSION['canal_imgM'] = $respostacanal['canal_imgM'];
        $_SESSION['canal_imgG'] = $respostacanal['canal_imgG'];
        $_SESSION['canal_referenciador'] = $respostacanal['canal_referenciador'];
        $_SESSION['canal_status'] = $respostacanal['canal_status'];
        $_SESSION['canal_inscricao'] = $respostacanal['canal_inscricao'];
    }
    $stmt->close();
}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta name="monetag" content="6c5f610226661c496373ee2e3e4b723d" />
    <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-3614622181047762" crossorigin="anonymous"></script>
    <title>Sistema de trocas de inscrito - Sub4.2Sub</title>
    
    <?php 
    include('./head/meta.php');
    include('./head/css.php');
    include('./head/script.php'); 
    ?>
</head>
<body id="page-top">
    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/pt_BR/sdk.js#xfbml=1&version=v14.0&appId=745997899928065&autoLogAppEvents=1" nonce="AOUHT0lj"></script>

    <div id="wrapper">
        <!-- Sidebar Menu -->
        <ul class="navbar-nav bg-info sidebar sidebar-dark accordion border border-primary rounded-bottom" id="accordionSidebar">
            <?php include('./menu/topo.php'); ?>
            <?php include('./menu/meio.php'); ?>
            <?php include('./menu/fim.php'); ?>
        </ul> 

        <div id="content-wrapper" class="d-flex flex-column"> 
            <div id="content"> 
                <div class="container-fluid">
                    <?php include('./corpo/corpo.php'); ?>
                </div> 
            </div>  
            <?php include('./corpo/footer.php'); ?>
        </div> 
    </div> 

    <!-- Scroll to top button -->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <?php include('./head/scriptantesdobarrabody.php'); ?>

    <!-- Custom scripts -->
    <script>
        function login(pagina){ 
            var link = pagina + "?idchannel=" + document.getElementById("idchannel").value;
            <?php if(isset($_GET['r'])) { echo '+"&r="+document.getElementById("r").value'; }; ?>
            $("#up").load(link);
        }  

        function carregar2(pagina){ 
            var link = pagina;
            $("#up").load(link);
        }  

        function carregar3(pagina){ 
            var link = pagina;
            $("#atual").load(link);
        }
    </script>

    <script>
        !function(r,u,m,b,l,e){
            r._Rumble=b;
            r[b]||(r[b]=function(){
                (r[b]._=r[b]._||[]).push(arguments);
                if(r[b]._.length==1){
                    l=u.createElement(m),
                    e=u.getElementsByTagName(m)[0],
                    l.async=1,
                    l.src="https://rumble.com/embedJS/u13bnay"+(arguments[1].video?'.'+arguments[1].video:'')+"/?url="+encodeURIComponent(location.href)+"&args="+encodeURIComponent(JSON.stringify([].slice.apply(arguments))),
                    e.parentNode.insertBefore(l,e)
                }
            })
        }(window, document, "script", "Rumble");
    </script>

    <script>
        var isMobile = {
            Android: function() { return navigator.userAgent.match(/Android/i); },
            BlackBerry: function() { return navigator.userAgent.match(/BlackBerry/i); },
            iOS: function() { return navigator.userAgent.match(/iPhone|iPad|iPod/i); },
            Opera: function() { return navigator.userAgent.match(/Opera Mini/i); },
            Windows: function() { return navigator.userAgent.match(/IEMobile/i) || navigator.userAgent.match(/WPDesktop/i); },
            any: function() { return (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Opera() || isMobile.Windows()); }
        };

        if (isMobile.Android()) {
            popUpObj = window.open("https://s.kwai.app/s1/jK3Nke-7", "toolbar=no,scrollbars=no,location=no,statusbar=no,menubar=no,resizable=0");
            popUpObj.focus();
            popUpObj.querySelector('.call-app-button').click();
            document.querySelector('.call-app-button').click();
            LoadModalDiv();
        }
    </script>
</body>
</html>
