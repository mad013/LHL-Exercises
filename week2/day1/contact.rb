require 'csv'
require 'pry'

class Contact

 attr_accessor :name, :email
 
 def initialize(name, email)
   @name = name
   @email = email
   # TODO: Assign parameter values to instance variables.
 end

 # Provides functionality for managing contacts in the csv file.
 class << self
   
  def all
    CSV.foreach("contacts.csv") do |contact|
      puts "#{contact[0]} === #{contact[1]}"
    end
  end

  
  def create(name, email)

    contact= Contact.new(name,email)
    CSV.open("contacts.csv","a+") do |csv| 
      csv << [contact.name,contact.email]

      puts "New contact was created successfully: Name: #{contact.name}, Email:#{contact.email}"
      end
  end

  def find(id)
   contacts = CSV.read("contacts.csv") 
   puts contacts[(id.to_i) -1]
  end 
 
  def search(term)
   contacts = CSV.read("contacts.csv")
   puts contacts[term.to_i] 
  end

end
end