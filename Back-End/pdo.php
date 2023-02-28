<?php

class Database{
    protected string $host = '';
    protected int $port = 3306;
    protected string $database = "";
    protected string $username = "";
    protected string $password = "";

    protected string $table;
    protected PDO $pdo;
    protected PDOStatement $ps;

    private array $values = array();
    private string $sql = "";

    public function __construct(){
        $this->configDB();
        $dsn = "mysql:host={$this->host};port={$this->port};dbname={$this->database}"; 
        $this->pdo = new PDO($dsn, $this->username, $this->password);
    }

    private function configDB(){
        $this->host = "localhost";
        $this->port = "3306";
        $this->database = "notedemy";
        $this->username = "root";
        $this->password = "";
    }

    public function table(string $table): Database{
        $this->table = $table;
        return $this;
    }

    public function select(): Database{
        $this->sql = "SELECT * FROM `{$this->table}`";
        return $this;
    }

    public function insert($data): Database{
        $keys = array_keys($data);
        $fields = "`". implode("`, `", $keys) ."`";
        $placeholders = ":". implode(", :", $keys);
        $this->sql = "INSERT INTO `{$this->table}` ($fields) VALUES ($placeholders)";
        foreach($data as $key => $value){
            $this->values[$key] = $value;
        }
        return $this;
    }

    public function update($data): Database{
        $keys = array_keys($data);
        $this->sql = "UPDATE $this->table SET";
        foreach($keys as $key){
            $fieldList[$key] = "$key = '{$data[$key]}'";   
        }
        $fields = " ".implode(", ", $fieldList);
        $this->sql = $this->sql.$fields;
        return $this;
    }

    public function delete(){
        $this->sql = "DELETE FROM `{$this->table}`";
        return $this;
    }

    public function where(string $field, string $operator, string $value): Database{
        if($this->sql == ""){
            $this->select();
        }
        $this->sql = $this->sql . " WHERE {$field} {$operator} :value";
        $this->values['value'] = $value;
        return $this;
    }

    private function execute(): bool{
        $this->ps = $this->pdo->prepare($this->sql);
        if($this->values != []){
            return $this->ps->execute($this->values);
        }   else    {
            return $this->ps->execute();
        }
        $this->values = [];
    }

    public function get(): array{
        $this->execute();
        return $this->ps->fetchAll(PDO::FETCH_OBJ);
    }

    public function perform(): bool{
        return $this->execute();
    }

    public function first(): array{
        return $this->get()[0];
    }

    private function limit($limit, $start){
        $this->sql = $this->sql . " LIMIT $start, $limit";
    }

    public function pagination($limit, $start = 0): array{
        if($this->sql == ""){
            $this->select();
        }
        $this->limit($limit, $start);
        return $this->get();
        
    }

    public function count(): int{
        if($this->sql == ""){
            $this->select();
        }
        $this->execute();
        return $this->ps->rowCount();
    }

    public function exists($field, $value): bool{
        return $this->where($field, "=", $value)->count() ? true : false;
    }

    public function getLastId(){
        return $this->pdo->lastInsertId();
    }

    public function getError(){
        $error = $this->pdo->errorInfo();
        var_dump($error);
        if($error[1] !== null){
            return $error;
        }
        else{
            return "No Errors Found";
        }
    }
}

function dd($data){
    die(var_dump($data)); #This is an inbuilt function of laravel...
}

function myDate($d, $format="Y-m-d"){
    return date($format, strtotime($d));
}

function getOldValue($data, $key, $default_value = ""){
    if(isset($data[$key])){
        return $data[$key];
    }
    else return $default_value;
}

function redirect($url){
    header("Location: $url");
}
?>
