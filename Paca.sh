#!/bin/bash

echo "instalando o necessario"
apt install curl > /dev/null 2>&1
apt install wget > /dev/null 2>&1
apt install chafa > /dev/null 2>&1
apt install figlet mpv > /dev/null 2>&1

textopm=""



    


mev() {
    echo -e "\033[31m$(figlet "$1")"
}

tg() {
    wget -O momo.jpg "https://static1.minhavida.com.br/articles/84/16/80/2e/momo-minha-vida-article_m-1.jpg"

    mev "celular infectado"
chafa momo.jpg
mpv "https://www.myinstants.com/media/sounds/susto-grito.mp3" > /dev/null  2>&1;


    
}


tf() {
    mev "nao vai sair";
    tg;
}


fb() {
    for i in {1..30}; do
        cp momo.jpg /storage/emulated/0/Downloads;  
    done

}

while true; do
    tg;
    trap tf SIGINT SIGTERM
done
