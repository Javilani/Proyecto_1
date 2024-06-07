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
	
	Escribir "�Eres mayor de 18 a�os? Si/No";
	Leer respuesta;
	Mientras respuesta = "no" o respuesta = "No" Hacer
		Escribir "Si no eres mayor de edad, debes estar acompa�ado de un adulto";
		Escribir "�Est�s en compa��a de un adulto? Si/No";
		Leer respuesta;
	FinMientras
	
	Escribir "�Cu�l es el producto que desea llevar? ";
	Leer producto;
	Escribir "�Cu�l es el precio del producto?";
	Leer precioNormal;
	Escribir "�Cu�l es el peso del producto? (En kg)";
	Leer peso;
	Escribir "�Cu�ntas unidades de este desea llevar? ";
	Leer cantidad;
	Escribir "Ciudad de destino: ";
	Leer ciudad;
	
	Escribir "�Tiene cup�n de descuento? Si/No ";
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
	Escribir "Su descuento por cup�n es de: $", (precioNormal * descuentoCupon * cantidad);
	Escribir "El impuesto es de: $", (precioDos * IVA * cantidad);
	Escribir "El descuento por cantidad es de: $", (precioTres * descuentoCant * cantidad);
	Escribir "El costo de env�o a ", ciudad, " es de: $", precioEnvio;
	Escribir "Muchas gracias por su compra!";
	
	
	
FinProceso
