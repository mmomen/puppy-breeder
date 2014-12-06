require_relative "spec_helper.rb"

describe PuppyBreeder::Breed do
  describe "#set_breed_price" do
    it "allows me to set the price of a breed" do
      breed = PuppyBreeder::Breed.set_breed_price("Terrier", 1000)
      expect(breed.type).to eq("Terrier")
      expect(breed.price).to eq(1000)
    end
  end
end