require_relative 'contact'

#puts 'Here is a list of available commands:'
#puts 'New     - Create a new contact'
#puts 'List    - List all contacts'
#puts 'Show    - Show a contact'
#puts 'Search  - Search contacts'






  #fine all on another page

# Interfaces between a user and their contact list. Reads from and writes to standard I/O.

class ContactList

  case ARGV[0] #saying when ARGV[0] is list 
    when 'List' 
      puts Contact.all
    when 'New'
      puts "Enter name" 
      new_name = STDIN.gets.chomp
      puts "Enter email"
      new_email = STDIN.gets.chomp
      Contact.create(new_name, new_email)
    when 'Show' 
      puts "Enter ID:"
      find_id = STDIN.gets.chomp 
      Contact.find(find_id)
    when 'Search'
      puts "Enter your query here:"
      user_query = STDIN.gets.chomp
      Contact.search(user_query)  
  end 

end