let dato, resultado;
//La variable dato no se utiliza en este caso pero la variable resultado se utiliza para guardar la respuesta que se va a imprimir en pantalla. 

 var1 = window.prompt("Introduce tú nombre ", "...");
//La variable var1 va a guardar en este caso el nombre del cliente atravéz de un comando que recibe los datos escritos(window.prompt).
 var2 = window.prompt("Introduce tú apellido ", "...");
//La variable var2 va a guardar en este caso el apellido del cliente atravéz de un comando que recibe los datos escritos(window.prompt).
 
resultado = `Concatenado tu nombre y apellido es : ${var1} ${var2}`; 
//El resultado se encarga de concatenar (juntar) el nombre del cliente (usuario) atravez de una varible en este caso (resultado).

document.write(resultado);
//Este comando se encarga de devolver un dato por pantalla. 