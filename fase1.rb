require './fase2.rb'
class Fase1 

    def enigma
        txt_intro = <<~TXT
        \n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        ~~~~~~~~~~~~~~~~~~~ FASE 1 ~~~~~~~~~~~~~~~~~~~
        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
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
        
        resp_jogo = gets.chomp

        if resp_jogo == "onça" || resp_jogo == "Onça"
            puts "Resposta correta, parabéns"
            # libera fase2
            fase2 = Fase2.new
            fase2.enigma2
        else
            puts "Resposta incorreta, tente novamente"
            puts jogo
        end

    end 
end

