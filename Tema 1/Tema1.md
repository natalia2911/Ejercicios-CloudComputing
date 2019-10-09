# Ejercicios

## Tema 1
### Ejercicio 1: Buscar una aplicación de ejemplo, preferiblemente propia, y deducir qué patrón es el que usa. ¿Qué habría que hacer para evolucionar a un patrón tipo microservicios?

La aplicación que voy a poner como ejemplo es una que realizamos en unas prácticas durante la carrera.

La aplicación en cuestión se basaba en leer un .json con un montón de cadenas de mutaciones y poder encontrar donde estaba dicha mutación, leyendo y abstrayendo datos de una base de datos en este caso SQL.

La práctica deriva a almacenar los datos en contenedores del tipo vectores, mapas, y todo en un lenguaje C++.

Todo la aplicación estaba desarrollado en un sistema único, por lo que podemos considerarlo un sistema monolítico.

Creo que para cambiar la estructura y evolucionar hacia un patrón de microservicios deberíamos tener en cuenta las partes que componen la aplicación, sea del tipo la base de datos por un lado, las consultas a dicha base de datos por otra, la salida que genera el haber comparado las cadenas de la entrada con los datos obtenidos de la base de datos. Tenemos que crear estas partes de forma independiente para que los actos de unas no puedan modificar el de las otras.

Los microservicios que podríamos tener podrían ser:
	- Búsquedas en la BBDD.
	- Consultas en las BBDD
	- Comparaciones usando la base de datos.

### Ejercicio 2: En la aplicación que se ha usado como ejemplo en el ejercicio anterior, ¿podría usar diferentes lenguajes? ¿Qué almacenes de datos serían los más convenientes?

Por supuesto que podrían usarse en diferentes lenguajes, en este caso está desarrollada en C++ pero podríamos usar Java, o Python entre otros.

En esta práctica en concreto para el almacén de datos usábamos contenedores de la biblioteca STL de C++.
