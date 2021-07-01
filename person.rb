require 'pry'

class Person

    attr_accessor :first_name, :last_name, :age, :location
    ## class variables are defined with @@
    @@all = []

    def initialize(first_name, last_name, age) #instance method
        # instance variables are defined with @
        @first_name = first_name
        @last_name = last_name
        @age = age
        @@all << self
        # Person.first_name_alphabetical
        # Person.all << self
        # binding.pry
    end
    
    # self keyword inside of a class method ALWAYS refers to the class itself
    
    def self.all # class method
        @@all
        # binding.pry
    end

    def self.first_name_alphabetical # class method
        self.all.sort{|a,b| a.first_name <=> b.first_name}
    end

    def self.group_drinks #class method
        self.all.filter{|person| person.age >= 21} 
    end

    def self.greet_all #class method
        binding.pry
        self.all.each do |person|
            person.greeting
        end
    end

    def self.search_by_first_name(search) #class method
        self.all.filter do |person|
            person.first_name.include?(search)     
        end
    end

    def self.sort_by_age
        self.all.sort do |a, b|
            binding.pry
            a.age <=> b.age
        end
    end


    # def first_name
    #     @first_name
    # end

    # self in an instance method ALWAYS refers to the instance the method was called on

    def greeting # instance method
        binding.pry
        puts "Hello my name is #{@first_name}, nice to meet you."
    end

end

max = Person.new("Max", "Rabin", 19)
alberto = Person.new("Alberto", "Gonzalez", 29)
tyler = Person.new("Tyler", "Charawell", 25)
emmanuel = Person.new("Emmanuel", "Amon", 27)
ethan = Person.new("Ethan", "Rodriguez", 32)
nick = Person.new("Nick", "Lunn", 29)

binding.pry