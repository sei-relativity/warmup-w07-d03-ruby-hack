words = ["SCORPION","FLOGGING","CROPPERS","MIGRAINE","FOOTNOTE","REFINERY","DIZZYING","VAULTING","CONTINUE","PROTECTS","DESCENTS","QUIZZING"]
words.each do |value|
    puts value
end
count = 4
input = ""
solved = false
word = words.sample
word.downcase!
while count != 0 git
    puts "Guess (#{count} left)"
    input = gets.chomp
    input.downcase!
    input_char = input.chars
    word_char = word.chars
    char_count =0
    input_char.length.times do |index|
        if input_char[index] == word_char[index]
            char_count +=1
        end
    end
    p "#{char_count}/8 correct"
    count -=1
    if input == word
        solved = true
        break
    end
end
if solved == false
    p "You have failed"
else 
    p "Welcome you have passed"
end

