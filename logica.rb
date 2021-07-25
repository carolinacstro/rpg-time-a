require "./ui.rb" 

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

  while erros < 5
    mascara = palavra_mascarada(chutes, palavra_secreta)
    chute = pede_um_chute_valido(chutes, erros, mascara)
    chutes << chute
    chutou_uma_unica_letra = chute.size == 1

    if chutou_uma_unica_letra 
      total_encontrado = palavra_secreta.count(chute[0])
      if total_encontrado == 0
        letra_n_encontrada
        erros += 1
      else
        letra_encontrada(total_encontrado)
      end
    else
      acertou = chute == palavra_secreta
      if acertou 
        acertou_palavra
        break
      else
        errou_palavra
        erros +=1
      end
    end
  end
end
def jogo_da_forca
  nome = inicio_jogo
  loop do
    joga(nome)
    break if não_quer_jogar
  end
end
