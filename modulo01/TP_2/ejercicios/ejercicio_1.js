var valores = [true, false, 2, "hola", "mundo", 3, "char"];

var string = ["hola", "mundo", "char"]
string.sort((a, b) => {
   if (a==b){
      return 0;
   }
   if (a<b){
      return -1;
   }
   return 1;
})

  
let longitud = 0;
for (let valor of valores) {
 tipo = typeof(valor);

  if (tipo == "string") {
    if (valor.length > longitud) {
   
       mayor = valor
       longitud = valor.length
       
    }
   
   
  }
}
console.log("El mayor es: " + mayor);

console.log(string)

const arr = [2, 3];
let suma = 0;
let resta = 0;
let division = 0;
let multiplicasion = 0;

for (let i = 0; i < arr.length; i++) {
  
 suma = suma+arr[i];
 resta = arr[i]-resta;
multiplicasion = arr[0]*arr[1];
division = arr[0] / arr[1];

}


console.log("La suma de "+arr[0]+" más "+arr[1]+" es: "+suma);
console.log("La resta de "+arr[0]+" menos "+arr[1]+" es: "+resta);
console.log("La multiplicación de "+arr[0]+" por "+arr[1]+" es: "+multiplicasion);
console.log("La división entre "+arr[0]+" dividido "+arr[1]+" es: "+division);
