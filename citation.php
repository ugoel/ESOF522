<?php
$dbhostname = "nl.cs.montana.edu";
$dbusername = "dns";
$dbpassword = "Database4DnsProxy";
$dbschemaname = "dns_proxy";

$con = mysql_connect($dbhostname, $dbusername, $dbpassword);
if (!$con)
{
	die('Website down for maintenance. We will be live soon.');
}
mysql_select_db($dbschemaname, $con);

$title = $_GET['title'];
$num_citations = $_GET['num_citations'];
$year = $_GET['year'];
$publication = $_GET['publication'];
	$conf_rank = $_GET['conf_rank'];

$sql = "insert into citation (title, num_citations, year, publication, conf_rank) values('$title', $num_citations, $year, '$publication', '$conf_rank')";
echo $sql;
if (!mysql_query ($sql,$con)) {
	die('Website down for maintenance. We will be live soon.');
}
else {
	echo "Recored.";
}
?>