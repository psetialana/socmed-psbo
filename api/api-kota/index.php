<?php
require 'Slim/Slim.php';

\Slim\Slim::registerAutoloader();

$app = new \Slim\Slim();

function getConnection() {
    $dbhost="127.0.0.1";
    $dbuser="root";
    $dbpass="";
    $dbname="db_api_kota";
    $dbh = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpass);
    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    return $dbh;
}

function validateApiKey($key) {
    $sql = "select * FROM dlmbg_api_reg where api_key='".$key."'";
    $db = getConnection();
    $sth = $db->prepare($sql);
    $sth->execute();
    return $sth->rowCount();
}

$authKey = function ($route) {
    $app = \Slim\Slim::getInstance();
    $routeParams = $route->getParams();
    if (validateApiKey($routeParams["key"])==0) {
      $app->halt(401);
    }
};


$app->get('/', function() {
    echo "Cara menggunakan api<br/>";
    echo "1. pastikan sudah clone github socmed-psbo di folder xampp/htdocs<br/>";
    echo "2. Install extensi REST Client pada browser. Contoh jika menggunakan Chrome dapat menginstall 'Advanced Rest Client'<br/>";
    echo "3. Buat database dengan nama 'db_api_kota' dan import file 'db_api_kota.sql' yang ada di folder '/socmed-psbo/api/api-kota'<br/>";
    echo "4. Mengakses semua data (GET) : <a href='http://localhost/socmed-psbo/api/api-kota/city/d2ba5ac651d985a7fad886044d92b5cd'>http://localhost/socmed-psbo/api/api-kota/city/d2ba5ac651d985a7fad886044d92b5cd</a> <br/>";
    echo "5. Mengakses data berdasarkan kode provinsi (GET) : <a href='http://localhost/socmed-psbo/api/api-kota/city/d2ba5ac651d985a7fad886044d92b5cd/51'>http://localhost/socmed-psbo/api/api-kota/city/d2ba5ac651d985a7fad886044d92b5cd/51</a><br/>";
    echo "6. Menambah data dengan Advanced Rest Client (POST) lihat gambar <br/> <img src='img/post.png'/></br/>"; 
    echo "7. Mengubah data dengan Advanced Rest Client (PUT) lihat gambar <br/> <img src='img/put.png'/></br/>";
    echo "8. Menghapus data dengan Advanced Rest Client (DELETE) lihat gambar <br/> <img src='img/delete.png'/></br/>";
    echo "<a href='http://gedelumbung.com/slim-framework-tutorial-membuat-restful-api-sederhana-dengan-slim-framework/'>klik untuk mengetahui cara mennggunakan API ini lebih detail</a><br/>";

});


$app->get('/city/:key/', $authKey, function () use ($app)  {  
    $sql = "select * FROM dlmbg_lokasi";
    try {
        $db = getConnection();
        $stmt = $db->query($sql);
        $data = $stmt->fetchAll(PDO::FETCH_OBJ);
        $db = null;
        $app->response()->header('Content-Type', 'application/json');
        echo '{"data": ' . json_encode($data) . '}';
    } catch(PDOException $e) {
        echo '{"error":{"text":'. $e->getMessage() .'}}';
    }
});

$app->get('/city/:key/:id/', $authKey, function ($key,$id) use ($app) {    
    try { 
        $sql = "select * FROM dlmbg_lokasi where id_prov='".$id."'";
        $db = getConnection();
        $stmt = $db->query($sql);
        $data = $stmt->fetchAll(PDO::FETCH_OBJ);

        $db = null;
        $app->response()->header('Content-Type', 'application/json');
        echo '{"data": ' . json_encode($data) . '}';

    } catch (Exception $e) {
        $app->response()->status(400);
        $app->response()->header('X-Status-Reason', $e->getMessage());
    }
});

$app->post('/city/:key/', $authKey, function () use ($app)  {    
  try {
    $request = $app->request();
    $input = json_decode($request->getBody());
    $sql = "INSERT INTO dlmbg_lokasi (id, id_prov, nama) VALUES (:id, :id_prov, :nama)";
    
    $db = getConnection();
    $stmt = $db->prepare($sql);
    $stmt->bindParam("id", $input->id);
    $stmt->bindParam("id_prov", $input->id_prov);
    $stmt->bindParam("nama", $input->nama);

    $stmt->execute();
    //$input->id = $db->lastInsertId('id');
    $db = null;
    echo json_encode($input);

  } catch (Exception $e) {
    $app->response()->status(400);
    $app->response()->header('X-Status-Reason', $e->getMessage());
  }
});

$app->put('/city/:key/:id/', $authKey, function ($key,$id) use ($app)  {    
  try {
    $request = $app->request();
    $input = json_decode($request->getBody());
    $sql = "UPDATE dlmbg_lokasi set id_prov=:id_prov, nama=:nama where id='".$id."'";
    
    $db = getConnection();
    $stmt = $db->prepare($sql);
    $stmt->bindParam("id_prov", $input->id_prov);
    $stmt->bindParam("nama", $input->nama);

    $stmt->execute();
    //$data->id = $db->lastInsertId();
    $db = null;
    echo json_encode($input);

  } catch (Exception $e) {
    $app->response()->status(400);
    $app->response()->header('X-Status-Reason', $e->getMessage());
  }
});

$app->delete('/city/:key/:id/', $authKey, function ($key,$id) use ($app) {    
  try {
    $sql = "DELETE FROM dlmbg_lokasi WHERE id='".$id."'";
    $db = getConnection();
    $stmt = $db->prepare($sql);
    $stmt->bindParam("id", $id);
    $stmt->execute();
    $db = null;

  } catch (Exception $e) {
    $app->response()->status(400);
    $app->response()->header('X-Status-Reason', $e->getMessage());
  }
});






$app->run();