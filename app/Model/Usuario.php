<?php
class Usuario {
    private $id;
    private $nombre;
    private $email;
    private $password;
    private $fechaRegistro;

    public function __construct($id, $nombre, $email, $password, $fechaRegistro) {
        $this->id = $id;
        $this->nombre = $nombre;
        $this->email = $email;
        $this->password = $password;
        $this->fechaRegistro = $fechaRegistro;
    }

    public function getId() {
        return $this->id;
    }

    public function getNombre() {
        return $this->nombre;
    }

    public function getEmail() {
        return $this->email;
    }

    public function getPassword() {
        return $this->password;
    }

    public function getFechaRegistro() {
        return $this->fechaRegistro;
    }

    public function setNombre($nombre) {
        $this->nombre = $nombre;
    }

    public function setEmail($email) {
        $this->email = $email;
    }

    public function setPassword($password) {
        $this->password = $password;
    }

    public function setFechaRegistro($fechaRegistro) {
        $this->fechaRegistro = $fechaRegistro;
    }

    // Método para guardar un usuario en la Base de Datos
    public static function guardar($nombre, $email, $passwordHash) {
        require_once __DIR__ . '/../../Config/Conexion.php';
        $conexion = new Conexion();
        
        // Usamos sentencias preparadas (?) para evitar inyección SQL
        $sql = ("INSERT INTO usuarios (nombre, email, password) VALUES (?, ?, ?)");
        // Ejecutamos pasando los parámetros recibidos a través de la función. El password ya debe venir hasheado desde el controlador.
        return $conexion->insertar($sql, [$nombre, $email, $passwordHash]);
    }

    // Método para listar los usuarios registrados. 
    public static function obtenerTodos() {
        require_once __DIR__ . '/../../Config/Conexion.php';
        $conexion = new Conexion();
        
        // No traemos la contraseña por seguridad, solo datos visibles
        $sql = "SELECT id, nombre, email, fecha_registro FROM usuarios ORDER BY fecha_registro DESC";
        return $conexion->consultar($sql);
    }
}
