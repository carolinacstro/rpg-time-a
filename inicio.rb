require './personagem.rb'
require './fase1.rb'

def Inicio(x)
  op = Personagem.new
  op = op.teste
  x = Personagem.new
  y = Personagem.new
  y = y.sorteio_nucleo
  x = x.sorteio_material
  p "Sua varinha é de #{x} e o nucleo é de #{y}"
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
  Inicio(op)
  fase1 = Fase1.new
  fase1.enigma
elsif op == "2" then
  puts "Sair"
else 
  puts "Opção inválida"
end



