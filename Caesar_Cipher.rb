def caesar_cipher(string, key_shift)
    new_array = string.split('')
    alpha = []
    final_array = []
    

    ('a'..'z').each do |letter|
        alpha.push(letter)
    end

    new_array.each do |char|
        if char == char.upcase 
            alpha.map! {|x| x.upcase}
        elsif char == char.downcase
            alpha.map! {|x| x.downcase}
        end
        
        if alpha.include? char
            index = alpha.index(char) + key_shift
        
            while index >= 26
            index -= 26
            end

        shifted = alpha[index]
        final_array.push(shifted)
        
        else 

        final_array.push(char)

        end 

    end
    final_array.join

end 

caesar_cipher("what a string", 5)
    