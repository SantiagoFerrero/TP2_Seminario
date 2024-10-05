CREATE DATABASE gestion_inventarios_db;

USE gestion_inventarios_db;

-- Tabla Producto
CREATE TABLE Producto (
    idProducto INT AUTO_INCREMENT PRIMARY KEY,  -- ID único del producto
    nombreProducto VARCHAR(100),                -- Nombre del producto
    categoria VARCHAR(50),                      -- Categoría del producto
    descripcion TEXT,                           -- Descripción del producto
    cantidad INT,                               -- Cantidad en inventario
    precio DECIMAL(10, 2),                      -- Precio unitario del producto
    idProveedor INT,                            -- ID del proveedor (FK hacia tabla Proveedor)
    fechaCaducidad DATE,                        -- Fecha de caducidad (opcional)
    fechaCreacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,   -- Fecha de creación del producto
    fechaActualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Fecha de última actualización
);

-- Tabla Inventario
CREATE TABLE Inventario (
    idInventario INT AUTO_INCREMENT PRIMARY KEY, -- ID único de la operación de inventario
    idProducto INT,                              -- ID del producto afectado (FK hacia tabla Producto)
    cantidadCambiada INT,                        -- Cantidad cambiada (positiva si es entrada, negativa si es salida)
    tipoOperacion ENUM('Entrada', 'Salida'),     -- Tipo de operación: Entrada o Salida
    fechaOperacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Fecha y hora de la operación
    idUsuario INT                                -- ID del usuario que realizó la operación (FK hacia tabla Usuario)
);

-- Tabla Proveedor
CREATE TABLE Proveedor (
    idProveedor INT AUTO_INCREMENT PRIMARY KEY,  -- ID único del proveedor
    nombreProveedor VARCHAR(100),                -- Nombre del proveedor
    nombreContacto VARCHAR(100),                 -- Nombre de la persona de contacto
    telefono VARCHAR(20),                        -- Teléfono de contacto
    correoElectronico VARCHAR(100),              -- Correo electrónico del proveedor
    direccion VARCHAR(255),                      -- Dirección del proveedor
    fechaCreacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP  -- Fecha de registro del proveedor
);

-- Tabla Usuario
CREATE TABLE Usuario (
    idUsuario INT AUTO_INCREMENT PRIMARY KEY,    -- ID único del usuario
    nombreUsuario VARCHAR(100),                  -- Nombre de usuario
    contrasenaHash VARCHAR(255),                 -- Hash de la contraseña del usuario
    rol ENUM('Admin', 'Operario'),               -- Rol del usuario (Administrador u Operario)
    fechaCreacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,   -- Fecha de creación del usuario
    ultimoInicioSesion TIMESTAMP                 -- Fecha y hora del último inicio de sesión
);