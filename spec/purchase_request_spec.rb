require_relative 'spec_helper.rb'

describe PuppyBreeder::PurchaseRequest do
  before(:each) do 
    PuppyBreeder::PurchaseRequest.clear_data
  end
  describe ".create_purchase_request" do

    it("creates a new purchase request") do
      request = PuppyBreeder::PurchaseRequest.create_purchase_request("Tom", "Poodle")
      expect(request.customer_name).to eq("Tom")
      expect(request.customer_breed).to eq("Poodle")
    end
  end

  describe ".get_purchase_request" do
    let(:request) {PuppyBreeder::PurchaseRequest.create_purchase_request("Bob", "Terrier")}
    
    it("gets the details of the purchase request") do
      result = PuppyBreeder::PurchaseRequest.get_purchase_request(request.customer_name)
      expect(result.customer_name).to eq("Bob")
      expect(result.customer_breed).to eq("Terrier")
    end

  end
end