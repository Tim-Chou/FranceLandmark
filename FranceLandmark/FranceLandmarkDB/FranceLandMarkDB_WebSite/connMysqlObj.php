<?php
$host="localhost";
$user="root";
$passwd="yourPassword";//請修改成您的資料庫之密碼
$db_name="france_landmark";
$conn = @new mysqli($host,$user,$passwd,$db_name);
if($conn->connect_error != ""){
  echo "connect error!";
}else{
   $conn->query("SET NAMES 'utf8'");
}
?>