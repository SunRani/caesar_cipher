def caesar_cipher(message, key)
    message_array = message.split("")
    encripted = message_array.map do |letter|
      if (letter.ord == 32)
        letter
      elsif ((letter.ord >= 65 && letter.ord + key <= 90) || letter.ord >= 97 && letter.ord + key <= 122)
        (letter.ord + key).chr
      elsif (letter.ord + key >= 65 && letter.ord <= 90 && letter.ord + key > 90)
        (((letter.ord + key) - 90) + 64).chr
      elsif (letter.ord + key >= 97 && letter.ord <= 122 && letter.ord + key > 122)
        (((letter.ord + key) - 122) + 96).chr
      else
        letter
      end
    end
    puts encripted.join
end

caesar_cipher("What a string!", 5)
caesar_cipher("Hello, World!", 3)
caesar_cipher("abc", 1)
caesar_cipher("xyz", 2)