<?php
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    header("Access-Control-Allow-Methods: POST");
    header("Access-Control-Max-Age: 3600");
    header("Access-Control-Allow-Headers: Content-Type, Access-Control-AllowHeaders, Authorization, X-Requested-With");
    include_once '../../config/datasewastadion/database.php';
    include_once '../../models/datasewastadion/employees.php';
    $database = new Database();
    $db = $database->getConnection();
    $item = new Employee($db);
    $data = json_decode(file_get_contents("php://input"));
    $item->namapenyewa = $data->namapenyewa;
    $item->hargasewa = $data->hargasewa;
    $item->notelepon = $data->notelepon;
    $item->keterangan = $data->keterangan;
    $item->tanggalsewa = $data->tanggalsewa;

    if($item->createEmployee()){
        echo json_encode(['message'=>'Employee created successfully.']);
    } else{
        echo json_encode(['message'=>'Employee could not be created.']);
    }
?>