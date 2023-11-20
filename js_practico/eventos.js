function cmToIn() {
    cm = cm.value;
    let resultInch = cm / 2.54;
    pResult.innerHTML = `${cm} centimetros equivalen a ${resultInch} pulgadas`;
}

function inToCm() {
    inch = inch.value;
    let resultCm = inch * 2.54;
    pResult.innerHTML = `${inch} pulgadas equivalen a ${resultCm} centimetros`;
}

function print() {
    if (cm.value) {
        cmToIn();
        return
    } else if (inch.value) {
        inToCm();
        return
    } else {
        alert("ingresa un valor")
    }
}

let cm = document.querySelector('#cm');
let inch = document.querySelector('#inch');
const buttom = document.querySelector('#buttom');
const pResult = document.querySelector('#pResult');

buttom.addEventListener('click', print);

console.log({
    cm,
    inch,
    buttom,
    pResult
    }
)
// addEventListener.
// addEventListener.
// addEventListener.
// addEventListener.
