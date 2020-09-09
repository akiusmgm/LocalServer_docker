<html>
<head><title>PHP TEST</title></head>
<body>

<?php
ini_set("display_errors", On);
error_reporting(E_ALL);
$dsn = 'mysql:host=127.0.0.1;port=3306;dbname=test_db;charset=utf8';
$user = 'test';
$password = 'test';

$db = new PDO($dsn,$user,$password);


$query_result = $db->query("SELECT * FROM users");

foreach($query_result as $row) {
    print $row["username"] . ": " . $row["email"] . "<br/>";
}
print("test")
?>
</body>
</html>