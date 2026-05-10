<?php

class Articulo {
    private $id;
    private $titulo;
    private $descripcion;
    private $fecha_Publicacion;

    public function __construct($id, $titulo, $descripcion, $fecha_Publicacion) {
        $this->id = $id;
        $this->titulo = $titulo;
        $this->descripcion = $descripcion;
        $this->fecha_Publicacion = $fecha_Publicacion;
    } 
    // --- GETTERS ---
    public function getId() { return $this->id; }
    public function getTitulo() { return $this->titulo; }
    public function getDescripcion() { return $this->descripcion; }
    public function getFechaPublicacion() { return $this->fecha_Publicacion; }

    // --- SETTERS ---
    public function setTitulo($titulo) { $this->titulo = $titulo; }
    public function setDescripcion($descripcion) { $this->descripcion = $descripcion; }
    public function setFechaPublicacion($fecha_Publicacion) { $this->fecha_Publicacion = $fecha_Publicacion; }

    // --- MÉTODOS DE BASE DE DATOS (CRUD) ---
    public function guardar() {
    
        require_once __DIR__ . '/../../Config/Conexion.php';
        $conexion = new Conexion();
        $sql = "CALL sp_insertar_articulo(?, ?, ?)";
        return $conexion->insertar($sql, [$this->titulo, $this->descripcion, $this->fecha_Publicacion]);
    }

    public static function obtenerTodos() {
 
        require_once __DIR__ . '/../../Config/Conexion.php';
        $conexion = new conexion();
        // Llamamos al procedimiento almacenado para obtener los artículos
        $sql = "CALL sp_obtener_articulos()";
        // Retornamos el resultado de la consulta, que será un arreglo de artículos
        return $conexion->consultar($sql);

    }
}
?>
