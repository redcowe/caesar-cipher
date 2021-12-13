def caesar_cipher(str, shift) ## Create a function to take in a string of letters and a shift

    byte_array = []
   
    str.each_byte{|c| byte_array << c }  ##convert letters to ascii 
    
    shifted_byte_array = byte_array.map {|value| ##For each letter move shift it a specified number of spaces
        if value.between?(65, 90) ## Checking for lowercase letters
            if value + shift > 90 ## Looping around the alphabet ex. z(shift of 1) = a
                difference = 90 - value
                value = (shift - difference - 1) + 65
            else 
                value + shift
            end
        elsif value.between?(97, 122) ## Checking for uppercase letters 
            if value + shift > 122 # Looping around the alphabet ex Z(shift of 1) = A
                difference = 122 - value
                value = (shift - difference - 1) + 97
            else
                value + shift
            end
        else
            value = value
        end
    }

    shifted_byte_array.pack('c*')

end

puts caesar_cipher("What a string!", 5)