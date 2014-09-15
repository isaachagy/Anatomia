<?php
require_once ('config.php');



function gettipos(){
	$sql="SELECT * FROM tipos;";
	$result=mysql_query($sql);
	$i=0;
	$info=array();
	while ($row=mysql_fetch_object($result)) {
		$info[$i]=$row;
		$i++;
	}
	return $info;
}
function getdorso(){
	$sql="SELECT * FROM dorso;";
	$result=mysql_query($sql);
	$i=0;
	$info=array();
	while ($row=mysql_fetch_object($result)) {
		$info[$i]=$row;
		$i++;
	}
	return $info;
}
function gettorax(){
	$sql="SELECT * FROM torax;";
	$result=mysql_query($sql);
	$i=0;
	$info=array();
	while ($row=mysql_fetch_object($result)) {
		$info[$i]=$row;
		$i++;
	}
	return $info;
}

function getcc(){
	$sql="SELECT * FROM cc;";
	$result=mysql_query($sql);
	$i=0;
	$info=array();
	while ($row=mysql_fetch_object($result)) {
		$info[$i]=$row;
		$i++;
	}
	return $info;
}
function getextinf(){
	$sql="SELECT * FROM extinf;";
	$result=mysql_query($sql);
	$i=0;
	$info=array();
	while ($row=mysql_fetch_object($result)) {
		$info[$i]=$row;
		$i++;
	}
	return $info;
}
function getextsup(){
	$sql="SELECT * FROM extsup;";
	$result=mysql_query($sql);
	$i=0;
	$info=array();
	while ($row=mysql_fetch_object($result)) {
		$info[$i]=$row;
		$i++;
	}
	return $info;
}
function getpelvis(){
	$sql="SELECT * FROM pelvis;";
	$result=mysql_query($sql);
	$i=0;
	$info=array();
	while ($row=mysql_fetch_object($result)) {
		$info[$i]=$row;
		$i++;
	}
	return $info;
}
function getabdomen(){
	$sql="SELECT * FROM abdomen;";
	$result=mysql_query($sql);
	$i=0;
	$info=array();
	while ($row=mysql_fetch_object($result)) {
		$info[$i]=$row;
		$i++;
	}
	return $info;
}


function eliminartorax($id){
	$sql="DELETE FROM torax WHERE id = {$id}";
	return mysql_query($sql);
	}
function eliminarcc($id){
	$sql="DELETE FROM cc WHERE id = {$id}";
	return mysql_query($sql);
	}
function eliminarabdomen($id){
	$sql="DELETE FROM abdomen WHERE id = {$id}";
	return mysql_query($sql);
	}
function eliminarpelvis($id){
	$sql="DELETE FROM pelvis WHERE id = {$id}";
	return mysql_query($sql);
	}
function eliminarextsup($id){
	$sql="DELETE FROM extsup WHERE id = {$id}";
	return mysql_query($sql);
	}
function eliminardorso($id){
	$sql="DELETE FROM dorso WHERE id = {$id}";
	return mysql_query($sql);
	}
function eliminarextinf($id){
	$sql="DELETE FROM extinf WHERE id = {$id}";
	return mysql_query($sql);
	}










?>