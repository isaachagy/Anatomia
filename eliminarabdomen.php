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
$id=$_POST['id'];
if (eliminarabdomen($id)) {
	echo "";
} else {
	echo "error";
}
?>

<?php
require_once('config.php');
require_once('lib.php');
?>
<form action="recagregarabdomen.php" method="post" align="center">
	<table collapse align="center">
	<tr>Abdomen</tr>
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
$abdomen=getabdomen();
//lista
echo "<table border='1'>";
echo "<tr>";
echo "<th>Nombre</th>";
echo "<th>Tipo</th>";
echo "<th>Descripcion</th>";
echo "</tr>";
foreach ($abdomen as $key => $value) {
	echo "<tr>";
	echo "<form action='eliminarabdomen.php' method='POST'>";
	echo "<td>{$value->nombre}</td>";
	echo "<td>{$value->tipos}</td>";
	echo "<td>{$value->descripcion}</td>";
	echo "<td><input type='hidden' value='{$value->id}' name='id'/>";
	echo "<input type='submit' value='Borrar'/></td>";
	echo "</form>";
	echo "</tr>";
}
?>