#REPL: Read, Eval, Print, Loop

#instance variables 
#@investment = 20 
#@cost = 2 

@purchased_bottles = 0


@empty_bottles = 0
@extra_empty_bottles = 0 

@empty_caps = 0
@extra_empty_caps = 0

@bottles_from_bottles = 0
@bottles_from_caps = 0

@total_bottles = 0

def recycle_start  
  prompt_user #WORKS 
  bottles_purchased #WORKS 
  initial_recycle
  redeem_from_recycle
  #update_total_bottles
  #output_result 
end 

#Input/Output Methods: 
def prompt_user
 puts "How much would you like to spend on pop today?($)"
  @investment = gets.chomp.to_i
end 

def bottles_purchased
   @purchased_bottles = @investment/2
   puts "You have bought #{@purchased_bottles} bottles of pop."
end 

#Logic Methods
def initial_recycle
  @empty_caps += @purchased_bottles
  @empty_bottles += @purchased_bottles
  @extra_empty_caps += @purchased_bottles if @purchased_bottles < 4
  @extra_empty_bottles += @purchased_bottles if @purchased_bottles < 2 
end 

def redeem_from_recycle 
  until  @empty_caps < 4
  redeem_from_caps 
  end 
  until @empty_bottles < 2
  redeem_from_bottles
  end   
end 


def redeem_from_caps 
  extra_caps = @bottle_caps % 4 
  @extra_empty_caps +=
end 

def redeem_from_bottles
end 
 
recycle_start 


