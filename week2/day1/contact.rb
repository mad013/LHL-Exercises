require 'csv'
require 'pry'

# Represents a person in an address book.
# The ContactList class will work with Contact objects instead of interacting with the CSV file directly
class Contact

  attr_accessor :name, :email
  
  # Creates a new contact object
  # @param name [String] The contact's name
  # @param email [String] The contact's email address
  def initialize(name, email)
    @name = name
    @email = email 
  # @id_number =
  end

  # Provides functionality for managing contacts in the csv file.
  class << self

    # Opens 'contacts.csv' and creates a Contact object for each line in the file (aka each contact).

    def all
      contacts = CSV.read('contacts.csv') #'read' changed to 'list'
    end

    # Creates a new contact, adding it to the csv file, returning the new contact.
    # @param name [String] the new contact's name
    # @param email [String] the contact's email
    def create(name, email)  
    
      CSV.open('contacts.csv', 'a+') do |csv|
        csv << [name, email]
       end    

      puts "Contact entry for #{name} created successfully."
    end
    
    
    def find(id)
      
      CSV.open('contacts.csv', 'r') do |csv|
        match = CSV.find?(id)
        if match 
          puts "Contact with #{id} is #{name}"
        else 
          return nil
        end    
      end
    end
    
    # Search for contacts by either name or email.
    # @param term [String] the name fragment or email fragment to search for
    # @return [Array<Contact>] Array of Contact objects.
    def search(term)
      CSV.open('contacts.csv', 'r') do |csv|
        match = CSV.find?(term)
          if match
          puts "Contact entry: #{id}#{name},#{email}"
          end 
        end
      end     
      # TODO: Select the Contact instances from the 'contacts.csv' file whose name or email attributes contain the search term.
    end

  end

end