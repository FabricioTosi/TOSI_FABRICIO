function esMayuscula(letra)
{
    return letra === letra.toUpperCase();
}

function esMinuscula(letra)
{
    return letra === letra.toLowerCase();
} 

var cadena =prompt("Ingresar una cadena de téxto con o sin mayúsculas ");

for(var index = 0; index < cadena.length; index++)
{
    var letraActual = cadena.charAt(index);
    if(esMayuscula(letraActual))
    {
        alert("La letra " + letraActual + " es mayúscula");
    }

    if(esMinuscula(letraActual))
    {
        alert("La letra " + letraActual + " es minúscula");
    }       
}