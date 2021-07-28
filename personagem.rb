require './fase1.rb'
class Personagem     
  def teste 
    print "Qual é seu nome? "
    nome = gets.chomp   
    puts "\nMuito bem #{nome}! Aperte enter para descobrir sua casa\n\n"
    #teste das casas
    score = 0

    print "\nEscolha uma cor:\n(a)vermelho\n(b)amarelo\n(c)verde\n(d)azul\n"
    resp1 = gets.chomp
    if resp1 == "a"
      score = score + 1
    elsif resp1 == "b"
      score = score + 50
    elsif resp1 == "c"  
      score = score + 100
    elsif resp1 == "d"
      score = score + 300
    else
      score = score + 0
    end

    print "\nEscolha um animal:\n(a)leão\n(b)texugo\n(c)cobra\n(d)águia\n"
    resp2 = gets.chomp
    if resp2 == "a"
      score = score + 1
    elsif resp2 == "b"
      score = score + 50
    elsif resp2 == "c"  
      score = score + 100
    elsif resp1 == "d"
      score = score + 300
    else
      score = score + 0
    end

    print "\nO que é mais importante pra você?\n(a)coragem\n(b)lealdade\n(c)ambição\n(d)inteligência\n"
    resp3 = gets.chomp
    if resp3 == "a"
      score = score + 1
    elsif resp3 == "b"
      score = score + 50
    elsif resp3 == "c"  
       score = score + 100
    elsif resp1 == "d"
      score = score + 300
    else
      score = score + 0
    end

    print "\nEscolha um fantasma de Hogwarts:\n(a)Nick-Quase-Sem-Cabeça\n(b)Frei Gorducho\n(c)Barão Sangrento\n(d)Dama Cinzenta\n"
    resp4 = gets.chomp
    if resp4 == "a"
      score = score + 1
    elsif resp4 == "b"
      score = score + 50
    elsif resp4 == "c"  
      score = score + 100
    elsif resp1 == "d"
      score = score + 300
    else
      score = score + 0
    end

    print "\nEscolha uma matéria de Hogwarts:\n(a)Feitiços\n(b)Herbologia\n(c)Poções\n(d)Astronomia\n"
    resp5 = gets.chomp
    if resp5 == "a"
      score = score + 1
    elsif resp5 == "b"
      score = score + 50
    elsif resp5 == "c"  
      score = score + 100
    elsif resp1 == "d"
      score = score + 300
    else
      score = score + 0
    end

    case score 
    when  3..149
      puts "Sua casa é a Grifinória!\n"
    when 150..299
      puts "Sua casa é a Lufa-lufa!\n"
    when 300..899
      puts "Sua casa é a Sonserina!\n"
    when 900..1500
      puts "Sua casa é a Corvinal!\n"
    else   
      print "Digite sua casa de Hogwarts: "
      casa_hogwarts = gets.chomp
      puts "Você é da #{casa_hogwarts}!"
    end
  end

  def sorteio_material
    x = rand(1...10)  
    if x == 1 then
      x = "Carvalho"
    elsif x == 2 then
      x = "Romeira"
    elsif x == 3 then
      x = "Espinheiro Negro"
    elsif x == 4 then
      x = "Teixo"
    elsif x == 5 then
      x = "Ébano"
    elsif x == 6 then
      x = "Videira"
    elsif x == 7 then
      x = "Bétula"
    elsif x == 8 then
      x = "Mogno"
    elsif x == 9 then
      x = "Salgueiro"
    else 
      x = "Cerejeira"
    end
  end
  def sorteio_nucleo
    y = rand(1...10)
    if y == 1 then
      y = "Osso"
    elsif y == 2 then
      y = "Pena da cauda de Pássaro-Trovão"
    elsif y == 3 then
      y = "Pena de fênix"
    elsif y == 4 then
      y = "Pelo da cauda de testrálio"
    elsif y == 5 then
      y = "Pelo de unicórnio"
    elsif y == 6 then
      y = "Serpente Chifruda"
    elsif y == 7 then
      y = "Chifre de basilisco"
    elsif y == 8 then
      y = "Ditamno"
    elsif y == 9 then
      y = "Cabelo de Veela"
    else 
      y = "Fibra de coração de dragão"
    end
  end
end

