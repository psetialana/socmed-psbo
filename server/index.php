<?php
require 'Slim/Slim.php';

\Slim\Slim::registerAutoloader();

$app = new \Slim\Slim();

function getConnection() {
    $dbhost="127.0.0.1";
    $dbuser="root";
    $dbpass="";
    $dbname="socmed";
    $dbh = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpass);
    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    return $dbh;
}

$app->get(
    '/',
    function() {
        echo "ini adalah server socmed-psbo";
    }
);

$app->post(
    '/user/login',
    function () use ($app) {
        try {
            $request = $app->request();
            $input = json_decode($request->getBody());
            $sql = "SELECT * FROM user WHERE username=:username AND password=md5(:password)";
            
            $db = getConnection();
            $stmt = $db->prepare($sql);
            $stmt->bindParam("username", $input->username);
            $stmt->bindParam("password", $input->password);

            $stmt->execute();
            $data = $stmt->fetchAll(PDO::FETCH_OBJ);
            $db = null;
            $app->response()->header('Content-Type', 'application/json');
            echo '{"data": ' . json_encode($data) . '}';

          } catch (Exception $e) {
            $app->response()->status(400);
            $app->response()->header('X-Status-Reason', $e->getMessage());
          }
    }
);

$app->post(
    '/user/register',
     function () use ($app) {
        try {
            $request = $app->request();
            $input = json_decode($request->getBody());
            $sql = "INSERT INTO user (username, password) VALUES (:username, md5(:password))";
            
            $db = getConnection();
            $stmt = $db->prepare($sql);
            $stmt->bindParam("username", $input->username);
            $stmt->bindParam("password", $input->password);

            $stmt->execute();
            //$input->id = $db->lastInsertId('id');
            $db = null;
            echo json_encode($input);

          } catch (Exception $e) {
            $app->response()->status(400);
            $app->response()->header('X-Status-Reason', $e->getMessage());
          }
    }
);

$app->put(
    '/user/update-pass/:id/',
     function ($id) use ($app) {
        try {
            $request = $app->request();
            $input = json_decode($request->getBody());
            $sql = "UPDATE user set password=md5(:password) where user_id='".$id."'";

            $db = getConnection();
            $stmt = $db->prepare($sql);
            $stmt->bindParam("password", $input->password);

            $stmt->execute();
            $db = null;
            echo '{"status":"ok"}';

        } catch (Exception $e) {
            $app->response()->status(400);
            $app->response()->header('X-Status-Reason', $e->getMessage());
        }
    }
);

$app->put(
    '/user/update/:id/',
     function ($id) use ($app) {
        try {
            $request = $app->request();
            $input = json_decode($request->getBody());
            $sql = "UPDATE user set avatar=:avatar where user_id='".$id."'";

            $db = getConnection();
            $stmt = $db->prepare($sql);
            $stmt->bindParam("avatar", $input->avatar);

            $stmt->execute();
            $db = null;
            echo '{"status":"ok"}';

        } catch (Exception $e) {
            $app->response()->status(400);
            $app->response()->header('X-Status-Reason', $e->getMessage());
        }
    }
);

$app->delete(
    '/user/delete/:id/',
     function ($id) use ($app) {
        try {
            $sql = "DELETE FROM user WHERE user_id='".$id."'";
            $db = getConnection();
            $stmt = $db->prepare($sql);
            $stmt->execute();
            $db = null;
            echo '{"status":"ok"}';

        } catch (Exception $e) {
            $app->response()->status(400);
            $app->response()->header('X-Status-Reason', $e->getMessage());
        }
    }
);

$app->run();
