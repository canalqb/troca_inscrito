<html>
<body>
<?php
// Exibe as informações do PHP (para debug e informações do servidor)
phpinfo();

// Defina as credenciais de conexão (melhor usar variáveis de ambiente ou arquivo de configuração para segurança)
$servername = "localhost";
$username = "root"; // Evite usar 'root' em ambientes de produção
$password = "";     // Melhor usar uma senha forte
$dbname = "your_database_name";  // Defina o nome do banco de dados, se necessário

// Conectar-se ao MySQL usando MySQLi
$link = new mysqli($servername, $username, $password, $dbname);

// Verifique a conexão
if ($link->connect_error) {
    die("Conexão falhou: " . $link->connect_error);
}

// Exibe a versão do servidor MySQL
echo "Versão do servidor MySQL: " . $link->server_info . "<br>";

// Fechar a conexão ao banco de dados
$link->close();
?>
</body>
</html>
