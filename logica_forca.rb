require "./ui_forca.rb" 
#aqui nesta funcao ela ira fazer uma validacao par ver se determinado valor 
#esta dentro do array de chutes com o metodo include que faz isso.
def pede_um_chute_valido(chutes, erros, mascara)
  chute = cabecalho_de_tentativas(chutes, erros, mascara)
  loop do
    chute = pede_um_chute
    if chutes.include? chute
      chutes_repetidos(chute)
    else
      return chute
    end
  end
end

#esta funcao poe uma mascara na palavra, 
def palavra_mascarada(chutes, palavra_secreta)
  mascara = ""
  for letra in palavra_secreta.chars
    if chutes.include? letra
      mascara +=letra
    else
      mascara += "_"
    end
  end
  mascara
end

def joga(nome)
  palavra_secreta = sorteio_palavra_secreta
  erros = 0
  chutes = []
  while erros < 11
    mascara = palavra_mascarada(chutes, palavra_secreta)
    chute = pede_um_chute_valido(chutes, erros, mascara)

    chutes << chute #adicionando o chute a ao array chutes
    chutou_uma_unica_letra = chute.size == 1
    if chutou_uma_unica_letra 
      total_encontrado = palavra_secreta.count(chute[0])
      if total_encontrado == 0
        letra_n_encontrada
        erros +=1
      else
        letra_encontrada(total_encontrado)
      end
    else
      acertou = chute == palavra_secreta
      if acertou 
        acertou_palavra
        ganhou
        break
      elsif erros == 10
        perdeu
        break
      else
        errou_palavra
        erros = erros + 1
      end
    end
  end
end

#aqui é o loop que roda o jogo diversas vezes até o usuario dizer que não quer mais jogar
def jogo_da_forca
  nome = inicio_jogo
  joga(nome)
end
