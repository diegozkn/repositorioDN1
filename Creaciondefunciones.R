##########Creacion de funciones##########}

deteccionRangoEtario<-function(anioDeNacimiento){
  print(anioDeNacimiento)
  print("esto que es?")
  print("esto es una funcion")
}


deteccionRangoEtario <-function(anioDeNacimiento){
  if(anioDeNacimiento>=1946 && anioDeNacimiento<=1964){
    print("es baby boom")
  }else if(anioDeNacimiento >= 1928 && anioDeNacimiento<=1945){
    print("es generacion silenciosa")
  }else{
    print("no esta determinado")
  }
}

deteccionRangoEtario(1993)
deteccionRangoEtario(1950)
deteccionRangoEtario(1930)
deteccionRangoEtario(1940)
deteccionRangoEtario(1970)


resultadoEvaluacionRangoEtario<-deteccionRangoEtario(1957)
print(resultadoEvaluacionRangoEtario)

if(resultadoEvaluacionRangoEtario=="es generacion silenciosa"){
  print("les puedo prestar maximo 3 dolares")
}