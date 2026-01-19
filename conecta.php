<html><body>
<?php 
// dados de conexão
$host = 'sql200.epizy.com';
$user = 'epiz_29784159';
$pass = 'kKTm6Y9GHlH';
$db   = 'epiz_29784159_yt';
$link = mysqli_connect($host, $user, $pass, $db); 
$link->set_charset('utf8');

if (mysqli_connect_errno()) {
  echo "Erro no SQL: " . mysqli_connect_error();
  exit();
}
//mysqli_close($link); 
?>


</body></html> 