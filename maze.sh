#!/bin/bash
echo " _          __  _____   _       _____   _____       ___  ___   _____        _____   _____        _____   _   _   _____            ___  ___       ___   ______  _____ " 
echo "| |        / / | ____| | |     /  ___| /  _  \     /   |/   | | ____|      |_   _| /  _  \      |_   _| | | | | | ____|          /   |/   |     /   | |___  / | ____|"
echo "| |  __   / /  | |__   | |     | |     | | | |    / /|   /| | | |__          | |   | | | |        | |   | |_| | | |__           / /|   /| |    / /| |    / /  | |"__   
echo "| | /  | / /   |  __|  | |     | |     | | | |   / / |__/ | | |  __|         | |   | | | |        | |   |  _  | |  __|         / / |__/ | |   / / | |   / /   |  __|"  
echo "| |/   |/ /    | |___  | |___  | |___  | |_| |  / /       | | | |___         | |   | |_| |        | |   | | | | | |___        / /       | |  / /  | |  / /__  | |"___  
echo "|___/|___/     |_____| |_____| \_____| \_____/ /_/        |_| |_____|        |_|   \_____/        |_|   |_| |_| |_____|      /_/        |_| /_/   |_| /_____| |_____|" 
echo ""
echo ""
echo "What is your name ?"
read name
echo "hello, $name"
echo "You are lost inside a Maze, try to escape..."
echo ""

game_running=true
room_number=2

while [ "$game_running" = true ]
do
    if [ $room_number -eq 1 ]
    then
        echo "╔═════════   N  ══════════╗"
        echo "║                         ║"
        echo "║                         ║"
        echo "║                          "
        echo "║                         E"
        echo "║                          "
        echo "║                         ║"
        echo "║                         ║"
        echo "╚═════════════════════════╝"
        echo "                           "
        echo "                           "

        echo "There are 2 doors in your room: (n)orth, (e)ast, where do you want to go ?"
        read choice
        if [ "$choice" = "n" ]
        then
            clear
            echo "> going to north..."
            room_number=4
        elif [ "$choice" = "e" ]
        then
            clear
            echo "> going to east..."
            room_number=2
        else
            echo "THIS CHOICE DOESN'T EXIST!"
        fi
    elif [ $room_number -eq 2 ] 
    then    
     echo "╔═════════   N  ══════════╗"
     echo "║                         ║"
     echo "║                         ║"
     echo "                           "
     echo "W                         E"
     echo "                           "
     echo "║                         ║"
     echo "║                         ║"
     echo "╚═════════════════════════╝"
     echo "                           "
     echo "                           "
        echo "There are 3 doors in your room: (n)orth, (w)est, (e)ast, where do you want to go ?"
        read choice
        if [ "$choice" = "n" ]
        then
        clear
        echo "> going to north..."
        room_number=5
    elif [ "$choice" = "w" ]
    then
        clear
        echo "> going to west..."
        room_number=1
    elif [ "$choice" = "e" ]
    then
        clear
        echo "> going to east..."
        room_number=3

    else
        echo "THIS CHOICE DOESN'T EXIST!"
    fi
elif [ $room_number -eq 3 ]
then

        echo "╔═════════   N  ══════════╗"
        echo "║                         ║"
        echo "║                         ║"
        echo "                          ║"
        echo "W                         ║"
        echo "                          ║"
        echo "║                         ║"
        echo "║                         ║"
        echo "╚═════════════════════════╝"
        echo "                           "
        echo "                           "

        echo "There are 2 doors in your room: (n)orth, (w)est, where do you want to go ?"
        read choice
        if [ "$choice" = "n" ]
        then
            clear
             
