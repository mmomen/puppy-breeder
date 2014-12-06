module PuppyBreeder
  class Breed
    attr_reader :type, :price
    @@breeds = Hash.new

    def initialize(type, price)
      @type = type
      @price = price
    end

    def self.set_breed_price(type, price)
      @@breeds[type] = Breed.new(type, price)
    end

    def self.get_breed(type)
      @@breeds[type]
    end

    def self.clear_data
      @@breeds = Hash.new
    end
  end
end
