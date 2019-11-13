

def guess_it
    words=["SCORPION",
"FLOGGING",
"CROPPERS",
"MIGRAINE",
"FOOTNOTE",
"REFINERY",
"DIZZYING",
"VAULTING",
"CONTINUE",
"PROTECTS",
"DESCENTS",
"QUIZZING",]
comp_guess=words.sample
user_guess=''
puts comp_guess
chances =4
correct=0
    until (user_guess==comp_guess || chances==0)

    puts "guess the word? #{correct} letters match. #{chances} chances left
    the words are :
SCORPION
FLOGGING
CROPPERS
MIGRAINE
FOOTNOTE
REFINERY
DIZZYING
VAULTING
CONTINUE
PROTECTS
DESCENTS
QUIZZING
-------------"
correct=0
    user_guess=gets.chomp
    user_guess.upcase!
    
    comp_guess.chars.each_with_index.map do |i,c|
        correct+=1 if i==user_guess[c]
       
    end

    chances-=1
    end
return p "Congrats dogg. It is correct" if user_guess==comp_guess
p "maybe next time. the word was #{comp_guess}"
end

guess_it