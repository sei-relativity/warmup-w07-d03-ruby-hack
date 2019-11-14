
def checking(random, tries = 4)
    return p "Access Denied" unless tries > 0
    p "Guess (#{tries} left)? "
    # p random
    word = gets.chomp.upcase
    if word == random
      p "#{word.length}/#{random.length} correct"
      p "Welcome"
    else
      # 
      # .zip creates a new array filled with nested array that contain the elements of arr1 and arr2 
      # .count count the occurance of an element within an array
      # .select returns a new array that contains the element where the block condition is met
      # .with_index gives us the index of elements in an array
      # 
      # any of these two lines can work
      p random.chars.zip(word.chars).map { |x, y| x == y }
      result = random.chars.zip(word.chars).map { |x, y| x == y }.count(true)
      # result = random.chars.select.with_index { |x, i| x == word.chars[i] }.length
      # p result
      p "#{result}/#{random.length} correct"
      checking(random, tries - 1)
    end
  end
  
  def hack
    words = ["SCORPION", "FLOGGING", "CROPPERS", "MIGRAINE", "FOOTNOTE", "REFINERY", "DIZZYING", "VAULTING", "CONTINUE", "PROTECTS", "DESCENTS", "QUIZZING"]
    puts words
    checking(words.sample)
  end
  
  hack
  