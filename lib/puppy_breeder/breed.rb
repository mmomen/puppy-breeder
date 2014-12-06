module PuppyBreeder
  class Breed
    attr_reader :breed
    def initialize
      @breed = Hash.new
    end
    def set_breed_price(type, price)
      @breed[:type] = type
    end
  end
end

test = PuppyBreeder::Breed.new
test.set_breed_price("a", 1)
puts test.breed[:type]














=begin
# module PuppyBreeder
  class Breed
    def initalize
      @breed = Hash.new
    end
    def set_breed_price(type, price)
      @breed[type] = type
    end
  end
# end

# test = PuppyBreeder::Breed.new
test = Breed.new
test.set_breed_price("aaa", 50)
=end
