def check(random, tri = 4)
    return "" unless tri > 0
    p "Guess  #{tri} left"
    guess_word = gets.chomp.upcase
    if guess_word == random
        p "#{guess_word.length}/#{random} correct"
        p "Welcome"
    else
        p random.chars
        result = random.chars.zip(guess_word.chars).map { |x, y| x == y }.count(true)
        p result
        p "#{result}/#{random.length} correct"
        check(random, tri - 1)
        
    end
end

def hacking
    words = ["SCORPION", "FLOGGING", "CROPPERS", "MIGRAINE", "FOOTNOTE", "REFINERY", "DIZZYING", "VAULTING", "CONTINUE", "PROTECTS", "DESCENTS", "QUIZZING"]
    puts words
    check(words.sample)
  end

  hacking