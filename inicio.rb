require './personagem.rb'
require './fase1.rb'
require './ui_forca.rb'

def Inicio(x)
    op = Personagem.new
    op = op.teste
    x = Personagem.new
    y = Personagem.new
    y = y.sorteio_nucleo
    x = x.sorteio_material
    p "Sua varinha é de #{x} e o nucleo é de #{y}"
end

def comecar
  primeiro_texto
  loop do
    puts "\n(1) Iniciar jogo"
    puts "(2) Sair do jogo\n"
    op = gets.chomp
    if op == "1" then
        Inicio(op)
        fase1 = Fase1.new
        fase1.enigma
    elsif op == "2" then
        break
    else 
        puts "Opção inválida"
    end
    break if não_quer_jogar
  end
end

comecar



