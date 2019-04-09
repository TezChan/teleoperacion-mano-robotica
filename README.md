# Teleoperación de mano robótica

## Instrucciones de ejecución de los programas

Para la ejecución del modelo se deben seguir los siguientes pasos:

	1. Cargar las señales de fuerza que se asignarán a las articulaciones de los dedos de la mano maestra.
	Para ello cargaremos el archivo "DatosTeleoperacionBilateralDedo.mat"

	2. Almacenar en el workspace en la variable "t" el valor de retardo que deseas que exista para la comunicación 
	entre la mano maestra y la esclava.

	3. Ejecutar el esquema de simulink "controlBilateralPresionPosicionMano.slx"

En la carpeta VideosDeResultados, se almacena el funcionamiento del sistema teleoperado con distintos retrasos en las
comunicaciones.