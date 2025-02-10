# Prueba Devsu

Se desarrollaron dos microservicios según las especificaciones solicitadas, las mismas que se detallan a continuación;

CRUD para Microservicios de clientes-personas y de cuentas-movimientos.

Realizar Pago: Permite transferir dinero de una cuenta a otra, validando que ambas cuentas existan, estén abiertas y tengan saldo suficiente. 

Crea movimientos en ambas cuentas dentro de una transacción

Obtener Datos de Cuenta: Endpoint de ejemplo que muestra cómo implementar comunicación sincrónica entre microservicios utilizando kafka.

Generar reportes por fechas.

# PRUEBAS

Tests Unitarios: Utlizado para probar los distintos casos de uso al realizar un pago.

Tests de Integración: Utilizado para testar los distintos casos de uso de los reportes.

# Dockerización

Zookeeper y Kafka: Para la gestión de mensajes y comunicación asincrónica.

Microservicios: cliente-persona y cuentas-movimientos.

Bases de Datos: Una para cada servicio.

# Archivos Adjuntos

Postman: archivo de cliente-persona y cuentas-movimientos, probando cada funcionamiento con get,post,patch,update,delete.

Bases de datos: script de las diferentes colecciones.

# Despliegue

Para levantar la aplicación mediante docker, es necesario asegurarse que ninguna de los puertos que docker usa para exponer los servicios este ocupado.
Se debe correr con el siguiente comando; 

docker-compose up -d o docker-compose up

![](https://github.com/JavierYungaT/pruebaDevsu/blob/89b12b325425cf1cbfbe13d0ccedfa86ee50b0ef/imagen/Captura%20de%20pantalla%202025-02-10%20a%20la(s)%2011.22.22%E2%80%AFa.%C2%A0m..png)
