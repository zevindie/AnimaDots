function barOpener(){ //botao para abrir menu de navegacao em celular

    let open = document.querySelector('ul#nav-ul')

    if(open.classList.contains('ul')){
        open.classList.remove('ul')
        open.classList.add('opener')
    }else{
        open.classList.remove('opener')
        open.classList.add('ul')
    }

}

function scrollUp(){ //botao de voltar ao topo
    
    window.scrollTo({
        top: 0,
        behavior: 'smooth'
    })

}

function scrollUpButton(){ //aparecer botao de voltar ao topo

    if(window.scrollY == 0){
        document.querySelector('.scrollup').style.display = 'none'
    }else{
        document.querySelector('.scrollup').style.display = 'block'
    }

}
window.addEventListener('scroll', scrollUpButton)