<?php
$cfg["db_host"]="localhost"; 
$cfg["db_name"]="anatomia"; 
$cfg["db_user"]="root";
$cfg["db_pass"]="";
	function getdb(){
		global $cfg;
		$db=mysql_pconnect($cfg["db_host"],$cfg["db_user"],$cfg["db_pass"]);
		$db_sel=mysql_select_db($cfg["db_name"],$db);
		if ($db) {
			echo "";
		}
		else {
			echo "Error al conectar la base de datos";
		}
	}
getdb();
?>