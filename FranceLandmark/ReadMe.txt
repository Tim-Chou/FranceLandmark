操作說明:

1.請將「FranceLandmark」目錄下的「FranceLandmarkDB」資料夾完整複製到您PHP所安裝的網頁資料夾內（例如:/www或/html或者/htdocs等目錄之下）。

2.請在您的MySQL或MariaDB的資料庫管理系統上先建立名稱為「france_landmark」的資料庫。

3.再將「france_landmark.sql」檔案匯入至您的MySQL資料庫中，此檔案位置在「FranceLandmarkDB\Models\DB_SQL」。

4.最後再將「FranceLandmarkDB\FranceLandMarkDB_WebSite」目錄下的「connMysqlObj.php」檔案中修改您的資料庫密碼即可。

5.網站位置在「FranceLandmarkDB\FranceLandMarkDB_WebSite 」的「FranceLandmarkDB.php」檔案，
    因此透過在瀏覽器中輸入「localhost/FranceLandmarkDB/FranceLandMarkDB_WebSite/FranceLandmarkDB.php」即可瀏覽整個網站。