Proceso Proyecto_uno
	Definir precioNormal, precioDos, precioTres, precioCuatro, peso, precioFinal, precioEnvio Como Real;
	Definir cantidad Como Entero;
	Definir descuentoCupon, descuentoCant Como Real;
	Definir IVA Como Real;
	Definir producto, cupon, ciudad, respuesta Como Caracter;
	
	cantidad<- 1;
	descuentoCupon<- 0;
	IVA<- 0.12;
	descuentoCant<- 0;
	precioEnvio<- 0;
	
	Escribir "¿Eres mayor de 18 años? Si/No";
	Leer respuesta;
	Mientras respuesta = "no" o respuesta = "No" Hacer
		Escribir "Si no eres mayor de edad, debes estar acompañado de un adulto";
		Escribir "¿Estás en compañía de un adulto? Si/No";
		Leer respuesta;
	FinMientras
	
	Escribir "¿Cuál es el producto que desea llevar? ";
	Leer producto;
	Escribir "¿Cuál es el precio del producto?";
	Leer precioNormal;
	Escribir "¿Cuál es el peso del producto? (En kg)";
	Leer peso;
	Escribir "¿Cuántas unidades de este desea llevar? ";
	Leer cantidad;
	Escribir "Ciudad de destino: ";
	Leer ciudad;
	
	Escribir "¿Tiene cupón de descuento? Si/No ";
	Leer cupon;
	Si cupon = "si" o cupon = "Si" Entonces
		descuentoCupon<-0.1;
	SiNo
		descuentoCupon<- 0;
	FinSi
	
	precioDos<- precioNormal * (1-descuentoCupon);
	precioTres<- precioDos * (1+IVA);
	
	Si cantidad >= 2 Entonces
		descuentoCant<- 0.05;
	SiNo
		descuentoCant<- 0;
	FinSi
	
	precioCuatro<- precioTres * (1-descuentoCant);
	precioEnvio<- 10 +(peso * cantidad * 2);
	
	precioFinal<- (precioCuatro * cantidad) + precioEnvio;
	
	Escribir "La compra de sus ", producto, " ha terminado,";
	Escribir "El precio final es de: $", precioFinal;
	Escribir "Su descuento por cupón es de: $", (precioNormal * descuentoCupon * cantidad);
	Escribir "El impuesto es de: $", (precioDos * IVA * cantidad);
	Escribir "El descuento por cantidad es de: $", (precioTres * descuentoCant * cantidad);
	Escribir "El costo de envío a ", ciudad, " es de: $", precioEnvio;
	Escribir "Muchas gracias por su compra!";
	
	
	
FinProceso
