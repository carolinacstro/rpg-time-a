require './fase2.rb'
class Fase1 
  def enigma
    txt_intro = <<~TXT
    \n
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    ~~~~~~~~~~~~~~~~~~~ FASE 1 ~~~~~~~~~~~~~~~~~~~
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    TXT
    txt_enigma = <<~TXT
    \n Se a chave não tens, eu posso te ajudar. 
    Pegue a varinha bruxo! É só me conjurar... \n
    Eu sou: \n
    (a) aquamenti
    (b) anapneo
    (c) alohomora
    TXT

    puts txt_intro 
    puts txt_enigma
    resp = gets.chomp

    if resp == "c" || resp == "C"
        puts "Resposta correta, parabéns"
        #libera joguinho
        puts jogo
    else
        puts "Resposta incorreta, tente novamente"
        puts enigma
    end
  end 

  def jogo
    jogo_girafa = <<~TXT
    \n
    🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒
    🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒
    🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒
    🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒
    🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒
    🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🐆🦒🦒🦒🦒🦒
    🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒
    🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒
    🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒
    \n
    TXT
    print "Qual o item diferente? \n"
    puts jogo_girafa
    resp = gets.chomp.upcase
    case resp
      when "ONÇA"
        puts "Resposta correta, parabéns"
        #libera joguinho
        fase2 = Fase2.new
        fase2.enigma2
      else
        puts "Resposta incorreta, tente novamente"
        jogo
    end
  end 
end

