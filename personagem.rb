require './fase1.rb'
class Personagem     
  def teste 
    print "\nQual é seu nome? "
    nome = gets.chomp.capitalize   
    puts "\nMuito bem #{nome}! Agora faça o teste para descobrir sua casa!\n\n"
    #teste das casas
    score = 0

    txt_perg1 = <<~TXT
    \n
    Por qual motivo você ficaria na detenção em Hogwarts?

    (a) Por tentar explorar a Floresta Proibida
    (b) Por bater em um colega para defender um amigo
    (c) Por escrever uma mensagem zombando do seu rival numa parede
    (d) Por invadir a Seção Restrita da biblioteca
    \n
    TXT

    puts txt_perg1
    print"Escreva aqui a alternativa que mais te representa: "
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

    txt_perg2 = <<~TXT
    \n
    Qual dos adjetivos abaixo mais te ofenderia caso você fosse chamado?

    (a) Covarde
    (b) Falso
    (c) Irrelevante
    (d) Ignorante
    \n
    TXT

    puts txt_perg2
    print"Escreva aqui a alternativa que mais te representa: "
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

    txt_perg3 = <<~TXT
    \n
    Que tipo de fama você gostaria de ter?

    (a) Ser extremamente famoso numa época, mas quase ninguém lembrar de você algum tempo depois
    (b) Não ser famoso, mas ser bom e reconhecido pelos colegas de profissão
    (c) Ser alguém conhecido no mundo todo
    (d) Nunca ser famoso em vida, mas ser lembrado eternamente depois da morte
    \n
    TXT

    puts txt_perg3
    print"Escreva aqui a alternativa que mais te representa: "
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

    txt_perg4 = <<~TXT
    \n
    Um trasgo invadiu a escola e entrou em um dos banheiros. Lá estão dois alunos, 
    uma pessoa que você detesta e uma pessoa que você nunca viu na vida. O que você faz?

    (a) Invade o banheiro sozinho e tenta deter o trasgo com as armas que você tem
    (b) Reúne alguns amigos e tenta deter o trasgo
    (c) Nada, e torce para que o trasgo ensine uma lição para a pessoa
    (d) Nada, afinal, você não tem poder suficiente para detê-lo
    \n
    TXT

    puts txt_perg4
    print"Escreva aqui a alternativa que mais te representa: "
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

    txt_perg5 = <<~TXT
    \n
    Escolha uma criatura mágica:
    
    (a) Elfos
    (b) Centauros
    (c) Acromântulas (aranhas gigantes)
    (d) Hipogrífos
    \n
    TXT

    puts txt_perg5
    print"Escreva aqui a alternativa que mais te representa: "
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
      puts "\nSua casa é a Grifinória!\n"
    when 150..299
      puts "\nSua casa é a Lufa-lufa!\n"
    when 300..899
      puts "\nSua casa é a Sonserina!\n"
    when 900..1500
      puts "\nSua casa é a Corvinal!\n"
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

