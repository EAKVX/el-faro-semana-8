# 📰 El Faro - Semana 8

## 📌 Descripción del Proyecto
El Faro es un sitio web de noticias desarrollado en PHP utilizando arquitectura MVC (Modelo - Vista - Controlador).

En esta versión se incorpora conexión a base de datos MySQL mediante PDO, uso de sentencias preparadas y procedimientos almacenados para la gestión de datos.

---

## 🧩 Tecnologías Utilizadas
- PHP
- PDO
- MySQL
- HTML5
- CSS3
- JavaScript
- Bulma
- XAMPP

---

## 🏗️ Arquitectura MVC

El proyecto mantiene una estructura basada en MVC:

- **Model:** Manejo de datos y consultas.
- **View:** Interfaz visual del sitio.
- **Controller:** Lógica y control de formularios.
- **Config:** Configuración y conexión a base de datos.

---

## 📂 Estructura del Proyecto

```plaintext
app/
├── Controller/
├── Model/
├── View/

Config/

Public/
├── CSS/
├── JS/
├── assets/
└── index.php

elfaro_db.sql
```

---

## 🧾 Funcionalidades

- Registro de usuarios
- Creación de artículos
- Formularios dinámicos
- Diseño responsive con Bulma
- Conexión a MySQL mediante PDO
- Sentencias preparadas
- Procedimientos almacenados
- Arquitectura MVC

---

## 🗄️ Base de Datos

El proyecto utiliza MySQL e incluye:

- Tablas
- Datos de prueba
- Procedimientos almacenados

Archivo incluido:

```plaintext
elfaro_db.sql
```

---

## 🌐 Ejecución del Proyecto

Para ejecutar el proyecto en entorno local:

### 1. Instalar XAMPP
https://www.apachefriends.org/es/download.html

---

### 2. Copiar el proyecto en:

```plaintext
C:\xampp\htdocs\
```

Ejemplo:

```plaintext
C:\xampp\htdocs\el-faro-semana-8
```

---

### 3. Iniciar servicios en XAMPP

- Apache
- MySQL

---

### 4. Importar base de datos

Abrir:

```plaintext
http://localhost/phpmyadmin
```

Crear una base de datos llamada:

```plaintext
elfaro_db
```

Importar el archivo:

```plaintext
elfaro_db.sql
```

---

### 5. Revisar configuración de conexión

Archivo:

```plaintext
/Config/Config.php
```

---

### 6. Ejecutar el proyecto

Abrir en navegador:

```plaintext
http://localhost/el-faro-semana-8/Public/
```

---

## ⚠️ Nota

Este proyecto utiliza PHP y MySQL, por lo que requiere un entorno local como XAMPP para su ejecución.

GitHub Pages no permite ejecutar proyectos PHP.

---

## 👨‍💻 Autor

Proyecto desarrollado para la actividad de la Semana 8 - AIEP

Asignatura:
**Taller de Aplicaciones para Internet**
