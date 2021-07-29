require "./logica_forca.rb"
class Fase3
  def enigma3
    txt_intro3 = <<~TXT
    \n
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    ~~~~~~~~~~~~~~~~~~~ FASE 3 ~~~~~~~~~~~~~~~~~~~
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    \n\n
    Você conseguiu chegar na última fase do
    Torneio Tribruxo!!!
    Falta apenas uma etapa para você ser o grande 
    vencedor do torneio!
    Boa sorte (: 
    \n
    TXT
    txt_enigma = <<~TXT 
    =================== enigma ===================
    Se encontrar um bixo-papão, basta me conjurar!
    Sua lembrança mais feliz, sempre te ajudará
    ==============================================
    \n
    Quem eu sou?
    (a) expelliarmus
    (b) expecto patronum
    (c) obliviate
    \n
    TXT

    puts txt_intro3
    puts txt_enigma
    resp = gets.chomp.upcase

    case resp 
      when "B"
        puts "Resposta correta!"
        #libera joguinho
        jogo_da_forca
      else
        puts "Resposta incorreta, tente novamente"
        enigma3
    end
  end
end
