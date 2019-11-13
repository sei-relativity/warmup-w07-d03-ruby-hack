$set = ["SCORPION", "FLOGGING", "CROPPERS", "MIGRAINE", "FOOTNOTE", "REFINERY", "DIZZYING", "VAULTING", "CONTINUE", "PROTECTS", "DESCENTS", "QUIZZING"]

loop do
  $count = 4
  $word = $set.sample

  loop do
    break if $count == 0
    puts "Guess (#{$count} left)? "
    input = gets.chomp
    arr = input.split("")
    word_temp = $word.split("")
    p arr
    p word_temp

    if word_temp == arr
      puts " win"
      break
    else
      temp = word_temp - arr
      puts "#{word_temp.length - temp.length} /#{word_temp.length} corr"
      $count -= 1
    end
  end
end
