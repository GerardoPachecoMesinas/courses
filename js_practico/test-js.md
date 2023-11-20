```js
function dineroReal(dineroAhorrado, deudas) {
    dinero_real = dineroAhorrado - deudas
    console.log(`El dinero total es : ${dinero_real} pesos`)
};

function nombreCompleto(nombre, apellido) {
    nombre_completo = nombre + " " + apellido
     console.log(`El nombre completo es : ${nombre_completo}`)
};

let nombre;
var dineroAhorrado;
var apellido;
var deudas;
var nombre_completo;
var dinero_real;

nombreCompleto("Gerardo", "Pacheco");
dineroReal(15, 10);
```

### //////////////// cambiar el siguiente switch a if - else if - else ///////////////////

```js
const tipoDeSuscripcion;

switch (tipoDeSuscripcion) {
    case "Free":
        console.log("Solo puedes tomar los cursos gratuitos")
        break;
    case "Basic":
        console.log("Puedes tomar casi todos los cursos de platzi durante un mes")
        break;
    case "Expert":
        console.log("Puedes tomar casi todos los cursos de platzi durante un año")
        break;
    case "ExpertPlus":
        console.log("Tu y alguien mas pueden tomar todos los cursos de platzi durante un año")
        break;
}
```

# _____________________primera solucion con if, else if  y else

```js
if (tipoDeSuscripcion === "Free") {
    console.log("Solo puedes tomar los cursos gratuitos")
} else if (tipoDeSuscripcion === "Basic") {
    console.log("Puedes tomar casi todos los cursos de platzi durante un mes")
} else if (tipoDeSuscripcion === "Expert") {
    console.log("Puedes tomar casi todos los cursos de platzi durante un año")
} else if (tipoDeSuscripcion === "ExpertPlus") {
    console.log("Tu y alguien mas pueden tomar todos los cursos de platzi durante un año")
};
```

# _________________ segunda solucion con arrays u objetos y un solo condicional if

```js
let tiposDeSuscripcion = [
    "Free",
    "Basic",
    "Expert",
    "ExpertPlus"
];

let infoSuscripcion = [
    "Solo puedes tomar los cursos gratuitos",
    "Puedes tomar casi todos los cursos de platzi durante un mes",
    "Puedes tomar casi todos los cursos de platzi durante un año",
    "Tu y alguien mas pueden tomar todos los cursos de platzi durante un año"  
];

let suscripcion = "Expert"

for (let i = 0; i < tiposDeSuscripcion.length; i++) {
    if (suscripcion === tiposDeSuscripcion[i]) {
        console.log(infoSuscripcion[i])
    }
}
```

# ______________________con arrays sin condicionales

```js
let infoSuscripcion = [
    "Solo puedes tomar los cursos gratuitos",
    "Puedes tomar casi todos los cursos de platzi durante un mes",
    "Puedes tomar casi todos los cursos de platzi durante un año",
    "Tu y alguien mas pueden tomar todos los cursos de platzi durante un año"  
];

let tipoDeSuscripcion = 2;

consolelog(infoSuscripcion[tipoDeSuscripcion])
```

# _____________________con objetos sin condicionales

```js
let tiposDeSuscripcion = {
    "Free": "Solo puedes tomar los cursos gratuitos",
    "Basic": "Puedes tomar casi todos los cursos de platzi durante un mes",
    "Expert": "Puedes tomar casi todos los cursos de platzi durante un año",
    "ExpertPlus": "Tu y alguien mas pueden tomar todos los cursos de platzi durante un año" 
};

let suscripcion = "Expert";

function imprimeMensaje(suscripcion) {
    if (tiposDeSuscripcion[suscripcion]) {
            console.log(tiposDeSuscripcion[suscripcion]);
            return;
    }
    console.warn("No existe ese tipo de suscripcion");
}

imprimeMensaje(suscripcion);
```

### //////////////// Convertir los siguientes ciclos for a While ////////////////////////

```js
for (let i = 0; i < 5; i++) {
    console.log("el valor de i es " + i);
}

for (let i = 10; i >= 2; i--) {
    console.log("el valor de i es " + i);
}
```

# __________________conversion

```js
let n = 0;

while (n < 5) {
    console.log ("el valor de n es " + n);
    n++;
}

while (n > 1) {
    console.log ("el valor de n es " + n);
    n--;
}
```

### ////////////////////////  cuanto es dos mas dos ///////////////////////////////

```js
let traeNumero = function() {
    return Number(prompt("cuanto es 2 + 2"));
}

function pregunta() {
    while (traeNumero() != 4 ) {}
    alert("felicitaciones");
}

pregunta();
```

### /////////crea una funcion que pueda recibir cualquier array e imprima su primer elemento

```js
function indexCero(cualquierArray) {
    let i = cualquierArray[0];
    console.log(i);
};

let numeros = [6, 5, 8, 2, 0];
let letras = ["a", "b", "c", "d", "e", "f"];

indexCero();
```

### crea una funcion que pueda recibir cualquier array como paramtro e imprima sus elementos uno por uno
# __________________con for each

```js
function unoPorUno(cualquierArray) {
    cualquierArray.forEach( i => {
        console.log(i)
    });
}

let numeros = [6, 5, 8, 2, 0];
let letras = ["a", "b", "c", "d", "e", "f"];

unoPorUno();
```

# ____________________ con for of

```js
function unoPorUno(cualquierArray) {
    for (const i of cualquierArray) {
        console.log(i)
    }
};
let numeros = [6, 5, 8, 2, 0];
let letras = ["a", "b", "c", "d", "e", "f"];

unoPorUno();
```

### ///////////crea una funcion que pueda recibir cualquier objeto e imprima sus elementos uno por uno
# ____________________con for in`

```js
function unoPorUno(cualquierObjeto) {
    for (const component in cualquierObjeto) {
            console.log(cualquierObjeto[component]);
    }
}

let auto = {
    marca : "Tesla",
    modelo : "Model 3",
    "año" : 2020
};

let pc = {
    monitor : "led",
    teclado : "mecanico",
    mouse : "inalambrico"
};

unoPorUno();
```

# ___________________________existen funciones como:

```js
let arrayConLosValoresDelObjeto = Object.values(objeto);
let arrayConLasKeysDelObjeto = Object.keys(objeto);
```
# que crean un array que puede ser almacenados o no en variables que contendran enlistados las llaves o los valores del objeto invocado...