///////////////////////////////////// Leyendo HTML desde JavaScript ////////////////////////////////////////
console.log("hello world")
 
let h1 = document.querySelector('h1');                      //obteniendo los valores de las etiquetas HTML
let parrafoid = document.querySelector("#pid");             // y asignandolas a variables, con querySelector
let parrafoclass = document.querySelector(".pclass");       // puedes llamar a cada etiqueta como en CSS
let input = document.querySelector("#cuadro");

console.log(h1);                //aqui solo se realizo la impresion de cada elemento por separado
console.log(parrafoid);         // lo que solo te imprime su contenido y no cada uno de sus atributos 
console.log(parrafoclass);      // como e el siguiente ejemplo
console.log(input);

console.log({           //genera una lista de los elementos y se pueden desplegar cada uno de sus 
    h1,                 // atributos (puedes generar una lista de un solo elemnto para poder ver cada)
    parrafoid,          // uno de sus valores
    parrafoclass,
    input,
});



//////////////////////////////// Modificando el HTML desde JavaScript /////////////////////////////////////
console.log(h1.getAttribute('class'));            // obtiene el valor del atributi nombrado en los parentesis
console.log(h1.setAttribute('class', 'toshiba')); // cambia el valor del atributo nombrado en los parentesis
console.log(h1.getAttribute('class'));

input.classList.add('textFill', 'cuadroTexto'); // añade un atributo clase que puedes nombrar en los parentesis
console.log(input.getAttribute('class'));       //puedes agregar mas de una clase agregando una coma

input.classList.remove('textFill');         // añade un atributo clase que puedes nombrar en los parentesis
console.log(input.getAttribute('class'));   //puedes eliminar mas de una clase agregando una coma

input.classList.toggle('inactive');   // quita y pone la clase, en este caso una clase hipotetica inactive para
// poder hacer visible o no un elemento controlando la clase con "css display: none"

// crearemos un nuevo elemento img que se guardara en una variable, despues modificamos su atributo src 
//para poder traer un link con la imagen, borramos el contenido de la etiqueta exitente en el html y por
//ultimo la insertamos en esa etiqueta en html.
const nuevoElemento3 = document.createElement('img');
nuevoElemento3.setAttribute('src', 'https://www.dzoom.org.es/wp-content/uploads/2017/07/seebensee-2384369-810x540.jpg');
parrafoid.innerHTML = "";
parrafoid.appendChild(nuevoElemento3);

// creando un input y declarando su atributo
const nuevoElemento1 = document.createElement('input');
nuevoElemento1.setAttribute('type', "placeholder")
nuevoElemento1.value = "123";

// creando un parrafo y modificando su atributo estilo, añadiendo contenido a una variable para despues 
// ingresarla en el nuevo elemento parrafo y por ultimo añadiendo ese parrafo al documento html
const nuevoElemento2 = document.createElement('p');
nuevoElemento2.setAttribute('style', 'color_red');
let pTexto = document.createTextNode('este es el primer intento de que aparezca este texto dentro del parrafo<br>este texto deberia de estar despues del salto de linea');
nuevoElemento2.appendChild(pTexto);
document.body.appendChild(nuevoElemento2);



//////////////////////////// Escuchando eventos de HTML en JavaScript /////////////////////////////////////
