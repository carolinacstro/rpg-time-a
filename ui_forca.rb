#Este arquivo tem a parte de interacao com o participante do jogo ou ui

#esta funcao inicia o teceiro jogo!
#aqui é um pequeno cabecario de boas vindas para o jogador que chegou ate aqui
def inicio_jogo
  puts "Bem vindo a terceira e ultima fase do campeonato tribruxo"
  puts "\n\n"
  introducao = <<~TXT 
  Parabens se vc chegou até aqui estamos muito felizes!
  Pois significa que passou por tres enigmas e dois jogos!
  \n
  Nesta ultima fase voce tera que adivinhar uma palavra!!
  \n
  Esta fase é uma forca para voce descobrir deve tentar
  entrar com letras e se descobrir digitar a palavra por extenso!
  \n 
  MAS  LEMBRESSE VOCE PODE ERRAR APENAS 5 VEZES 
  POREM SE DECIDIR CHUTAR A PALAVRA SEM PROBLEMA 
  POIS CHUTES SÃO ILIMITADOS!
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
  puts "Chutes ate agora #{chutes}"
end

#aqui é a função que ira pedir o chute ou a palavra
def pede_um_chute
  print "\ncEntre com a letra ou a palavra: "
  chute = gets.strip.upcase
  puts "\nSera que voce acertou? Voce chutou #{chute}"
  chute
end

#Aqui roda ao fim do jogo ou seja quando vc acertar a palavra ou esgotar os erros
def não_quer_jogar
  puts "Deseja jogar novamente o jogo da forca (S/N)?"
  sresp = gets.strip
  nresp = sresp.upcase == "N"
end

#aqui é onde eu coloco a palavra que ira ser usada como base do jogo
#ele ira usar o size para contar a quantidade de letras nela eu pretendo adicionar a dica tbm
def sorteio_palavra_secreta
  puts "\nEstamos escolhendo uma palavra"
  palavra_secreta = "HERMIONE"
  puts "\nEscolhi uma palavra para voce ... ela tem #{palavra_secreta.size} letras"
  puts "\nDica: é um dos personagens da saga! "
  puts "\nBoa sorte"
  palavra_secreta
end

#esta funcao faz uma especie de validacao para ver se vc esta chutando algo repetido
def chutes_repetidos(chute)
  puts "\nVoce ja chutou #{chute}"
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
  puts "\nParabens voce acertou"
end

#erro
def errou_palavra
  puts "\nQue pena voce errou!" 
end

