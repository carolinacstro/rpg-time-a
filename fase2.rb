#enigma fase 2
class Fase_2
    def fase3
        var = "oi"
        print " "
    end
    def enigma2 
        txt_enigma2 = <<~TXT
            \nO tempo esta passando, e o jogo nao acabará. 
            Voce quer que o jogo termine? Venha me pegar!
            Eu Sou: \n
            (a) pomo de ouro
            (b) colar vira tempo
            (c) petrificus totalus
            TXT

        puts txt_enigma2
        i = 0
        while i < 3
            resp = gets.chomp.downcase
            if resp == "a" && i = 3
                puts "Resposta correta, parabéns"
                #libera joguinho
                caca_palavra
            else
                i += 1
                puts "Resposta incorreta, tente novamente"
            end
        end
    end

    def caca_palavra
        jogo_palavra = <<~TXT 
            \ns j c n l k d a l w e c k i n e c k m l c o m a l k s q h b c q h b c k
            b c k j k c q l e i n c o w e n h a r r y p o t t e r s n o i w j m c q 
            c w h b j e c r b w n r j e c w b e c j b w j n e c w n e j k n c h w e 
            c b w j d c i e w v e t a v j n v k i e u e y e y t e y t u e q k k c l 
            n e k j c n w d n c w e i b c w n c j h w e c i n m c m w c n l j n p l 
            l s l k s i o u s c i j w o i k o q o q i w j n c j w d h c b l a w u y 
            y q i u g e o c n o w l e n c c w n c h b w o c w k d c n j b k s d n c 
            d j i c u b a t l w e n b v k j h b a w j d h v b l n a w i n d c p j a 
            u i w k j n e o j c n w e o h n f o e h f e i j i f l k l l a a o s k s 
            TXT

        print "\nEncontre as três palavras relacionadas aos livros e filmes da saga Harry Potter :\n"
        puts jogo_palavra

        print "\nA primeira palavra: "
        resp1 = gets.chomp.downcase
        if resp1 == "harry potter" || resp1 == "reducto" || resp1 == "rabicho"
            print "\nA segunda palavra: "
            resp2 = gets.chomp.downcase
            if resp2 == "harry potter" || resp2 == "reducto" || resp2 == "rabicho"
                print "\nA terceira palavra: "
                resp3 = gets.chomp.downcase
                if resp3 == "harry potter" || resp3 == "reducto" || resp3 == "rabicho"
                    puts "Resposta correta, parabéns"
                    fase3
                else
                    puts "Resposta incorreta, tente novamente"
                    puts caca_palavra
                end
            else
                puts "Resposta incorreta, tente novamente"
                puts caca_palavra
            end
        else
            puts "Resposta incorreta, tente novamente"
            puts caca_palavra
        end


        #outra alternativa
        #respostas = ["harry potter", "reducto", "rabicho"]
        #
        #i = 1
        #while i < 3
        #    print "\n#{i}˚ palavra: "
        #    resp = gets.chomp
        #    for resp in respostas do
        #        if respostas.include? resp
        #            if respostas << resp
        #                puts "Você achou a palavra #{resp}"
        #                i += 1
        #                print "\n#{i}˚ palavra: "
        #                resp = gets.chomp
        #            end
        #        else
        #            puts "Resposta incorreta, tente de novo"
        #        end
        #    end
        #end






    end
end

fase2 = Fase_2.new
fase2.enigma2