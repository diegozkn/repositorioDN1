#########sample [crear elementos de forma aleatoria]

#creando 5 ejemplos entre 1 y 10

resultadoDelSample<- sample(1:10,5)
resultadoDelSample

#creando 20 entre 1 y 10

resultadoDelSample<- sample(1:10,20,replace = T)
resultadoDelSample

#creando vector de frutas y verduras

VectorFrutasVerduras<-c('tomate','lechuga','pepino dulce','pera','manzana')
resultadoDelSampleconFrutasyVerduras <- sample(VectorFrutasVerduras,6,replace = T)
resultadoDelSampleconFrutasyVerduras


#contando caras de una moneda

 resultadoMoneda<-sample(0:1,20,replace = T)
 resultadoMoneda
 
 contandoResultados <- function(vectorResultadoMoneda){
   conteoCaras<-0
   conteoSellos<-0
   for(resultadoMoneda in vectorResultadoMoneda){
     if(resultadoMoneda==0){
       conteoSellos<-conteoSellos+1
       
     }else{
       conteoCaras<-conteoCaras+1
     }
   }
   if(conteoSellos < conteoCaras){
     print(paste("Gano cara con",conteoCaras,"vs",conteoSellos,"sellos"))
   }else{
     print(paste("Gano Sellos con",conteoSellos,"vs",conteoCaras,"caras"))
   }
 }

 
 #usando la funcion
 contandoResultados(resultadoMoneda)