#Trying Out Class Methods

class Animal

    attr_accessor :name
    attr_writer :color
    attr_reader :legs, :arms, :origin

    @@species = ['cat','cow','rabbit', 'tortoise', 'Zebra']

    def self.all_species
        @@species
    end

    def self.create_with_attribute(noise, color)
       animal =  self.new(noise)
       animal.color = color
       return animal
    end

    def initialize(noise, legs="2 Legs", arms="4 arms")
        @noise = noise
        @legs = legs
        @arms = arms
        puts "A new animal has been created from class Animal"
    end


    def noise=(noise) #setter metthod
        @noise = noise
    end

    def noise #getter method
        @noise
    end

    def color
        "#{@name} is a #{@color} dog."
    end

    def origin=(origin)
        @origin = origin
    end

end

puts Animal.all_species.inspect

animal1 = Animal.new("Got 4 legs", "Got no arm")

animal1.noise=("cry!")
puts animal1.noise

animal1.name = "Steve"
puts animal1.name

puts animal1.legs
puts animal1.arms

animal1.origin = "Sweden"
puts animal1.origin

animal3 = Animal.create_with_attribute("Quack!","Purple")
animal3.name = "Mufasa"
puts animal3.noise
puts animal3.color
