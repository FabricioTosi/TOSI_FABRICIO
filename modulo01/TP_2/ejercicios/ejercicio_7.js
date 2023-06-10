var texto = prompt("Ingrese un tÉxto para que se imprima al revéz");

function stringrev(str) {
    let mymensaje = "";

for (let i = str.length - 1; i >= 0;--i){
   mymensaje = mymensaje + str.charAt(i);
    
}
return mymensaje;
}
document.write(stringrev(texto));