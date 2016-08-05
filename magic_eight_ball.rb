# prompt for a question
# or q for quit
# send out answer
# return to first prompt
@answer = [
  "Sorry I'm busy.",
  "Looks like it will be a bad day.",
  "Things are looking up.",
  "I don't care."
]

@user_answer = []
@my_questions = [

]

def question
  puts 'What is your question?'
  question = gets.strip.downcase
  result = @answer.sample
  puts "Magic 8 Ball says: #{result}"
  puts 'Ask me more and you will get a surprise'

  if question == "quit"
    exit(0)
  else

  end
end

def surprise
  puts 'I promised you a surprise'
  puts 'Do you want to answer my questions now? y/n'
  reply1 = gets.strip.downcase

  if reply1 == "y" || reply1 == "Y"
    question_for_user
  else
    puts "Fine. Get outta here!"
    exit(0)
  end
end

def question_for_user
  puts 'What should I eat today?'
  user_input = gets.strip
  
    if @answer.include?(user_input)
      puts "I don't like that answer, try again."
      question_for_user
    else
      @user_answer << user_input
    end

  puts 'Okay, Do I get rich?'
  @user_answer << gets.strip
  puts 'One more. Should I go to DPL today?'
  @user_answer << gets.strip

  if @user_answer == "quit"
    exit
  else
    3.times {question2}
  end
end

def question2
  puts 'Now humer me. Give me another question:'
  question = gets.strip.downcase
  result = @user_answer.sample
  puts "Magic 8 Ball says: #{result}"

  if question == "quit"
    exit(0)
  else
    other_options
  end
end

def other_options
  puts 'Did you see what just happened there?'
end





puts 'I am Magic Eight Ball'
3.times {question}
surprise
question_for_user
