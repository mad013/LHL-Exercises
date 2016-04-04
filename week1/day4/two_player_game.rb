#Instance Variables: 

@lives_one = 3 
@lives_two = 3 

@score_one = 0
@score_two = 0

@current_player = 1

#Logic Methods: 
def lives_check
  if (@lives_one > 0) && (@lives_two > 0) 
    return true
  else 
    return false 
  end  
end 

def calculate_answer(x,y)
  right_answer = x + y 
end 

#Input/Output Methods:
def answer_prompt(x,y)
  if lives_check == true
  puts "Player #{@current_player}: What does #{@x} plus #{@y} equal?"
  gets.chomp.to_i 
  end
end 

def player_switch
  if @current_player == 1 
      @current_player = 2 
      puts "You have #{@lives_one} lives remaining."
    else 
      @current_player = 1 
      puts "You have #{@lives_two} lives remaining."
  end   
end 

def track_score(answer, right_answer)
  if (answer == right_answer) && (@current_player == 1) 
    @score_one += 1 
    puts "Correct! You have a total of #{@score_one} points!"
  elsif (answer == right_answer) && (@current_player == 2) 
    @score_two += 1 
    puts "Correct! You have a total of #{@score_two} points!"
  elsif (answer != right_answer) && (@current_player == 1)
    @lives_one -= 1
    puts "Wrong! You lost a life!"
  elsif (answer != right_answer) && (@current_player == 2)
    @lives_two -= 1
    puts "Wrong! You lost a life!"
  end 
end 

def declare_winner
  if @lives_one == 0
    puts "Player 2 WINS with a score of #{@score_two} to #{@score_one}!"
  elsif @lives_two == 0 
    puts "Player 1 WINS with a score of #{@score_one} to #{@score_two}!"
  end
end 

#Loop:

while lives_check == true do 
  @x = rand(1...20)
  @y = rand(1...20)

  lives_check
  user_answer = answer_prompt(@x,@y)
  right_answer = calculate_answer(@x,@y)

  
  track_score(user_answer, right_answer)
  player_switch 
  declare_winner

end 