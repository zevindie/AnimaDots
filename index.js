function barOpener(){

    let open = document.querySelector('ul#nav-ul')

    if(open.classList.contains('ul')){
        open.classList.remove('ul')
        open.classList.add('opener')
    }else{
        open.classList.remove('opener')
        open.classList.add('ul')
    }

}