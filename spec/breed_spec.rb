require_relative "spec_helper.rb"

describe PuppyBreeder::Breed do
  before(:each) do
    PuppyBreeder::Breed.clear_data
  end

  describe ".set_breed_price" do
    it "allows me to set the price of a breed" do
      breed = PuppyBreeder::Breed.set_breed_price("Terrier", 1000)
      expect(breed.type).to eq("Terrier")
      expect(breed.price).to eq(1000)
    end

    # it "allows me to set the price of multiple breeds" do
    #   breed = PuppyBreeder::Breed.set_breed_price("Terrier", 1000)
    #   breed2 = PuppyBreeder::Breed.set_breed_price("Poodle", 5000)
    #   expect(breed2.type).to eq("Poodle")
    #   expect(breed2.price).to eq(5000)
    # end
  end

  describe ".get_breed" do
    let(:breed) {PuppyBreeder::Breed.set_breed_price("Terrier", 1000)}
    # let(:breed2) {PuppyBreeder::Breed.set_breed_price("Poodle", 5000)}

    it "allows me to get details of a breed" do
      result = PuppyBreeder::Breed.get_breed(breed.type)
      expect(result.type).to eq(breed.type)
      expect(result.price).to eq(breed.price)
    end
  end

  
end