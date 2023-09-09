Algoritmo compraLicuado
	Definir cant, precio, tamano Como Entero
	Definir descuento, totalPagar, totaPagarlBruto, tam1, tam2, tam3 Como Real
	Definir respuesta, respuesta1 Como Cadena
	respuesta <- 'S'
	tam1 <- 1000
	tam2 <- 1400
	tam3 <- 1700
	Mientras (respuesta='S') O (respuesta='s') Hacer
		totalPagar <- 0
		respuesta1 <- 'S'
		Mientras (respuesta1='S') O (respuesta1='s') Hacer
			cant <- 0
			precio <- 0
			tamano <- 0
			descuento <- 0
			totaPagarlBruto <- 0
			Escribir ' '
			Escribir 'Bienvenido a Fragati'
			Escribir 'Elige tu producto: '
			Escribir '[1] Licuado chico'
			Escribir '[2] Licuado mediano'
			Escribir '[3] Licuado grande'
			Leer tamano
			Si (tamano>0) Y (tamano<=3) Entonces
				Escribir 'Selecciona la catidad'
				Leer cant
				Según tamano Hacer
					1:
						totaPagarlBruto <- cant*tam1
					2:
						totaPagarlBruto <- cant*tam2
					3:
						totaPagarlBruto <- cant*tam3
				FinSegún
				Si cant>5 Entonces
					descuento <- totaPagarlBruto*0.10
					totaPagarlBruto <- totaPagarlBruto-descuento
				FinSi
				totalPagar <- totalPagar+totaPagarlBruto
			SiNo
				Escribir 'No has ingresado una opción válida'
			FinSi
			Escribir '¿Deseas elegir otro producto?'
			Escribir "[S] Si"
			Escribir "[N] No"
			Leer respuesta1
		FinMientras
		Escribir 'El total a pagar es: $', totalPagar
		Escribir 'Gracias por elegirnos'
		Escribir '¡Disfruta tu compra!'
		Escribir ' '
		Escribir '¿Otro cliente?'
		Escribir "[S] Si"
		Escribir "[N] No"
		Leer respuesta
	FinMientras
FinAlgoritmo
