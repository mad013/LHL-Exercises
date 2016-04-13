class Box

#attr_reader :height 
#attr_writer :height #where we can change 10 to 30 
attr_accessor :height, :width, :depth #use symbols as a more efficient way to access  

    def initialize(height, width, depth)
      @height = height 
      @width = width
      @depth = depth
    end 

    #def height #allows us to read, "getter"... step two replaced by attr_reader: height 
      #@height
    #end 

    #def height=(h) #allows us to write, "setter" 
        #@height = h 
    #def width

    def volume #reader method
      height * width * depth #using getter methods (attrs) instead of speaking to methods directly through instance variables
    end

    #NOW want to see if we can take one box and fit it in another box
    def can_fit(box)
      volume / box.volume
    end 

end 


box1 = Box.new (10,15,20)
puts box1.height 
puts box1.height = 30

puts box1.class.instance_methods #checks to see what is happening behind the scenes, can see height 

box2 = Box.new(2,2,2)
puts "Box 2 can fit inside box1 #{box1 can_fit(box2)} times"

#### Design the Blog Model ####

#concepts: posting to a feed or blog, for liking, commenting, sharing by other users 

Blog 
  post ([])            #comments already exist within the Post (within the blog). 
                  #posts can be added to or removed from: ARRAY 

Post 
  title (string) 
  text (string) 
  date (timestamp)
  author (user object) 
  comments ([])

Comment
  who posted (string) 
  date (timestamp)
  text (string)

  #Start building at the bottom with Comment, then Post, then Blog 
  #File name should be object name "Comment.rb"

  class Comment 
    attr_reader :author, :date, :text

    def initialize(author,text)
      @author = author
      @date = Time.now #this is now protected by intialize as it has no gateway into the new method 
      @text = text 

    end 
  end 

  c = Comment.new("Adam", "my first comment")
  puts "#{c.author}\n#{c.date}\n#{c.text}\n" #\n for new line 


## Adam started new doc here: ## would use "require_relative 'Comment'" (as long as same directory)

class Post 
  attr_reader :title, :text, :date, :author :comments

  def initialize(title,text,author)
      @title = title
      @text = text
      @author = author
      @date = Time.now
      @comments = []
  end

  def show_comments
    puts "Comments\n"
    puts "=" * 10 #just for a visual line break
    @comments.each do |c|
        puts "#{c.author}\n#{c.date}\n#{c.text}\n"
  end 

end 

##Take all this and put in different file 



class Blog 

  attr_accessor :posts #all we need is to read and write posts

  def initialize
    @posts = []
  end 

  def show_posts
    puts "Posts\n"
    puts "=" * 10 #just for a visual line break
    @posts.each do |p|
      puts "#{p.author}\n#{p.date}\n#{p.text}\n"
      p.comments.each do |c|
        puts "#{c.author}\n#{c.date}\n#{c.text}\n"
  end 

  def login(username, password)
    #user name and password must match to a user in database
    #else kick them back to landing page 
  end 

end 


## Main file: ## 

require_relative 'Blog'
require_relative 'Post' 
require_relative 'Comment'

b = Blog.new
puts b.posts #attrs 

p = Post.new("hey my first post", "my first blog content content content", "@mdaley")

c1 = Comment.new("@bobdylan", "hey this blog sucks")
c2 = Comment.new("@katiedaley", "nice post!")

b.posts << p 

p.comments << c1
p.comments << c2

puts p.title
puts p.author
puts p.text
puts
p.show_comments





