<?php
// Criação de uma sessão SNMP para se conectar ao dispositivo
$session = new SNMP(SNMP::VERSION_1, "127.0.0.1", "public");

// Consulta simples: obter a descrição do sistema
$sysdescr = $session->get("sysDescr.0");

// Exibindo o resultado da consulta simples
echo "Descrição do Sistema (sysDescr.0): $sysdescr\n";

// Consulta com múltiplos OIDs
$sysdescrArray = $session->get(array("sysDescr.0"));

// Exibindo o resultado como um array associativo
echo "Resultado com múltiplos OIDs:\n";
print_r($sysdescrArray);
?>
