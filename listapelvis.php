<?php
require_once('config.php');
require_once('lib.php');
?>
<form action="Menu.php" method="post" align="center">
	<table collapse align="center">
	<tr>
	<td colspan="2" align="center"><input type="submit" value="Menu"/></td>
	</tr>
	</table>
</form>
<?php
require_once('config.php');
require_once('lib.php');
?>
<form action="recagregarpelvis.php" method="post" align="center">
	<table collapse align="center">
	<tr>Pelvis y Pubis</tr>
	<tr>
		<td colspan="2" align="center">Agregar</td>
	</tr>	
	<tr>
		<td><b>Nombre:</b></td>
		<td><input type="text" id="nombre" name="nombre"/></td>
	</tr>
	<?php
	echo "<tr>";
	echo "<td><b>Tipo:</b></td>";
	echo "<td>";
	echo "<select name='tipos'>";
	$tipos= gettipos();
	foreach ($tipos as $key => $tipo) {
  	echo"<option value='{$tipo->id}'>{$tipo->tipo}</option>";	
	}
	echo "</select>";
	echo "</td>";
	echo "</tr>";
	?>
	
	<tr>
		<td><b>Descripcion</b></td>
		<td><input type="text" id="descripcion" name="descripcion"/></td>
	</tr>
	<tr>
	<td colspan="2" align="center"><input type="submit" value="Agregar"/></td>
	</tr>
	</table>
</form>
<?php
require_once('config.php');
require_once('lib.php');
$pelvis=getpelvis();
//lista
echo "<table border='1'>";
echo "<tr>";
echo "<th>Nombre</th>";
echo "<th>Tipo</th>";
echo "<th>Descripcion</th>";
echo "</tr>";
foreach ($pelvis as $key => $value) {
	echo "<tr>";
	echo "<form action='eliminarpelvis.php' method='POST'>";
	echo "<td>{$value->nombre}</td>";
	echo "<td>{$value->tipos}</td>";
	echo "<td>{$value->descripcion}</td>";
	echo "<td><input type='hidden' value='{$value->id}' name='id'/>";
	echo "<input type='submit' value='Borrar'/></td>";
	echo "</form>";
	echo "</tr>";
}
?>



