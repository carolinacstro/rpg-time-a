require "./logica_forca.rb"
class Fase3
  def enigma3
    puts "\nBem vindo ao terceiro enigma vamos ver se esse vc ira descobrir"
    enigma3 = <<~TXT 
    \n
    "Se encontrar um bixo-papao, basta me conjurar"
    Sua lembrança mais feliz, sempre te ajudará"
    \n
    Quem eu sou?
    \n
    (a) expelliarmus
    (b) expecto patronum
    (c) obliviate
    \n
    TXT
    puts enigma3
    i = 0
    while i < 3
      resp = gets.chomp.upcase
      if resp == "B" && i = 3
        puts "Resposta correta, parabéns"
        #libera joguinho
        jogo_da_forca
      else
        i += 1
        puts "Resposta incorreta, tente novamente"
      end
    end
  end
end