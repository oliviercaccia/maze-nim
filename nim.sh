#!/bin/bash

let nbItems=20;
game_running=true


echo ""
echo ""
echo "************BIENVENUE DANS LE JEUX DE NIM****************"
echo "je vous met au défie de gagner contre l'ordianteur"
echo ""
echo ""
echo ""
echo ""

while [ "$game_running" = true ]
do
    echo ""
  
    echo "Choisissez entre 1 et 3 batons."
    echo ""
    echo ""
    read choice
    if [ "$choice" -eq 1 ] || [ "$choice" -eq 2 ] || [ "$choice" -eq 3 ]
    then
        let "nbItems = nbItems - choice"
        echo -n "Il reste ($nbItems) élément(s) :"
        for i in `seq 1 $nbItems`
        do
            echo -n "|"
        done
        echo ""
       
        let "choiceIA = 4 - choice"
        echo "L'ORDINATEUR PREND $choiceIA BATON"
        let "nbItems = nbItems - choiceIA"
        echo -n "Il reste ($nbItems) éléments :"
        for i in `seq 1 $nbItems`
        do
            echo -n "|"
        done
    else
        echo "Vous ne pouvez pas faire ce choix."
    fi

    if [ "$nbItems" -eq 0 ]
    then
        echo "Hé voila c'était sur!!"
        echo "L'ordinateur à gagner!!!"
        echo ""
        game_running=falses
    fi
done 