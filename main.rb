def match (word, try = 4)  
    if try > 0
      puts "Guess #{try}/4"
      user_guess = gets.chomp.upcase
      if word == user_guess
        puts "#{word.length}/#{user_guess.length} correct"
        puts "Welcome"
        return
      else
        match_letters = user_guess.chars.zip(word.chars).map do |ul , wl|
          ul == wl
        end
        match_letters=match_letters.count(true)
        puts "#{match_letters}/#{word.length} correct"
      end
      try = try-1
      match(word, try)
  else
    puts 'game over'
    puts word
  end
end
def words_list
words = ["SCORPION", "FLOGGING", "CROPPERS", "MIGRAINE", "FOOTNOTE", "REFINERY", "DIZZYING", "VAULTING", "CONTINUE", "PROTECTS", "DESCENTS", "QUIZZING"]
puts words
match(words.sample)
end
words_list