echo "
   ______________
 |\ ___________ /|
 | |  /|,| |   | |
 | | |,x,| |   | |
 | | |,x,' |   | |
 | | |,x   ,   | |
 | | |/    |%==| |
 | |    /] ,   | |
 | |   [/ ()   | |
 | |       |   | |
 | |       |   | |
 | |       |   | |
 | |      ,'   | |
 | |   ,'      | |
 |_|,'_________|_|"




               
            room_number=6
        elif [ "$choice" = "w" ]
        then
            clear
            echo "> going to west..."
            room_number=2
        else
            echo "THIS CHOICE DOESNT EXIST!"
        fi
       
    elif [ $room_number -eq 4 ]
    then
        echo ">>>>>>>>>>>>>>> It's a trap...you are DEAD $name"
        echo "                                       .....'',;;::cccllllllllllllcccc:::;;,,,''...'',,'..
                            ..';cldkO00KXNNNNXXXKK000OOkkkkkxxxxxddoooddddddxxxxkkkkOO0XXKx:.
                      .':ok0KXXXNXK0kxolc:;;,,,,,,,,,,,;;,,,''''''',,''..              .'lOXKd'
                 .,lx00Oxl:,'............''''''...................    ...,;;'.             .oKXd.
              .ckKKkc'...'',:::;,'.........'',;;::::;,'..........'',;;;,'.. .';;'.           'kNKc.
           .:kXXk:.    ..       ..................          .............,:c:'...;:'.         .dNNx.
          :0NKd,          .....''',,,,''..               ',...........',,,'',,::,...,,.        .dNNx.
         .xXd.         .:;'..         ..,'             .;,.               ...,,'';;'. ...       .oNNo
         .0K.         .;.              ;'              ';                      .'...'.           .oXX:
        .oNO.         .                 ,.              .     ..',::ccc:;,..     ..                lXX:
       .dNX:               ......       ;.                'cxOKK0OXWWWWWWWNX0kc.                    :KXd.
     .l0N0;             ;d0KKKKKXK0ko:...              .l0X0xc,...lXWWWWWWWWKO0Kx'                   ,ONKo.
   .lKNKl...'......'. .dXWN0kkk0NWWWWWN0o.            :KN0;.  .,cokXWWNNNNWNKkxONK: .,:c:.      .';;;;:lk0XXx;
  :KN0l';ll:'.         .,:lodxxkO00KXNWWWX000k.       oXNx;:okKX0kdl:::;'',;coxkkd, ...'. ...'''.......',:lxKO:.
 oNNk,;c,'',.                      ...;xNNOc,.         ,d0X0xc,.     .dOd,           ..;dOKXK00000Ox:.   ..''dKO,
'KW0,:,.,:..,oxkkkdl;'.                'KK'              ..           .dXX0o:'....,:oOXNN0d;.'. ..,lOKd.   .. ;KXl.
;XNd,;  ;. l00kxoooxKXKx:..ld:         ;KK'                             .:dkO000000Okxl;.   c0;      :KK;   .  ;XXc
'XXdc.  :. ..    '' 'kNNNKKKk,      .,dKNO.                                   ....       .'c0NO'      :X0.  ,.  xN0.
.kNOc'  ,.      .00. ..''...      .l0X0d;.             'dOkxo;...                    .;okKXK0KNXx;.   .0X:  ,.  lNX'
 ,KKdl  .c,    .dNK,            .;xXWKc.                .;:coOXO,,'.......       .,lx0XXOo;...oNWNXKk:.'KX;  '   dNX.
  :XXkc'....  .dNWXl        .';l0NXNKl.          ,lxkkkxo' .cK0.          ..;lx0XNX0xc.     ,0Nx'.','.kXo  .,  ,KNx.
   cXXd,,;:, .oXWNNKo'    .'..  .'.'dKk;        .cooollox;.xXXl     ..,cdOKXXX00NXc.      'oKWK'     ;k:  .l. ,0Nk.
    cXNx.  . ,KWX0NNNXOl'.           .o0Ooldk;            .:c;.':lxOKKK0xo:,.. ;XX:   .,lOXWWXd.      . .':,.lKXd.
     lXNo    cXWWWXooNWNXKko;'..       .lk0x;       ...,:ldk0KXNNOo:,..       ,OWNOxO0KXXNWNO,        ....'l0Xk,
     .dNK.   oNWWNo.cXK;;oOXNNXK0kxdolllllooooddxk00KKKK0kdoc:c0No        .'ckXWWWNXkc,;kNKl.          .,kXXk,
      'KXc  .dNWWX;.xNk.  .kNO::lodxkOXWN0OkxdlcxNKl,..        oN0'..,:ox0XNWWNNWXo.  ,ONO'           .o0Xk;
      .ONo    oNWWN0xXWK, .oNKc       .ONx.      ;X0.          .:XNKKNNWWWWNKkl;kNk. .cKXo.           .ON0;
      .xNd   cNWWWWWWWWKOkKNXxl:,'...;0Xo'.....'lXK;...',:lxk0KNWWWWNNKOd:..   lXKclON0:            .xNk.
      .dXd   ;XWWWWWWWWWWWWWWWWWWNNNNNWWNNNNNNNNNWWNNNNNNWWWWWNXKNNk;..        .dNWWXd.             cXO.
      .xXo   .ONWNWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWNNK0ko:'..OXo          'l0NXx,              :KK,
      .OXc    :XNk0NWXKNWWWWWWWWWWWWWWWWWWWWWNNNX00NNx:'..       lXKc.     'lONN0l.              .oXK:
      .KX;    .dNKoON0;lXNkcld0NXo::cd0NNO:;,,'.. .0Xc            lXXo..'l0NNKd,.              .c0Nk,
      :XK.     .xNX0NKc.cXXl  ;KXl    .dN0.       .0No            .xNXOKNXOo,.               .l0Xk;.
     .dXk.      .lKWN0d::OWK;  lXXc    .OX:       .ONx.     . .,cdk0XNXOd;.   .'''....;c:'..;xKXx,
     .0No         .:dOKNNNWNKOxkXWXo:,,;ONk;,,,,,;c0NXOxxkO0XXNXKOdc,.  ..;::,...;lol;..:xKXOl.
     ,XX:             ..';cldxkOO0KKKXXXXXXXXXXKKKKK00Okxdol:;'..   .';::,..':llc,..'lkKXkc.
     :NX'    .     ''            ..................             .,;:;,',;ccc;'..'lkKX0d;.
     lNK.   .;      ,lc,.         ................        ..,,;;;;;;:::,....,lkKX0d:.
    .oN0.    .'.      .;ccc;,'....              ....'',;;;;;;;;;;'..   .;oOXX0d:.
    .dN0.      .;;,..       ....                ..''''''''....     .:dOKKko;.
     lNK'         ..,;::;;,'.........................           .;d0X0kc'.
     .xXO'                                                 .;oOK0x:.
      .cKKo.                                    .,:oxkkkxk0K0xc'.
        .oKKkc,.                         .';cok0XNNNX0Oxoc,.
          .;d0XX0kdlc:;,,,',,,;;:clodkO0KK0Okdl:,'..
              .,coxO0KXXXXXXXKK0OOxdoc:,..
                        ..."

       
   

        game_running=false
    elif [ $room_number -eq 5 ]
    then
    echo "_|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|
___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|__
_|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|
___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|_
_|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|
__|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|__
_|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|
___|___|___|___|___|__|___|___|___|___|___|___|___|___|___|___|___|___
_|___|___|___|___|__"" DEAD END, TURN AROUND: (S)OUTH ""___|___|___|___|__|
___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|__
_|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|
___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|__
_|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|
___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|__
_|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___| 
___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|__
|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|
___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|__"


        echo "╔═════════════════════════╗"
        echo "║                         ║"
        echo "║                         ║"
        echo "║                         ║"
        echo "║                         ║"
        echo "║                         ║"
        echo "║                         ║"
        echo "║                         ║"
        echo "╚═══════════ S ═══════════╝"
        echo "                           "
        echo "                           "
        echo "dead end, turn around: (s)outh"
        read choice
        if [ "$choice" = "s" ]
        then
            clear
            echo "> going to south.."
            room_number=2
        else
            echo "THIS CHOICE DOESN'T EXIST!"
        fi
       
        
    elif [ $room_number -eq 6 ]
    then
    echo "01100011 01101111 01101110 01100111 01110010 01100001 01110100 01110101 01101100 01100001 01110100 01101001 01101111 01101110 01110011 
"
        echo "You found the EXIT...    Congratulations $name :)"
        read choice
        game_running=false
    fi
done 
