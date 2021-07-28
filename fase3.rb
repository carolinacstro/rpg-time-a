require "./logica_forca.rb"
class Fase3
  def enigma3
    txt_intro = <<~TXT
    \n
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    ~~~~~~~~~~~~~~~~~~~ FASE 3 ~~~~~~~~~~~~~~~~~~~
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    TXT
    txt_enigma = <<~TXT 
    "Se encontrar um bixo-papao, basta me conjurar!
    Sua lembrança mais feliz, sempre te ajudará"
    \n
    Quem eu sou?
    \n
    (a) expelliarmus
    (b) expecto patronum
    (c) obliviate
    \n
    TXT
    puts txt_enigma
    resp = gets.chomp.upcase
    case resp 
      when "B"
        puts "Resposta correta, parabéns"
        #libera joguinho
        jogo_da_forca
      else
        puts "Resposta incorreta, tente novamente"
        enigma3
    end
  end
end
