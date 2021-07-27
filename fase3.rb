require "./logica.rb"
puts "\nBem vindo ao terceiro enigma vamos ver se esse vc ira descobrir"
enigma3 = <<~TXT 
\n
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
puts enigma3
def fase3
  print "Qual a resposta?"
  resp = gets.strip.upcase
  return resp
end

fase3
resposta = fase3
i = 0
if resposta == "B" and i < 3
  jogo_da_forca
else 
  i = i+1
  fase3
end
