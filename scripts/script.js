//datos , puedes cambiarlos segun la necesidad , este es un ejemplo
const planes = {
    anual: { nombre: "Plan Anual", precio: 600 },
    mensual: { nombre: "Plan Mensual", precio: 60 },
    quincenal: { nombre: "Plan Quincenal", precio: 30 }
};

//funcion que obtiene el plan seleccionado
function obtenerPlanSeleccionado(planId) {
    return planes[planId] || null;
}

// funcion que genera el contenido
function generarContenidoFactura(plan) {
    return `
        <h2>Factura de Super Gym</h2>
        <p>Plan seleccionado: ${plan.nombre}</p>
        <p>Precio: $${plan.precio.toFixed(2)}</p>
        <p>Gracias por su compra!</p>
    `;
}

// se crea una funcion que muestra la factura
function mostrarFactura(contenido) {
    const ventanaFactura = window.open("", "_blank");
    ventanaFactura.document.write(`
        <html>
        <head>
            <title>Factura</title>
            <link rel="stylesheet" href="/estilos/index.css">
        </head>
        <body>
            ${contenido}
        </body>
        </html>
    `);
    ventanaFactura.document.close();
}
//aca se genera la factura
function generarFactura(planId) {
    const plan = obtenerPlanSeleccionado(planId);
    if (!plan) {
        alert("Plan no encontrado. Por favor, selecciona un plan válido.");
        return;
    }
    const contenidoFactura = generarContenidoFactura(plan);
    mostrarFactura(contenidoFactura);
}

// Añadir eventos a los botones
document.getElementById('planAnual').addEventListener('click', () => generarFactura('anual'));
document.getElementById('planMensual').addEventListener('click', () => generarFactura('mensual'));
document.getElementById('planQuincenal').addEventListener('click', () => generarFactura('quincenal'));
