let nome = prompt('Qual é o seu nome?')


if (nome && nome.trim()) {
    let mensagem = `Olá, ${nome}! Bem-vindo(a) ao nosso site.`

    document.getElementById('saudacao').innerHTML = mensagem;

    let vaiContratar = confirm(`Você vai me contratar, ${nome}?`)
  
    if (vaiContratar) {
        
        alert('Que ótimo! Estou ansioso(a) para trabalhar com você.')
    } else {
        alert('Que pena! Talvez em uma próxima oportunidade.')
    }

}

const botao = document.getElementById( 'mudarCor')
botao.addEventListener('click', () => {
    document.getElementById('titulo').style.color = 'red'
})
