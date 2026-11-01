# Practica 04: Números Naturales y recursión

* ### Materia: Estructuras Discretas 
* ### Alumno: Herrera Bárcena Virginia Abigail
* ### Semestre: 2027 - 1
* ### Tiempo requerido: 3 horas 

***

## Objetivo:

#### El objetivo de esta práctica es que el alumno pueda implementar funciones recursivas en Haskell, además de crear modulos y el poder importarlos.

## Ejercicio La Chivita recursiva


#### Tentando terreno para recursión. Escucha o lee con detenimiento la canción Sal de Ahí Chivita Chivita y de manera conceptual analiza y explica como se lleva a cabo el concepto de recursión, minímo en 50 palabras.

En la canción Sal de ahí Chivita Chivita, se aplica la resursión ya que se tiene un caso base, el cual es el sitio pero vacío. En la historia primero se intenta sacar a la chiva, pero como no se logra, se llama a otro personaje para que ayude. Después, se repite la situación anterior y se agrega un nuevo elemento o en este caso animal, formando una cadena cada vez más larga se repite la situación anterior y se agrega un nuevo elemento, formando una cadena cada vez más larga. En esta canción o historia este proceso recursivo concluye cuando un personaje se dispone a sacar al último animal que haya entrado, es decir la cabeza de la lista, y así poco a poco se van sacando a los animales hasta llegar a la chivita y volver a nuestro caso base.

## Ejercicio 8

### ¿Cuál es la diferencia de las operaciones implementadas en ambos archivos? ¿Como se manejan todos casos en cada implementación?

Más que nada la diferencia en sí sería el para qué se estan definiendo las operaciones, en el archivo de la práctica se estan definiendo 3 funciones, una nos permite sumar, la otra restar y la última nos permkte comparar números enteros. En cambio el archivo del repositorio unicamente tiene las operaciones de suma y resta. A parte en la sumay resta en el rpimer archivo están definidos todos los casos base que se podrían encontrar al definir las funciones, pero en el otro no estan definidos todos los casos base.

### ¿Por qué se tiene implementada la operación mayorEnt en el archivo enteros.hs ?

Se tiene implementada para la función de restaEnt, ya que lo que hace es ver que numero es mayor para poder determinar el signo de la operación cuando se tienen dos enteros positivos, si el primer entero es mayor entonces es positivo, si no lo es, entonces ta respuesta es negativo.

### Si pudieras quedarte con una sola implementación. ¿Cuál sería? Justifica tu respuesta.

Yo creo que me quedaría con la primera, principalmente por que están definidas todas las posibilidades de los casos bases en la suma y la resta, por lo que sería menos probable que haya un error al momento de ejecutarlo

## Ejercicio favorito

Mi ejercicio favorito en sí fueron todos los de la matrioskas, más que nada el de aplanar, ya que tuve que investigar un poco más a fondo sobre el cómo podía mantener justo las matrioskas contenidas en otras pero en forma de lista, creo que fue el que más se me complicó pero a su vez el que más me gustó.