require './fase3.rb'
class Fase2
  def enigma2 
    txt_intro = <<~TXT
    \n
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    ~~~~~~~~~~~~~~~~~~~ FASE 2 ~~~~~~~~~~~~~~~~~~~
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    TXT
    txt_enigma2 = <<~TXT
    \nO tempo esta passando, e o jogo nao acabará. 
    Voce quer que o jogo termine? Venha me pegar!
    Eu Sou: \n
    (a) pomo de ouro
    (b) colar vira tempo
    (c) petrificus totalus
    TXT
    puts txt_intro
    puts txt_enigma2
    i = 0
    while i < 3
      resp = gets.chomp.downcase
      if resp == "a" && i = 3
        puts "\nResposta correta, parabéns\n"
        #libera joguinho
        caca_palavra
      else
        i += 1
        puts "\nResposta incorreta, tente novamente\n"
      end
    end
  end
  def caca_palavra
    jogo_palavra = <<~TXT 
    \ns j c n l k d a l w e c k i n e c k m l c o m a l k s q h b c q h b c k
    b c k j k c q h e i n c o w e n h a r r y p o t t e r s n o i w j m c q 
    c w h b j e c o b w n d j e c w b e c j b w j n e c w n e j k n c h w e 
    c b w j d c i g w v e t o v j n v k i e u e y e y t e y t u e q k k c l 
    n e k j c n w w n c w e i b c w n c j h w e c i n m c m w c n l j n p l 
    l s l k s i o a s c i j w o b k o q o q i w j n c j w d h c b l a w u y 
    y q i u g e o r n o w l e n c y w n c h b w o c w k d c n j b k s d n c 
    d j i c u b a t l w e n b v k j h b a w j d h v b l n a w i n d c p j a 
    u i w k j n e s j c n w e o h n f o e h f e i j i f l k l l a a o s k s 
    TXT
    
    print "\nEncontre as três palavras relacionadas aos livros e filmes da saga Harry Potter :\n"
    puts jogo_palavra
    print "\nA primeira palavra: "
    resp1 = gets.strip.downcase
    if resp1 == "harry potter" || resp1 == "dobby" || resp1 == "hogwarts"
      print "\nA segunda palavra: "
      resp2 = gets.strip.downcase
      if resp2 == "harry potter" || resp2 == "dobby" || resp2 == "hogwarts"
        print "\nA terceira palavra: "
        resp3 = gets.strip.downcase
          if resp3 == "harry potter" || resp3 == "dobby" || resp3 == "hogwarts"
            puts "\nResposta correta, parabéns\n"
            fase3 = Fase3.new
            fase3.enigma3
          else
            puts "\nResposta incorreta, tente novamente\n"
            puts caca_palavra
          end
      else
        puts "\nResposta incorreta, tente novamente\n"
        puts caca_palavra
        end
    else
      puts "\nResposta incorreta, tente novamente\n"
      puts caca_palavra
    end
  end
end

