<?php
include("connMysqlObj.php");

$sql_query = "SELECT * FROM france_landmark ORDER BY id ASC";
$result = $conn->query($sql_query);
$total_records = $result->num_rows;

   $value = @$_GET["value"];
   if(!isset($value)){
      $value = 1;
   }


$html5Content = '<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>法國各大知名旅遊景點導覽</title>
    <link href="../Content/Site.css" rel="stylesheet" type="text/css" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/modernizr-2.6.2.js"></script>
    <script src="../Scripts/jquery-1.10.2.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
</head>
<body>
<h2>法國各大知名旅遊景點導覽</h2>
<table class="table table-hover">
    <tr>
        <th>編號</th>
        <th>名稱</th>
        <th>地址</th>
        <th>實景照片</th>
        <th>Google 地圖</th>
    </tr>
';

$LandmarkId = null;
$LandmarkName = null;
$LandmarkAddress = null;
$photo = null;
$map = null;
$arrays_index = 0;
while($row_result=$result->fetch_assoc()){
    $LandmarkId[$arrays_index] = $row_result["id"];
    $LandmarkName[$arrays_index] = $row_result["name"];
    $LandmarkAddress[$arrays_index] = $row_result["address"];
    $photo[$arrays_index] = $row_result["photo"];
    $map[$arrays_index] = $row_result["map"];
    $arrays_index++;
}
$conn->close();

$htmlAdd = "";
$page = 0;
if(count(($LandmarkId) % 2) == 0){
  $page += (count($LandmarkId) / 2);
}else{
    $page = ((count($LandmarkId) + 1) / 2);
}


if($value == 1){
        for($item=0; $item < $page; $item++){
            $imgsrc = "". $LandmarkId[$item] . ".jpg";
            $htmlAdd .= "<tr>".
                        "<td>".$LandmarkId[$item]."</td>".
                        "<td>".$LandmarkName[$item]."</td>".
                        "<td>".$LandmarkAddress[$item]."</td>".
                        "<td>".'
                        <img src="'.$photo[$item].'" width="400" class="img-thumbnail" />'.
                        '</td><td><a href="'.$map[$item].'" class="btn btn-info">Google 地圖 </a></td></tr>';
                        $imgsrc = "";
        }
    }else{
        for($item=$page; $item < count($LandmarkId); $item++){
            $imgsrc = "". $LandmarkId[$item] . ".jpg";
            $htmlAdd .= "<tr>".
                        "<td>".$LandmarkId[$item]."</td>".
                        "<td>".$LandmarkName[$item]."</td>".
                        "<td>".$LandmarkAddress[$item]."</td>".
                        "<td>".'
                        <img src="'.$photo[$item].'" width="400" class="img-thumbnail" />'.
                        '</td><td><a href="'.$map[$item].'" class="btn btn-info">Google 地圖 </a></td></tr>';
                        $imgsrc = "";
        }
    }
$htmlAdd .= '</table> <br><div class="container mt-3"><a href="FranceLandmarkDB.php?value=1" ><input type="button" class="btn btn-primary" value="1" /></a>  <a href="FranceLandmarkDB.php?value=2" ><input type="button" class="btn btn-primary" value="2" /></a></div> <br></body></html>';
$html5Content .= $htmlAdd ;
echo $html5Content;


 ?>