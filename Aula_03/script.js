const prompt = require("prompt-sync")()

for(let i = 0; i <= 10; i++){
    console.log(i)
}
console.log("*****************************")
let contador = 0;
while (contador < 3) {
    console.log(contador)
    contador++
}

console.log("*****************************")

let numero = 10

do {
    
    console.log(numero)
    numero++
} while (numero < 20)

function verificarIdade () {
    let idade = Number(prompt("Digite a sua idade: "))

    if (idade >= 18) {
        console.log('Você é maior de idade!')
    } else {
        console.log('Você é menor de idade!')
    }
}

verificarIdade()

// boolean 
let maiorDeIdade = true
if (maiorDeIdade) {
    console.log("Você é maior de idade.")
} else {
    console.log("Você é menor de idade.")
}