<?php
    class Employee{
        // Connection
        private $conn;
        // Table
        private $db_table = "Employee";
        // Columns
        public $id;
        public $namapenyewa;
        public $tanggalsewa;
        public $notelepon;
        public $keterangan;
        public $hargasewa;
        // Db connection
        public function __construct($db){
            $this->conn = $db;
        }
        // GET ALL
        public function getEmployees(){
            $sqlQuery = "SELECT id, namapenyewa, tanggalsewa, notelepon, keterangan, hargasewa FROM ".$this->db_table."";
            $stmt = $this->conn->prepare($sqlQuery);
            $stmt->execute();
            return $stmt;
        }
        // CREATE
        public function createEmployee(){
            $sqlQuery = "INSERT INTO
                        ". $this->db_table ."
                    SET
                        namapenyewa = :namapenyewa, 
                        tanggalsewa = :tanggalsewa, 
                        notelepon = :notelepon, 
                        keterangan = :keterangan, 
                        hargasewa = :hargasewa";
        $stmt = $this->conn->prepare($sqlQuery);
        // sanitize
        $this->namapenyewa=htmlspecialchars(strip_tags($this->namapenyewa));
        $this->tanggalsewa=htmlspecialchars(strip_tags($this->tanggalsewa));
        $this->notelepon=htmlspecialchars(strip_tags($this->notelepon));
        $this->keterangan=htmlspecialchars(strip_tags($this->keterangan));
        $this->hargasewa=htmlspecialchars(strip_tags($this->hargasewa));
        // bind data
        $stmt->bindParam(":namapenyewa", $this->namapenyewa);
        $stmt->bindParam(":tanggalsewa", $this->tanggalsewa);
        $stmt->bindParam(":notelepon", $this->notelepon);
        $stmt->bindParam(":keterangan", $this->keterangan);
        $stmt->bindParam(":hargasewa", $this->hargasewa);
        if($stmt->execute()){
            return true;
        }
        return false;
        }
        // READ single
        public function getSingleEmployee(){
        $sqlQuery = "SELECT
        id, 
        namapenyewa, 
        tanggalsewa, 
        notelepon, 
        keterangan, 
        hargasewa
        FROM
        ". $this->db_table ."
        WHERE 
        id = ?
        LIMIT 0,1";
        $stmt = $this->conn->prepare($sqlQuery);
        $stmt->bindParam(1, $this->id);
        $stmt->execute();
        $dataRow = $stmt->fetch(PDO::FETCH_ASSOC);
        $this->namapenyewa = $dataRow['namapenyewa'];
        $this->tanggalsewa = $dataRow['tanggalsewa'];
        $this->notelepon = $dataRow['notelepon'];
        $this->keterangan = $dataRow['keterangan'];
        $this->hargasewa = $dataRow['hargasewa'];
        } 
// UPDATE
public function updateEmployee(){
$sqlQuery = "UPDATE
". $this->db_table ."
SET
namapenyewa = :namapenyewa, 
tanggalsewa = :tanggalsewa, 
notelepon = :notelepon, 
keterangan = :keterangan, 
hargasewa = :hargasewa
WHERE 
id = :id";
$stmt = $this->conn->prepare($sqlQuery);
$this->namapenyewa=htmlspecialchars(strip_tags($this->namapenyewa));
$this->tanggalsewa=htmlspecialchars(strip_tags($this->tanggalsewa));
$this->notelepon=htmlspecialchars(strip_tags($this->notelepon));
$this->keterangan=htmlspecialchars(strip_tags($this->keterangan));
$this->hargasewa=htmlspecialchars(strip_tags($this->hargasewa));
$this->id=htmlspecialchars(strip_tags($this->id));
// bind data
$stmt->bindParam(":namapenyewa", $this->namapenyewa);
$stmt->bindParam(":tanggalsewa", $this->tanggalsewa);
$stmt->bindParam(":notelepon", $this->notelepon);
$stmt->bindParam(":keterangan", $this->keterangan);
$stmt->bindParam(":hargasewa", $this->hargasewa);
$stmt->bindParam(":id", $this->id);
if($stmt->execute()){
return true;
}
return false;
}
// DELETE
function deleteEmployee(){
$sqlQuery = "DELETE FROM " . $this->db_table . " WHERE id = ?";
$stmt = $this->conn->prepare($sqlQuery);
$this->id=htmlspecialchars(strip_tags($this->id));
$stmt->bindParam(1, $this->id);
if($stmt->execute()){
return true;
}
return false;
}
}
?>