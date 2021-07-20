

#itoduçao do jogo

texto_inicio = <<~TXT
\n
𝕆𝕃𝔸 𝕁𝕆𝕍𝔼𝕄 𝔹ℝ𝕌𝕏𝕆!

𝕊𝔼𝕁𝔸 𝔹𝔼𝕄 𝕍𝕀ℕ𝔻𝕆 𝔸𝕆 𝕋𝕆ℝℕ𝔼𝕀𝕆 𝕋ℝ𝕀𝔹ℝ𝕌𝕏𝕆

𝕍𝕠𝕔𝕖 𝕗𝕠𝕚 𝕦𝕞 𝕕𝕠𝕤 𝕖𝕤𝕔𝕠𝕝𝕙𝕚𝕕𝕠𝕤 𝕡𝕒𝕣𝕒 𝕡𝕒𝕣𝕥𝕚𝕔𝕚𝕡𝕒𝕣 𝕕𝕠 𝕥𝕠𝕣𝕟𝕖𝕚𝕠!
𝕄𝕒𝕤 𝕒𝕟𝕥𝕖𝕤, 𝕢𝕦𝕖 𝕥𝕒𝕝 𝕕𝕖𝕤𝕔𝕠𝕓𝕣𝕚𝕣 𝕢𝕦𝕒𝕝 𝕖́ 𝕤𝕦𝕒 𝕔𝕒𝕤𝕒 𝕕𝕖 ℍ𝕠𝕘𝕨𝕒𝕣𝕥𝕤? 

𝔸𝕡𝕖𝕣𝕥𝕖 𝕖𝕟𝕥𝕖𝕣 𝕡𝕒𝕣𝕒 𝕔𝕠𝕟𝕥𝕚𝕟𝕦𝕒𝕣 
\n
TXT

# menu do jogo

puts msg_inicio
puts "1 - Iniciar jogo"
puts "2 - Sair do jogo"
​
op = gets.chomp
​
if op == "1" then
    puts "iniciar"
elsif op == "2" then
    puts "sair"
else 
    puts "opcao invalida"
end


puts texto_inicio

print "Qual é seu nome? "
nome = gets.chomp
 
puts "\nMuito bem #{nome}! Aperte enter para descobrir sua casa\n"

#teste das casas

score = 0

print "Escolha uma cor:\n(a)vermelho\n(b)amarelo\n(c)verde\n(d)azul\n"
resp1 = gets.chomp

if resp1 == "a"
    score = score + 1
elsif resp1 == "b"
    score = score + 50
elsif resp1 == "c"  
    score = score + 100
else
    score = score + 300
end

print "Escolha um animal:\n(a)leão\n(b)texugo\n(c)cobra\n(d)águia\n"
resp2 = gets.chomp

if resp2 == "a"
    score = score + 1
elsif resp2 == "b"
    score = score + 50
elsif resp2 == "c"  
    score = score + 100
else
    score = score + 300
end

print "O que é mais importante pra você?\n(a)coragem\n(b)lealdade\n(c)ambição\n(d)inteligência\n"
resp3 = gets.chomp

if resp3 == "a"
    score = score + 1
elsif resp3 == "b"
    score = score + 50
elsif resp3 == "c"  
    score = score + 100
else
    score = score+ 300
end

print "Escolha um fantasma de Hogwarts:\n(a)Nick-Quase-Sem-Cabeça\n(b)Frei Gorducho\n(c)Barão Sangrento\n(d)Dama Cinzenta\n"
resp4 = gets.chomp

if resp4 == "a"
    score = score + 1
elsif resp4 == "b"
    score = score + 50
elsif resp4 == "c"  
    score = score + 100
else
    score = score + 300
end

print "Escolha uma matéria de Hogwarts:\n(a)Feitiços\n(b)Herbologia\n(c)Poções\n(d)Astronomia\n"
resp5 = gets.chomp

if resp5 == "a"
    score = score + 1
elsif resp5 == "b"
    score = score + 50
elsif resp5 == "c"  
    score = score + 100
else
    score = score + 300
end

puts score

case score 
when  3..149
    puts "Sua casa é a Grifinória!"
    puts "\nVocê desbloqueou uma varinha Álamo!"
when 150..299
    puts "Sua casa é a Lufa-lufa!"
    puts "\nVocê desbloqueou uma varinha de Espinheiro-negro"
when 300..899
    puts "Sua casa é a Sonserina!"
    puts "\nVocê desbloqueou uma varinha de Salgueiro"
when 900..1500
    puts "Sua casa é a Corvinal!"
    puts "\nVocê desbloqueou uma varinha de Sicômoro"
else   
    print "Digite sua casa de Hogwarts: "
    casa_hogwarts = gets.chomp
    puts "Você é da #{casa_hogwarts}!"
end


