module Mensagens
(menssagemDerrota
,menssagemVitoria
,menssagemMenu
,menuHistoria
,menuInstrucoes
)where

menssagemDerrota :: IO()
menssagemDerrota = do   
    putStrLn ""
    putStrLn "██████████████████████████████████▀██████████████████"
    putStrLn "█▄─▄▄─█─▄▄─█▄─▄▄▀█▄─▀█▀─▄█▄─▄█─▄▄▄▄██▀▄─██▄─▄▄▀█─▄▄─█"
    putStrLn "██─▄███─██─██─▄─▄██─█▄█─███─██─██▄─██─▀─███─██─█─██─█"
    putStrLn "▀▄▄▄▀▀▀▄▄▄▄▀▄▄▀▄▄▀▄▄▄▀▄▄▄▀▄▄▄▀▄▄▄▄▄▀▄▄▀▄▄▀▄▄▄▄▀▀▄▄▄▄▀"

menssagemVitoria :: IO()                         
menssagemVitoria = do
    putStrLn ""
    putStrLn"██╗░░░██╗██╗████████╗░█████╗░██████╗░██╗░█████╗░"
    putStrLn"██║░░░██║██║╚══██╔══╝██╔══██╗██╔══██╗██║██╔══██╗"
    putStrLn"╚██╗░██╔╝██║░░░██║░░░██║░░██║██████╔╝██║███████║"
    putStrLn"░╚████╔╝░██║░░░██║░░░██║░░██║██╔══██╗██║██╔══██║"
    putStrLn"░░╚██╔╝░░██║░░░██║░░░╚█████╔╝██║░░██║██║██║░░██║"
    putStrLn"░░░╚═╝░░░╚═╝░░░╚═╝░░░░╚════╝░╚═╝░░╚═╝╚═╝╚═╝░░╚═╝"

menssagemMenu :: IO()
menssagemMenu = do
    putStrLn "" 
    putStrLn " _________________________________________________________________________________________________ "
    putStrLn "|_________________________________________________________________________________________________|"
    putStrLn "|_________________________________________________________________________________________________|"
    putStrLn "|                                                                                                 |"
    putStrLn "|                                                                                                 |"
    putStrLn "|         ███████╗░█████╗░██████╗░███╗░░░███╗██╗░██████╗░██╗░░░██╗███████╗██╗██████╗░░█████╗░     |" 
    putStrLn "|         ██╔════╝██╔══██╗██╔══██╗████╗░████║██║██╔════╝░██║░░░██║██╔════╝██║██╔══██╗██╔══██╗     |"
    putStrLn "|         █████╗░░██║░░██║██████╔╝██╔████╔██║██║██║░░██╗░██║░░░██║█████╗░░██║██████╔╝██║░░██║     |"
    putStrLn "|         ██╔══╝░░██║░░██║██╔══██╗██║╚██╔╝██║██║██║░░╚██╗██║░░░██║██╔══╝░░██║██╔══██╗██║░░██║     |"
    putStrLn "|         ██║░░░░░╚█████╔╝██║░░██║██║░╚═╝░██║██║╚██████╔╝╚██████╔╝███████╗██║██║░░██║╚█████╔╝     |"
    putStrLn "|         ╚═╝░░░░░░╚════╝░╚═╝░░╚═╝╚═╝░░░░░╚═╝╚═╝░╚═════╝░░╚═════╝░╚══════╝╚═╝╚═╝░░╚═╝░╚════╝░     |"
    putStrLn "|                                                                                                 |"
    putStrLn "|                         ███╗░░░███╗██╗███╗░░██╗░█████╗░██████╗░░█████╗░                         |"
    putStrLn "|                         ████╗░████║██║████╗░██║██╔══██╗██╔══██╗██╔══██╗                         |"
    putStrLn "|                         ██╔████╔██║██║██╔██╗██║███████║██║░░██║██║░░██║                         |"
    putStrLn "|                         ██║╚██╔╝██║██║██║╚████║██╔══██║██║░░██║██║░░██║                         |"
    putStrLn "|                         ██║░╚═╝░██║██║██║░╚███║██║░░██║██████╔╝╚█████╔╝                         |"
    putStrLn "|                         ╚═╝░░░░░╚═╝╚═╝╚═╝░░╚══╝╚═╝░░╚═╝╚═════╝░░╚════╝░                         |"
    putStrLn "|_________________________________________________________________________________________________|"
    putStrLn "|                                                                                                 |"
    putStrLn "|                                          MENU                                                   |"
    putStrLn "|_________________________________________________________________________________________________|" 
    putStrLn "|                                                                                                 |"
    putStrLn "|                                       |1| START                                                 |" 
    putStrLn "|                                       |2| HISTORIA                                              |" 
    putStrLn "|                                       |3| TUTORIAL                                              |" 
    putStrLn "|                                       |4| QUIT                                                  |" 
    putStrLn "|_________________________________________________________________________________________________|"


menuHistoria :: IO()
menuHistoria = do
    putStrLn "" 
    putStrLn "|-----------------------------------------------------------------------------|" 
    putStrLn "|                     Rasga-língua é uma formiga muito forte                  |" 
    putStrLn "|                  que machuca a língua do tamanduá bandeira!!                |" 
    putStrLn "|                                                                             |" 
    putStrLn "|            O tamanduá bandeira é muito cuidadoso com seu filhote            |" 
    putStrLn "|                  precisa mapear uma área marcando onde existe               |" 
    putStrLn "|                       formigueiros da rasga língua!!                        |" 
    putStrLn "|                                                                             |"
    putStrLn "|    O tamanduá bandeira consegue farejar os formigueiros de rasga-língua     |"
    putStrLn "|   quanto maior o número, maior o cheiro e mais rasga-línguas por perto !!!  |"
    putStrLn "|       Sendo assim, se o número for 1, tem um formigueiro nos arredores      |"
    putStrLn "|                       Se for 2, têm 2 (queee medoo !!)                      |"
    putStrLn "|                                                                             |"
    putStrLn "|                  Mas o tamanduá-bandeira é esperto e glorioso               |"
    putStrLn "|      por isso ele consegue marcar na região onde essas formigas estão !!    |"
    putStrLn "|                Sendo assim, não ouse abrir a região marcada !!              |"
    putStrLn "|-----------------------------------------------------------------------------|" 


menuInstrucoes :: IO()
menuInstrucoes = do
    putStrLn "" 
    putStrLn "|-----------------------------------------------------------------------------|" 
    putStrLn "|                         Instruçoes para jogar:                              |" 
    putStrLn "|                                                                             |" 
    putStrLn "|                Coloque o comando e as posições desejadas!                   |" 
    putStrLn "|                 Exemplo: C 1 2 - Cavar formigueiro (1,2).                   |" 
    putStrLn "|-----------------------------------------------------------------------------|" 