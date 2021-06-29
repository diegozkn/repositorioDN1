###################DEPARTAMENTAL "1", BIG DATA "2-2021"#########################


#===INSTALAR LA LIBRERIA PARA EXCEL=====#

install.packages("readxl")

library(readxl)
datos[datos$sexo=="Masculino",]

#====SE IMPORTÓ LA BASE DE DATOS DE EXCEL A R======#

RendimientoCSGO_20162018 <- read_excel("RendimientoCSGO_20162018.xlsx")
View(RendimientoCSGO_20162018)

######==CANTIDAD DE PARTIDAS GANADAS==#########

table(datos$Resultado)
#siendo 0= derrota;1=victoria;2=empate
#tabulando los resultados de las partidas totales entre 2016 y 2018

# 0   1   2 
#356 308  61

#lo que nos da un resultado negativo respecto al rendimiento en el juego

######==Promedio de Kills por año==#########

#=======================año 2016======================#

#Creamos el vector de Kills en el año 2016, ya que nuestra data esta ordenada por fecha

Killsaño2016<-c(RendimientoCSGO_20162018$`Kills por Partida`[617:725])

#cantidad de partidas del año 2016
length(Killsaño2016)
#promedio
mean(Killsaño2016)

#nos arroja un promedio de 13.91743 ~ 14 kills por partida, lo que es bueno, para ser el primer año
#para un total de 109 partidas en el año 2016

#=======================año 2017======================#

#Creamos el vector de Kills en el año 2017

Killsaño2017<-c(RendimientoCSGO_20162018$`Kills por Partida`[168:616])
#cantidad de partidas del año 2016
length(Killsaño2017)
#promedio
mean(Killsaño2017)

#nos muestra un promedio de 14,94432 ~ 15 kills por partida, para un total de 449 partidas en el año 2017
#lo que se consideraria bajo, considerando que ya poseia experiencia y la cantidad de partidas.

#=======================año 2018======================#
#Creamos el vector de Kills en el año 2018

Killsaño2018<-c(RendimientoCSGO_20162018$`Kills por Partida`[1:167])
#cantidad de partidas del año 2016
length(Killsaño2018)
#promedio
mean(Killsaño2018)

#El resultado muestra un promedio de 14,95808 ~ 15 kills por partida, lo que indica que mantuvo
#su promedio de kills por partida, pero bajo la cantidad de estas jugadas en el año, de 449 a 167
#Sin embargo esto se considera Bajo, ya que uno esperaria que al aumentar el tiempo
#Las habilidades le permitirian conseguir mejores resultados.

##############GRAFICANDO SUS KILLS PROMEDIOS POR AÑO########################
AÑOS<-c(2016,2017,2018)
Promedios<-c(13.9,14.94,14.95)

plot(x=AÑOS, y=Promedios, type='l', main="Promedios de kills por año")

#el grafico nos muestra que hubo un aumento de 2016 a 2017, pero luego mantuvo
#el promedio anual para los años 2017 y 2018


#####======PORCENTAJE DE HEADSHOTS Y SU IMPLICANCIA EN LA VICTORIA========######

###Creando los vectores de resultados y de Porcentaje de Headshot(HS)###

ResultadoPartida<-c(RendimientoCSGO_20162018$Resultado)
PorcentajeHS<-c(RendimientoCSGO_20162018$`HS% en las muertes`)

####graficando ambos vectores####

plot(x = ResultadoPartida, y=PorcentajeHS, pch='.', main="Relacion HeadShot y Resultado")

#Nos muestra que tanto en Victorias como en Derrota, el porcentaje de HS es similar,
#dandonos a entender que el % de Headshots no es determinante para lograr la victoria
#mas aun en un juego de 5 jugadores.

###=====CANTIDAD DE KILLS Y SU IMPLICANCIA EN LA VICTORIA=========########

###Creando el vector de kills en partida###

KillsenPartidas<-c(RendimientoCSGO_20162018$`Kills por Partida`)

#####Graficando los vectores KillsenPartida & ResultadoPartida######

plot(x= ResultadoPartida[1:167],y= KillsenPartidas[1:167],pch='.', xlab="Resultados (D,V,E)",
     ylab="Cantidad de Kills")

#Nos muestra que en cualquier estado del resultado (D,E,V) la cantidad de kills no es relevante
#al ser un juego de equipo, el rendimiento individual en la mayoria de las veces no permite llegar a la victoria
#ya que incluso se visualiza que con 35 kills, que es bastante para una partida de 30-40 minutos, llega al empate
#incluso hasta la derrota.


###=====MAPAS MAS JUGADOS EN EL INTERVALO 2016-2018=========########

table(RendimientoCSGO_20162018$Mapa)

# Cache      Canals Cobblestone     Dust II     Inferno      Mirage        Nuke    Overpass 
#  41           1           6         398          41         231           1           6 

#El resultado de la tabla nos muestra que el mapa mas jugado es el mapa Dust II, seguido del mapa Mirage
#que en la realidad son los mapas mas comunes para los jugadores de Counter strike Global Offensive

###=====RESULTADOS PRIMERAS 10 PARTIDAS =========########
#Considerando que nuestro jugador en estudio, comenzó a jugar en el año 2016
#sus primeras 10 partidas quedan iteradas de la siguiente manera, exponiendo sus resultados

##Creando el Vector con las primeras 10 partidas del año 2016
Resultado10primeras<-c(RendimientoCSGO_20162018$Resultado[716:725])
length(Resultado10primeras)

#Creando la función que permita designar como derrota o victoria los resultados de la base

VictoriaoDerrota <- function(resultado){
  return(resultado %% 2 == 0)
}

# El ciclo de iteracion, que permite calificar como derrota o victoria las primeras 10 partidas
for (variable in Resultado10primeras) {
  print ("==================================")
  print(paste('Resultado Partida :',variable))
  if(VictoriaoDerrota(variable)){
    VoD <- "Derrota"
  }else{
    VoD <- "Victoria"
  }
  print(paste("El resultado de la partida fue",VoD))
}

#Como resultado nos arroja que sus primeras 10 partidas, en el año 2016, fueron derrotas
#lo que es esperable ya que cuando uno comienza en un juego este tipo de resultados son esperables

###=====RESULTADOS ULTIMAS 10 PARTIDAS DEL AÑO 2018=========########
#sus ultimas 10 partidas quedan iteradas de la siguiente manera, exponiendo sus resultados

Resultado10ultimas<-c(RendimientoCSGO_20162018$Resultado[1:10])
length(Resultado10ultimas)

#Creando la función que permita designar como derrota o victoria los ultimos resultados de la base

VictoriaoDerrota <- function(resultado){
  return(resultado %% 2 == 0)
}

# El ciclo de iteracion, que permite calificar como derrota o victoria las primeras 10 partidas
for (variable in Resultado10ultimas) {
  print ("==================================")
  print(paste('Resultado Partida :',variable))
  if(VictoriaoDerrota(variable)){
    VoD <- "Derrota"
  }else{
    VoD <- "Victoria"
  }
  print(paste("El resultado de la partida fue",VoD))
}

#Ahora el resultado de sus partidas, se manifiesta de forma mas intermitente,
#esto puede tener varias aristas, desde la experiencia ganada, hasta el entrenamiento
#que pudo haber realizado el jugador.

