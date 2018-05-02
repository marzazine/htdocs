<?php
class DB{
	private $host = 'localhost';
	private $username = 'rooot';
	private $password = '';
	private $database = 'wolvenetdb';
	private $db;

	public __ construct($host = null, $username = null, $password = null, $database = null){
		if($host != null){
			$this->host= $host;
			$this->username= $username;
			$this->password= $password;
			$this->database= $database;

		}

		try{
			$this->db = new PDO ('mysql:host='.$this->host.' ;dbname= '.$this->database, $this->username, $this->password, array(
				PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES UTF8'
				PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING
			));
			}catch(PDOException $e){
				die('<h1>Impossible de se connecter a la base de donnee</h1>');
			}
		}

		public function query($sql){
			$req =$this->db->prepare($sql);
			$req->execute();
			return $req->fetchAll(PDO::FETCH_OBJ);
		}
}		