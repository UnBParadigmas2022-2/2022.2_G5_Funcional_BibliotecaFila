import Mensagens
import System.Random
import System.Exit
import GeradorAleatorio
import Formigueiro
import Helpers

type Coordenadas = (Int, Int)
type Valor = Int
type Elem = (Coordenadas,Valor)
type Matriz = [Elem]

entradas :: Int -> Int -> Int -> Int -> Matriz -> Matriz -> IO()
entradas contador linhas colunas bombas mtzInterna mtzUsuario = do
    putStr "Qtde formigueiros rasga-linguas: "
    print bombas
    putStrLn "Informe sua jogada:"
    entrada <- getLine
    putStrLn"\n"
    let info = words entrada
    let j = info !! 0
    let x = read (info !! 1) :: Int
    let y = read (info !! 2) :: Int

    if(j == "C") then do
        let matrizUsuario = if(Formigueiro.verificaFormigueiro (x, y) mtzInterna) then revelarMapa mtzInterna mtzInterna mtzUsuario else modificarMapa x y mtzInterna mtzUsuario
        
        let matrizUsuarioReveladaRecursivamente = Helpers.revelarMuitos linhas colunas matrizUsuario matrizUsuario mtzInterna

        Helpers.imprimirMapa linhas colunas (matrizUsuarioReveladaRecursivamente)
        if(Formigueiro.verificaFormigueiro (x, y) mtzInterna) then do
            putStrLn "NÚMERO DE RODADAS:"
            print (contador+1)
            Mensagens.menssagemDerrota
            menu
        else
            if (Formigueiro.somaFormigueirosEscondidos 0 matrizUsuarioReveladaRecursivamente == bombas) then do 
                putStrLn "NÚMERO DE RODADAS:"
                print (contador+1)
                Mensagens.menssagemVitoria 
                menu 
            else entradas (contador+1) linhas colunas bombas mtzInterna matrizUsuario 
    else do
        if(j == "M") then do
            let matrizUsuario = Helpers.marcarBomba x y mtzInterna mtzUsuario
            let matrizUsuarioReveladaRecursivamente = Helpers.revelarMuitos linhas colunas matrizUsuario matrizUsuario mtzInterna
            Helpers.imprimirMapa linhas colunas (matrizUsuarioReveladaRecursivamente)

            entradas (contador) linhas colunas bombas mtzInterna matrizUsuario
        else do
            putStrLn "Opcao invalida"
            entradas contador linhas colunas bombas mtzInterna mtzUsuario

verificaDificuldade "1" = "5 5 5"
verificaDificuldade "2" = "7 7 7"
verificaDificuldade "3" = "9 9 9"

iniciarJogo :: IO()
iniciarJogo = do
    putStrLn"Informe a dificuldade:"
    putStrLn"(1) Facil"
    putStrLn"(2) Medio"
    putStrLn"(3) Dificil"
    putStrLn"Sua opção:"
    entrada <- getLine
    putStrLn "\n"

    let entradaLinha = verificaDificuldade entrada
    let array = words entradaLinha
    let linhas = read (array !! 0) :: Int
    let colunas = read (array !! 1) :: Int
    let bombas = read (array !! 2) :: Int
    
    g <- newStdGen
    let (a,b) = randomR (1,999999 :: Int) g
    let semente1 = a

    h <- newStdGen
    let (c,d) = randomR (1,999999 :: Int) h
    let semente2 = c

    let campo_minado = criarMapa linhas colunas 0
    
    let posicoes_aleatorias = GeradorAleatorio.geraPosicoesAleatorias linhas colunas bombas semente1 semente2 []
    
    let campo_bombado = (Formigueiro.inserirFormigueiros posicoes_aleatorias campo_minado)
    
    let prepara_campo_bombado = distFormigueiros campo_bombado campo_bombado

    let matriz_impressa = (criarMapa linhas colunas (-2))
    
    imprimirMapa linhas colunas matriz_impressa

    entradas 0 linhas colunas bombas prepara_campo_bombado matriz_impressa

main :: IO()
main = do
    menu

menu :: IO()
menu = do
    Mensagens.menssagemMenu
    escolha <- getLine
    
    if(escolha == "1") then do
        iniciarJogo 
    else if(escolha == "2") then do
        Mensagens.menuHistoria
        menu
    else if(escolha == "3") then do
        Mensagens.menuInstrucoes
        menu
    else if(escolha == "4") then do 
        exitSuccess
    else do
        putStrLn "Opção inválida"
        menu
