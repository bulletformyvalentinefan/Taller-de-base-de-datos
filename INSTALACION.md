# Instalacion - Taller de Bases de Datos 003

## Requisitos
- Git instalado
- VS Code instalado
- Extension Oracle SQL Developer for VS Code

## Pasos

### 1. Clonar el repositorio

```bash
git clone https://github.com/bulletformyvalentinefan/Taller-de-base-de-datos.git
cd Taller-de-base-de-datos
```

### 2. Abrir en VS Code

```bash
code .
```

### 3. Conectar a la BD

1. Abre la extension **Oracle SQL Developer**
2. Crea una nueva conexion con estos datos:
   - **Connection name:** ADMIN
   - **Hostname:** localhost
   - **Port:** 1521
   - **SID:** ORCL
   - **User:** SYS
   - **Role:** SYSDBA
   - **Password:** 123456

### 4. Crear usuario de desarrollo

Ejecuta el script:
```
base-de-datos/01_crear_usuario_desarrollador.sql
```

### 5. Conectarte como usuario_desarrollador

1. Crea una **nueva conexion** con el usuario que acabas de crear
   - **User:** usuario_desarrollador
   - **Password:** 123456
2. Conectate a esa conexion

### 6. Cargar la BD de tickets

Ejecuta el script:
```
base-de-datos/02_cargar_bd_tickets.sql
```

## Estructura del repositorio

```
Taller de base de datos 003/
├── .gitignore
├── README.md
├── INSTALACION.md
├── base-de-datos/
│   ├── 01_crear_usuario_desarrollador.sql
│   ├── 02_cargar_bd_tickets.sql
│   └── 0.Creacion_usuarios.sql
├── Semana 1 - Record/
│   └── Ejercicio1.sql
├── Semana 2 - Joins/
│   ├── ejercicio_joins.sql
│   ├── Resolucion_Problema_12_08.md
│   └── clase3_varray.sql
└── Semana 3 - Cursores PLSQL/
    ├── cursores_plsql.sql
    ├── cursores.sql
    ├── cosa.sql
    ├── clase_cursores_plsql_punto_ticket.html
    ├── ejercicios_cursores_plsql_punto_ticket_VUE_FIX.html
    └── 1.Records.sql
```
