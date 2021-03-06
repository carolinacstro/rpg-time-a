def primeiro_texto
  texto_inicio = <<~TXT
  \n
  ##################################################
  --------------------------------------------------
  -----------------OLÁ JOVEM BRUXO!-----------------
  --------------------------------------------------
  -                                                -
  --------SEJA BEM-VINDO AO TORNEIO TRIBRUXO--------
  -                                                -
  --Você foi escolhido pelo cálice para participar--
  -------------do torneio tribruxo!-----------------
  -                                                -
  - Caso não saiba o que seja isso não se preocupe!- 
  ----------explicaremos mais a frente!-------------
  -                                                -
  --------------------------------------------------
  ##################################################S
  \n
  TXT
  puts texto_inicio
  
end

#Este arquivo tem a parte de interacao com o participante do jogo ou ui
#esta funcao inicia o teceiro jogo!
#aqui é um pequeno cabecario de boas vindas para o jogador que chegou ate aqui
def inicio_jogo
  introducao = <<~TXT 
  \n
  Bem-vindo ao terceiro e último jogo do campeonato tribruxo <3
  \n
  Parabéns se você chegou até aqui, estamos muito felizes!
  Isso significa que passou por três enigmas e dois jogos o:
  \n
  Nesta última fase você terá que adivinhar qual é a palavra!
  \n
  Esta fase é uma forca, para você descobrir deve entrar com
  as letras e a palavra que você acha que é!
  \n 
  E LEMBRE-SE, VOCÊ PODE ERRAR APENAS 10 VEZES!
  \n
  TXT
  puts introducao
end

#esta parte esta mostrando a palavra secreta, seus erros e seus chutes
#havia um sistema d epontos que tirei por que o nosso jogo não necessita dele
def cabecalho_de_tentativas(chutes, erros, mascara)
  puts "\n\n"
  puts "Palavra secreta #{mascara}"
  puts "Erros até agora #{erros}"
  puts "Chutes até agora #{chutes}"
end

#aqui é a função que ira pedir o chute ou a palavra
def pede_um_chute
  print "\nEntre com a letra ou a palavra: "
  chute = gets.strip.upcase
  puts "\nSerá que voce acertou? Você chutou #{chute}"
  chute
end

#Aqui roda ao fim do jogo ou seja quando vc acertar a palavra ou esgotar os erros
def não_quer_jogar
  puts "Deseja jogar o Torneio Tribruxo novamente (S/N)?"
  sresp = gets.strip
  nresp = sresp.upcase == "N"
end


def escolhendo_palavra_secreta
  puts "\nEstamos escolhendo uma palavra"
end

#mostra a palavra que foi escolhida
def avisa_palavra_escolhida(palavra_secreta)
  puts "Escolhi uma palavra para você, ela tem #{palavra_secreta.size} letras"
  puts "\nDica: é um dos personagens da saga! "
  palavra_secreta
end

#aqui esta fazendo o sorteio da palavra no arquivo dicionario
def sorteio_palavra_secreta
  escolhendo_palavra_secreta
  texto = File.read("dicionario_forca.txt")
  todas_os_personagens = texto.split("\n")
  numero_aleatorio = rand(todas_os_personagens.size)
  palavra_secreta = todas_os_personagens[numero_aleatorio].upcase
  avisa_palavra_escolhida(palavra_secreta)
  
end

#esta funcao faz uma especie de validacao para ver se vc esta chutando algo repetido
def chutes_repetidos(chute)
  puts "\nVocê já chutou #{chute}"
end

#caso a letra n seja encontrada
def letra_n_encontrada
  puts "\nLetra não encontrada"
end

#para letras encontradas
def letra_encontrada(total_encontrado)
  puts "\nLetra encontrada #{total_encontrado} vezes."
end

#acerto
def acertou_palavra
  puts "\nParabéns você acertou"
end

#erro
def errou_palavra
  puts "\nQue pena, você errou." 
end

def ganhou
  desenho = <<~TXT
  \n############################################
  --------------------------------------------
  # PARABÉNS VOCE VENCEU O TORNEIO TRIBRUXO! #
  --------------------------------------------
  ############################################
  TXT
  puts desenho
end

def perdeu
  desenho = <<~TXT
  \n############################################
  --------------------------------------------
  #      VOCÊ PERDEU O TORNEIO TRIBRUXO ):     #
  --------------------------------------------
  ############################################
  TXT
  puts desenho
end



