#Refer to this class as PuppyBreeder::PurchaseRequest
module PuppyBreeder
  class PurchaseRequest
    attr_reader :customer_name, :customer_breed
    @@customers = Hash.new

    def initialize(customer_name, customer_breed)
      @customer_name = customer_name
      @customer_breed = customer_breed
    end

    def self.create_purchase_request(customer_name, customer_breed)
      @@customers[customer_name] = PurchaseRequest.new(customer_name, customer_breed)
    end

    def self.get_purchase_request(customer_name)
      @@customers[customer_name]
    end

    def self.clear_data
      @@customers = Hash.new
    end
  end
end

# x = PuppyBreeder::PurchaseRequest.new("bob", "Terrier")
# y = PuppyBreeder::PurchaseRequest.new("sam", "Poodle")
# puts x.customer_name
# puts x.customer_breed
# puts y.customer_name
# puts y.customer_breed