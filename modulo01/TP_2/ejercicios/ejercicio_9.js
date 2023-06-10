var names = prompt("Ingrese el nombre del alúmno");
var num = prompt("Ingrese la cantidad de notas del alúmno: "+names);
var suma = 0;
var promedio = 0;
for ( let i = 0; i < num; i++) {
 
 res = i+1
     var notas = parseInt(prompt("Ingrese la nota número "+res+" de: "+names));
  var suma = suma + notas
}
 promedio = suma/num

if (promedio <=5 ) {
    document.write("El alumno: "+names+ " está REPROBADO con un promedio de  "+promedio);
    
} if (promedio>8) {
    document.write("El alumno: "+names+ " es SOBRESALIENTE logro un promedio de "+promedio);
   
}    
else{
    document.write("El alumno: "+names+ " está APROBADO con un promedio de "+promedio);
    
}