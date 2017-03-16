class Animal

    attr_accessor :name
    attr_writer :color
    attr_reader :legs, :arms, :origin

    def initialize(legs, arms)
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

class Dragon < Animal

end

animal1 = Animal.new("Got 4 legs", "Got no arm")

animal1.noise=("cry!")
puts animal1.noise

animal1.name = "Steve"
puts animal1.name

puts animal1.legs
puts animal1.arms

animal1.origin = "Germany"
puts animal1.origin

bluedragon = Dragon.new("Has two legs", "Has 2 arms")
puts bluedragon.legs
bluedragon.origin = "North Korea"
puts bluedragon.origin
