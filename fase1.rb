require './fase2.rb'
class Fase1 
  def enigma
    txt_intro = <<~TXT
    \n
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    ~~~~~~~~~~~~~~~~~~~ FASE 1 ~~~~~~~~~~~~~~~~~~~
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    \n\n
    O Torneio Tribruxo é um campeonato entre escolas de magia 
    no qual é selecionado um representante com o objetivo de testar 
    as habilidades mágicas, de inteligência e engenho de bruxos e bruxas.
    \n
    Você é o campeão escolhido para representar Hogwarts! 
    O jogo é composto por três fases, cada fase contendo um enigma 
    e um mini jogo.
    TXT
    txt_enigma = <<~TXT
    \n 
    ================= enigma =================
    Se a chave não tens, eu posso te ajudar. 
    Pegue a varinha bruxo! É só me conjurar...
    ==========================================
    \n
    Eu sou:
    (a) aquamenti
    (b) anapneo
    (c) alohomora
    \n
    TXT

    puts txt_intro 
    puts txt_enigma
    print"Escreva aqui a alternativa correta: "
    resp = gets.chomp

    if resp == "c" || resp == "C"
        puts "\nResposta correta, parabéns\n"
        #libera joguinho
        puts jogo
    else
        puts "\nResposta incorreta, tente novamente\n"
        puts enigma
    end
  end 

  def jogo
    txt_intro_jogo= <<~TXT
    \n\n
    Muito bem você conseguiu acertar o primeiro enigma!
    \n
    Para chegar na fase dois você terá que encontrar o 
    animal diferente no mini jogo a seguir: 
    \n
    TXT

    jogo_girafa = <<~TXT
    \n
    🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒
    🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒
    🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🐆🦒🦒🦒
    🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒
    🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒
    🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒
    🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒
    🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒
    🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒🦒
    \n
    TXT

    puts txt_intro_jogo
    print "Qual o animal diferente? \n"
    puts jogo_girafa
    print "Digite o nome do animal que você encontrou: "
    resp = gets.chomp.upcase
    
    case resp
      when "ONÇA"
        puts "\nResposta correta, parabéns\n"
        #libera joguinho
        fase2 = Fase2.new
        fase2.enigma2
      else
        puts "\nResposta incorreta, tente novamente\n"
        jogo
    end
  end 
end

