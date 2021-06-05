

###############################################################
################### CREACIÓN DE VARIABLES #####################
###############################################################
###############################################################
# creando la variable de nombre hola

hola <- "pastito"
hola <- "oveja"+

variable1 <- "hola"
12312354423
c3po
r2d2

#usar ctrl + enter para ejecutar el comando

d1 <- "hola"

#el nombre que le doy a la variable debe ser alfanumerico no puede ser
#numero solamente.

c3po <- "hombre de lata"
r2d2 <- "el silvador"

resultadodesuma <- 5+10
elboleano <- T
otronumero <- 3.13543

###############################################################
################### OPERADORES #####################
###############################################################
###############################################################

###asignacion

variable2 <- "hoy es buen dia para jugar CS"

#puede ser texto, entero, reales, booleanos, etc.

###comparación
#solo me dan respuestas logicas o booleanas

4<3

###operaciones logicas
#aquellas que operan con valores logicos


#AND (agregacion)

T && T
1 && 0

#OR (Exclusion)

T || T
T || F
1 || 4

#NOT (Negacion)

!T #FALSO EN NEGACION
!F #VERDADERO EN NEGACION

#ejemplos operaciones logicas

a <- 10
b <- 9
c <- 8

(a > b) || (b < c)

(a < b) && (b > c)

variable1 <- "hola mundo"
variable1 <- variable1 =="hola mundo"

variable1 <- 5 != 5

###operadores Aritmeticos

#suma 

5+7

#multiplicacion

3*10

#division

18/6

#modulo
#obtencion del resto en una divicion

2%%2
4%%3

#como saber si un numero es par o impar

32%%2
53%%2
5%%2
34%%2
6%%2
43%%2
# los que son pares dan mod = 0 , los que son impares dan mod=1

a <- 4

a %% 2 == 0


###############################################################
################### CONDICIONALES #####################
###############################################################
###############################################################

##edad de los millenials 

edadinicial <- 25
edadfinal <- 35

#edad de la persona?
edadpersona <- 15

#haciendo la pregunta de la manera logica

(edadinicial <= edadpersona) && (edadfinal >= edadpersona)

#si la respuesta anterior es FALSE, entonces la persona no es millenial,
#en caso contrario la persona si es millenial.

##############################################################

#primer condicional IF

#si la persona esta entre los 25 y 35 años entonces es millenial

#Ejemplo 1 
edadpersona <- 15
if((edadinicial <= edadpersona) && (edadfinal >= edadpersona)){ print("la persona es millenial")}

#Ejemplo 2 
edadpersona <- 30
if((edadinicial <= edadpersona) && (edadfinal >= edadpersona)){ print("la persona es millenial")}

########RANGO ETARIO##############

anioNacimiento<- 1998
print(anioNacimiento)

#v1 .- si el año de nacimiento es baby boom
#v2 -. si la persona nacio entre x años

#condiciones que determinan que una persona no es baby boom
#condicion: persona nacion antes del 1946

anioNacimiento <- 1946

#condicion: persona nacio despues de 1964
anioNacimiento > 1964

#v3-. si la persona nacio antes del 1946 y despues de 1964, no es baby boom
anioNacimiento < 1946 || anioNacimiento > 1964


#condicionales

if(anioNacimiento < 1946 || anioNacimiento > 1964){
  print("La persona no es baby boom")
}


#probando con otro año

anioNacimiento <-1950
if(anioNacimiento < 1946 || anioNacimiento > 1964){
  print("La persona no es Baby boom")
}

anioNacimiento <-1950
if(anioNacimiento < 1946 || anioNacimiento > 1964){
  print("La persona no es Baby boom")
}else(
  print("esta persona si es baby boom")
)


###### correccion propia a la pregunta 

#mi condicion cuando una persona es baby boom
#si cuando su anio de nacimiento es mayor a 1946 y menor a 1964
anioNacimiento <-1950
anioNacimiento >= 1946 && anioNacimiento <=1964

#con condicional if -else

if(anioNacimiento >= 1946 && anioNacimiento <= 1964){
  print("es baby boom")
}else{
  print("no es baby boom")
}

#preguntando si una persona es baby boom, generacion silenciosa o una desconocida
#pregunta que determina si una persona es de la generacion silenciosa (1928-1945)
#si la persona nacio despues de 1927 y antes de 1946

anioNacimiento>=1928 && anioNacimiento<=1945

#con condicional if - else

