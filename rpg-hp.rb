require "./Classes.rb"

def fase1
    #enigma
    txt_enigma = <<~TXT
    \nSe a chave não tens, eu posso te ajudar. 
    Pegue a varinha bruxo! É só me conjurar... \n
    Eu sou: \n
    (a) aquamenti
    (b) anapneo
    (c) alohomora
    TXT

    puts txt_enigma
    #
    i = 0
    while i < 3
        resp = gets.chomp
        if resp == "c" || resp == "C"
            puts "Resposta correta, parabéns"
            #libera joguinho
        else
            i += 1
            puts "Resposta incorreta, tente novamente"
        end
    end

    
    
    #jogo
end

#introducao do game

texto_inicio = <<~TXT
\n
--------------------------------------------------
-----------------OLA JOVEM BRUXO!-----------------
--------------------------------------------------
-                                                -
--------SEJA BEM VINDO AO TORNEIO TRIBRUXO--------
-                                                -
--Você foi escolhido pelo calice para participar--
-------------do torneio tribruxo!-----------------
-                                                -
- Caso não saiba o que seja isso não se preocupe!- 
----------explicaremos mais a frente!-------------
-                                                -
--------------------------------------------------
--------------------------------------------------
\n
TXT

# menu do jogo

puts texto_inicio

puts "(1) Iniciar jogo"
puts "(2) Sair do jogo"
op = gets.chomp

if op == "1" then
    op = Personagem.new
    fase1
=begin
    op.teste
    x = Personagem.new
    y = Personagem.new
    y = y.sorteio_nucleo
    x = x.sorteio_material
    p "Sua varinha é de #{x} e o nucleo é de #{y}\n"
=end
elsif op == "2" then
    puts "Sair"
else 
    puts "opcao invalida"
end



