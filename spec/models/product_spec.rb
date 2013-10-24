require 'spec_helper' 

describe Product do 
	it "has a valid factory" do
		FactoryGirl.create(:product).should be_valid
	end
	it "is invalid without a title" do
		FactoryGirl.build(:product, title: nil).should_not be_valid
	end
	it "is invalid without a description" do
		FactoryGirl.build(:product, description: nil).should_not be_valid
	end
	it "is invalid without a image_url" do
		FactoryGirl.build(:product, image_url: nil).should_not be_valid
	end
	it "is invalid without a price" do
		FactoryGirl.build(:product, price: nil).should_not be_valid
	end
end