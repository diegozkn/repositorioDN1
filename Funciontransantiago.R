

pagoPasajeTransantiago <- function(saldo,persona){
  
  if(saldo >=800){
    #proceso de pago del pasaje
    nuevoSaldo <- saldo-800
    print(paste(persona,"tu nuevo saldo es:",nuevoSaldo))
    return(nuevoSaldo)
  }else{
    print(paste(persona,"no tienes saldo suficiente"))
    return(saldo)
    
  }
}


nuevoSaldo <- pagoPasajeTransantiago(600,"Fito paez")
print(nuevoSaldo)


nuevoSaldo <- pagoPasajeTransantiago(1000,"Tony stark")
print(nuevoSaldo)
