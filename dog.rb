require 'pry'
# defining a new class (object) with class keyword
class Dog
    #class body

    #attr accessor gives us both reader and writer methods
    attr_accessor :name, :hair_color

    #attr reader gives us just reader methods
    attr_reader :gender, :breed

    #attr writer gives us just writer methods
    attr_writer :age
    
    #writer
    # def name=(name)
    #   @name = name
    # end

    #reader
    # def name
    #   @name
    # end

    # initialize an instance method that is automatically called on the instance of a dog created by Dog.new
    # we must pass any arguments that #initialize requires to Dog.new
    def initialize(breed, gender, name = nil)  le/ hook 
        @breed = breed
        @gender = gender
        # if name
            @name = name
        # end
        puts "a new dog"
    end

    def beg # instance method
        puts "#{@name} is begging."
        puts "#{self.name} is begging."
        puts "#{name} is begging."
    end

    def bark
        puts "woof"
    end
end


x = Dog.new("Pitbull", "M", "Fido")
y = Dog.new("Lab", "F")

binding.pry