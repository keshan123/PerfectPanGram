

def pangramTest?(input)
  letters_check = ('a'..'z').to_a - input.downcase.chars.to_a
  missing_letters = []
  
  unless letters_check.empty?
    ('a'..'z').each do |word|
      if letters_check.index(word)
        missing_letters << word
      end
    end
  end
  if missing_letters.empty?
    puts "Perfect Pangram!"
  else
    puts missing_letters.join('')
  end
end 

  
puts pangramTest?('we promptly judge antique ivory buckles for the next prize')
puts pangramTest?('we promptly judge antique ivory buckles for the prize')
puts pangramTest?('the quick brown fox jumps over the lazy dog')
puts pangramTest?('the quick brown fox jump over the lazi dog')
puts pangramTest?('hi hello bro')
puts pangramTest?('a b c d e f g h i j k l m n o p q r s t u v w x y z')