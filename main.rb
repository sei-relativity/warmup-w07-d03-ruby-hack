def mastermind(random, tries = 4)
   p random
    
    # it work only if the user input something 
    return "Nothing give it a try " unless tries > 0
    puts "Only (#{tries} times left)? "
    word = gets.chomp.upcase
    if word == random
      puts "#{word.length}/#{random.length} correct"
    else
    result = random.chars.zip(word.chars).map { |x, y| x == y }.count(true)

     puts result
     puts "#{result}/#{random.length} correct"
  
      mastermind(random, tries - 1)
    end
  end
 
  def game
    words = ["SCORPION", "FLOGGING", "CROPPERS", "MIGRAINE", "FOOTNOTE", "REFINERY", "DIZZYING", "VAULTING", "CONTINUE", "PROTECTS", "DESCENTS", "QUIZZING"]
    puts words
    mastermind(words.sample)
  end
  game

 
