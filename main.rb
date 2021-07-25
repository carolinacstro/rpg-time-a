require "./logica.rb"
puts "Bem vindo ao terceiro enigma vamos ver se esse vc ira descobrir"
enigma3 = <<~TXT 
"Se encontrar um bixo-papao, basta me conjurar"
Sua lembrança mais feliz, sempre te ajudará"
\n
Quem eu sou?
\n
(A)Expelliarmus
(B)Expecto patronum
(C)Obliviate
\n
TXT
resposta = "C"
puts enigma3
resp = gets.strip.upcase
if resp == resposta 
  jogo_da_forca
  
end