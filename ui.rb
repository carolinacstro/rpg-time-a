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

def cabecalho_de_tentativas(chutes, erros, mascara)
  puts "\n\n"
  puts "Palavra secreta #{mascara}"
  puts "Erros até agora #{erros}"
  puts "Chutes ate agora #{chutes}"
end

def pede_um_chute
  puts "Entre com a letra ou a palavra"
  chute = gets.strip.upcase
  puts "Sera que voce acertou? Voce chutou #{chute}"
  chute
end

def não_quer_jogar
  puts "Deseja jogar novamente (S/N)?"
  sresp = gets.strip
  nresp = sresp.upcase == "N"
end

def sorteio_palavra_secreta
  puts "Estamos escolhendo uma palavra"
  palavra_secreta = "MACACO"
  puts "Escolhi uma palavra para voce ... ela tem #{palavra_secreta.size} letras"
  puts "\nBoa sorte"
  palavra_secreta
end

def chutes_repetidos(chute)
  puts "Voce ja chutou #{chute}"
end

def letra_n_encontrada
  puts "Letra não encontrada"
end

def letra_encontrada(total_encontrado)
  puts "Letra encontrada #{total_encontrado} vezes."
end

def acertou_palavra
  puts "Parabens voce acertou"
end

def errou_palavra
  puts "Que pena voce errou!" 
end

