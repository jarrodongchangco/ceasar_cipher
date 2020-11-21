# require 'pry'
def ceasar_cipher(word, shift)
  lowerAlpha = 'abcdefghjklmnopqrstuvwxyz'
  upperAlpha = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
  # binding.pry
  cipheredWord = []

  # cipheredWord = word[0].ord;
  # binding.pry
  # puts(word)
  for i in 0..word.length-1

    #getting unicode character from each letter in word
    unicode = word[i].ord  
    # puts "#{i}"
    # character is upper case
  
    if unicode >= 65 && unicode <= 90 
      # shft is greater than 26
      if shift > 26 || shift < -26
        shift = shift % 26 
      end
      ceasarEquiv = unicode + shift
      # puts "ceasar value over here!" "#{ceasarEquiv}"
      if ceasarEquiv > 90 
        ceasarEquiv = ceasarEquiv - 26
      elsif ceasarEquiv < 65
        ceasarEquiv = ceasarEquiv + 26
      end
      # puts "successs!"
      cipheredWord << ceasarEquiv.chr
      # print cipheredWord
    
    elsif unicode >= 97 && unicode <= 122
      if shift > 26 || shift < -26 
        shift = shift % 26 
      end

      ceasarEquiv = unicode + shift;

      if ceasarEquiv > 122 
        ceasarEquiv = ceasarEquiv - 26
      elsif ceasarEquiv < 97 
        ceasarEquiv = ceasarEquiv + 26
      end
      cipheredWord << ceasarEquiv.chr
    else 
      ciphereWord << ceasarEquiv.chr
    end
  end
  cipheredWord.join

end

# def my_name
#    "Joe Smith"
# end

  
  #   return cipheredWord
  # end

    # elsif unicode >= 97 && unicode <= 122
    #   if shift > 26 || shift < -26 
    #     shift = shift % 26 
    #   ceasarEquiv = unicode + shift;
    #   end

    #   if ceasarEquiv > 122 
    #     ceasarEquiv = ceasarEquiv - 26
      
    #   elsif ceasarEquiv < 97 
    #   ceasarEquiv = ceasarEquiv + 26
        
    #     cipheredWord += String.fromCharCode(ceasarEquiv);
    #   end

    # else 
    #     cipheredWord += word[i]


puts ceasar_cipher('xyz', 1)
# puts my_name