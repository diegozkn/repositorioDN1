#Generar elementos de manera secuencial

vectorDeNumeros <- 1:15
length(vectorDeNumeros)

esPar <- function(numero){
  return(numero %% 2 == 0)
}

respuesta <- esPar(144)
print(respuesta)

respuesta <- esPar(143)
print(respuesta)

# for - loop
for (variable in 1:15) {
  print ("==================================")
  print(paste('usando el valor :',variable))
  if(esPar(variable)){
    parOImpar <- "par"
  }else{
    parOImpar <- "impar"
  }
  print(paste("el numero",variable,"es",parOImpar))
}

#for - loop recorriendo vectores

frutasYVerduras <- c('tomate','lechuga','pepino dulce','pera','manzana')

#recorriendo el vector a la bruta
for(posicionDelafruta in 1:5){
  print(paste("la fruta o verdura",frutasYVerduras[posicionDelafruta],"esta en la posicion",posicionDelafruta))
}

#que pasa cuando mi recorrido en el for es menor a la cantidad de elementos

for(posicionDelafruta in 1:4){
  print(paste("la fruta o verdura",frutasYVerduras[posicionDelafruta],"esta en la posicion",posicionDelafruta))
}
#respuesta: la manzana queda fuera del recorrido


#que pasa cuando mi recorrido en elo for es mayor a la cantidad de elementos

for(posicionDelafruta in 1:6){
  print(paste("la fruta o verdura",frutasYVerduras[posicionDelafruta],"esta en la posicion",posicionDelafruta))
}

#respuesta: muestra NA que corresponde a valores que no existen

#agregando nuevas frutas al vector

frutasYVerduras <- c(frutasYVerduras,"mango")

#que pasa con el mango cunaod se tienen valores de recorrido fijo?

for(posicionDelafruta in 1:5){
  print(paste("la fruta o verdura",frutasYVerduras[posicionDelafruta],"esta en la posicion",posicionDelafruta))
}

#respuesta: el mango queda afuera

#como se corrige el error de agregar o quitar sin que queden fuera o con NA

#respuesta: usando lenght por ejemplo:

largofrutasYVerduras <- length(frutasYVerduras)
for(posicionDelafruta in 1:largofrutasYVerduras){
  print(paste("la fruta o verdura",frutasYVerduras[posicionDelafruta],"esta en la posicion",posicionDelafruta))
}

#agregando otra fruta o verdura
frutasYVerduras<- c(frutasYVerduras,"alcachofa")

for(posicionDelafruta in 1:length(frutasYVerduras)){
  print(paste("la fruta o verdura",frutasYVerduras[posicionDelafruta],"esta en la posicion",posicionDelafruta))
}

#eliminar fruta o verdura

frutasYVerduras<-frutasYVerduras[-5]
frutasYVerduras<-frutasYVerduras[-2]

for(posicionDelafruta in 1:length(frutasYVerduras)){
  print(paste("la fruta o verdura",frutasYVerduras[posicionDelafruta],"esta en la posicion",posicionDelafruta))
}

#que hubiera pasado si elimino primero la posicion 2?
#respuesta: si elimino primero el 2, en el siguiente paso el 5 seria ex 6

####Como eliminar una fruta o verdura a eleccion
#respuesta: para esto se genera la siguiente funcion
eliminaFrutaVerdura <- function(frutasYVerduras, nombreFrutaVerdura){
  for (posicionDelafruta in 1:length(frutasYVerduras)){
    print(paste("la fruta o verdura seleccionada",posicionDelafruta,"es",frutasYVerduras))
    if(frutasYVerduras[posicionDelafruta]==nombreFrutaVerdura){
      print(paste("eliminando la fruta o verdura:",nombreFrutaVerdura))
      frutasYVerduras<-frutasYVerduras[-posicionDelafruta]
    }
  }
  return(frutasYVerduras)
}

#usando la funcion 

frutasYVerduras<- eliminaFrutaVerdura(frutasYVerduras,"mango")


#el problema de la solucion anterior se debe a que el vector se achica
#y for sigue recorriendo elementos que no existen

#solucionando el problema anterior

eliminaFrutaVerdura <- function(frutasYVerduras, nombreFrutaVerdura){
  miPosicion<-1
  for (posicionDelafruta in 1:length(frutasYVerduras)){
    print(paste("la fruta o verdura seleccionada",miPosicion,"es",frutasYVerduras[miPosicion]))
    if(frutasYVerduras[miPosicion]==nombreFrutaVerdura){
      print(paste("eliminando la fruta o verdura:",nombreFrutaVerdura))
      frutasYVerduras<-frutasYVerduras[-miPosicion]
    }else{
      miPosicion<-miPosicion + 1
    }
  }
  return(frutasYVerduras)
}

#usando la funcion corregida

frutasYVerduras<-eliminaFrutaVerdura(frutasYVerduras,"mango")
