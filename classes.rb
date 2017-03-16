class Animal
    attr_accessor :name
    attr_writer :color
    attr_reader :legs, :arms

    @@species = ['cat', "Dog", "Rabbit", 'Tiger']

    def self.all_species
        @@species
    end

    def self.create_with_Attribute(noise,color)
        animal = self.new(noise)
        animal.color = color
        return animal
    end

    def noise=(noise) #Setter method
        @noise = noise
    end

    def noise #getter method
        @noise
    end

    def color
        "#{@name} is a #{@color} dog."
    end

    def initialize
        @legs = "Got 4 legs"
        @arms = "Got 2 arms"
        puts "A new animal has been instantiated."
    end

end

animal1 = Animal.new

animal1.noise=("cry!")
puts animal1.noise

animal1.name=("Snoop")
puts animal1.name

animal1.color=("Dark Tan")
puts animal1.color
