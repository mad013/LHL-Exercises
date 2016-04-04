# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program


def find(id)
  if @candidates.find {|candidate| candidate[:id] == id}
    return @candidates.find {|candidate| candidate[:id] == id}
  else 
    "Candidate not found." #don't need puts
  end 
end 

def is_experienced?(current_candidate)
  is_experienced = []
  current_candidate[:years_of_experience] >= 2 
end

def is_old_enough?(current_candidate)
  current_candidate[:age] >= 17
end 

def applied_recently?(current_candidate)
  current_candidate[:date_applied] > 15.days.ago.to_date 
end 

def has_active_github?(current_candidate)
  current_candidate[:github_points] >= 100 
end 

def has_languages?(current_candidate)
  current_candidate[:languages].include?("Ruby") || 
  current_candidate[:languages].include?("Python") 
end 

def qualified(all_candidates)
    all_candidates.select do |candidate|
                   is_experienced?(candidate) &&
                   is_old_enough?(candidate) && 
                   applied_recently?(candidate) &&
                   has_active_github?(candidate) &&
                   has_languages?(candidate)         
    end
end 


def ordered_by_qualifications(all_candidates)
  all_candidates.sort_by {|candidate| [-candidate[:years_of_experience], -candidate[:github_points]]}    
end  

def years_total(all_candidates) 
  all_candidates.inject(0) {|sum, candidate| sum + candidate[:years_of_experience]}
end 



