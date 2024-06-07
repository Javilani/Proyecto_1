
document.addEventListener('DOMContentLoaded', (event) => {
    const boton = document.getElementById('miBoton');

    boton.addEventListener('click', () => {
        alert('¡Vamos a empezar con el cálculo!');
        
        let información = [];

        let nombre = prompt("¿Cuál es tu nombre? ");
        información.push(nombre);

        let edad = prompt("¿Cuántos años tienes?");
        información.push(edad);
        if (edad < 18) {
            let adulto = prompt("¿Estás acompañado por un adulto? Si/No").toLowerCase();
            while (adulto !== "si") {
            alert("Para poder comprar necesitas estar acompañado de un adulto.");
            adulto = prompt("¿Te encuentras acompañado por un adulto?").toLowerCase();
            }
        }
        
        let producto = prompt("Dime, ¿Cuál es el producto que deseas llevar? ");
        let precioNormal = parseFloat(prompt("¿Cuál es el precio del producto? "));
        let peso = parseFloat(prompt("¿Cuál es el peso del producto? (En kg) "));
        let cantidad = parseFloat(prompt("¿Cuántas unidades de este desea llevar? "));
        let ciudad = prompt("Ciudad de destino: ");
        información.push(ciudad);

        let cupon = prompt("¿Tiene cupón de descuento? Si/No ");
        let descuentoCupon;
        if (cupon === "Si" || cupon === "si") {
            descuentoCupon = 0.1;
        } else {
            descuentoCupon = 0;
        }

        let precioDos = precioNormal * (1-descuentoCupon);
        const IVA = 0.12
        let precioTres = precioDos * (1+IVA);

        let descuentoCant;

        if (cantidad >= 2) {
            descuentoCant = 0.05;
        } else {
            descuentoCant = 0
        }

        let precioCuatro = precioTres * (1-descuentoCant);
        let precioEnvio = 10 +(peso * cantidad * 2);

        let precioFinal = (precioCuatro * cantidad) + precioEnvio;

        let mensajeFinal = `La compra de sus ${producto} ha finalizado ${información[0]},
        El precio final es de: $${precioFinal.toFixed(2)},
        Su descuento por cupón es de: $${(precioNormal * descuentoCupon * cantidad).toFixed(2)},
        El impuesto es de: $${(precioDos * IVA * cantidad).toFixed(2)},
        El descuento por cantidad es de: $${(precioTres * descuentoCant * cantidad).toFixed(2)},
        El costo de envío a ${información[2]} es de: $${precioEnvio.toFixed(2)}`;

        alert(mensajeFinal);
        alert("¡Muchas gracias por su compra!");

        console.log('El botón ha sido presionado y el JavaScript está funcionando.');
    });
});