<?php
class Contacto {
    public static function guardar($nombre, $email, $mensaje) {
        require_once __DIR__ . '/../../Config/Conexion.php';
        $conexion = new Conexion();
     
        // Preparamos el INSERT INTO para insertar un nuevo contacto en la base de datos
        $sql = "INSERT INTO contactos (nombre, email, mensaje) VALUES (?, ?, ?)";
        return $conexion->insertar($sql, [$nombre, $email, $mensaje]);
    }
}
?>