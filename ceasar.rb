# require pry
def ceasar_cipher(word, shift_factor)
  alpha = 'abcdefghjklmnopqrstuvwxyz'
  # binding.pry
  cipheredWord = []

  # cipheredWord = word[0].ord;
  # binding.pry
  # puts(word)
  for i in 0..word.length-1
    
    # Get character index of alpha array based of index of sent word
    alphaIndex = alpha.index(word[i])
    # put a flag if letter is uppercase
    
    #getting unicode character from each letter in word
    unicode = word[i].ord  
    # puts "#{i}"
  

    # ceasar cipher item is like punctation
    if unicode >= 65 && unicode <= 90 
      #if shft is greater than 25
      if shift > 26 || shift < -26
        shift = shift % 26 
        ceasarEquiv = unicode + shift
      end
      if ceasarEquiv > 90 
        ceasarEquiv = ceasarEquiv - 26
      elsif ceasarEquiv < 65
       ceasarEquiv = ceasarEquiv + 26
       cipheredWord += String.fromCharCode(ceasarEquiv)
      end

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
    end

  
    return cipheredWord
  end
end

ceasar_cipher('abc', 5)
