
#vector vacio

miPrimerVector <- list()



#vector con elementos

miPrimerVector <- list("Amira","Andres","Camila","Francisca")

#Agregar elementos
miPrimerVector[5]<-"Camila"
print(miPrimerVector)

miPrimerVector[7]<-"Michelle"
print(miPrimerVector)

miPrimerVector[6]<-"Diego"
print(miPrimerVector)


   #!!!ATERNCION!! esto no guarda
c(miPrimerVector,"Hector")
print(miPrimerVector)

#para que guarde debemos sobreescribir sobre la variable
miPrimerVector<-c(miPrimerVector,"Hector")
print(miPrimerVector)

#Quitar elementos

miPrimerVector<-miPrimerVector[-3]
print(miPrimerVector)


#Ver los elementos
print(miPrimerVector)
#Ver un elemento

print(miPrimerVector[1])

#Recorrer los elementos

#cual es el problema del vector
#solo puede contener un tipo de dato

miVector <-c(T,F,TRUE,F,T,F,F,T,T,T)
print(miVector)

#destruir el vector booleano

miVector<-c(miVector,34)
print(miVector)

#como saber el tamaño de un vector

print(miVector)
length(miVector)

miVector[13]

#obteniendo y almacenando el valor del largo de mi vector


largoDelVector<-length(miVector)
print(largoDelVector)
miVector[largoDelVector]

#haciendo todo en una linea
miVector[length(miVector)]
