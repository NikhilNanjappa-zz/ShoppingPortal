require 'spec_helper' 

describe Order do 
  it "has a valid factory" do
	  FactoryGirl.create(:order).should be_valid
  end
  it "is invalid without a title" do
	  FactoryGirl.build(:order, pay_type: nil).should_not be_valid
  end
  it "is invalid without a description" do
	  FactoryGirl.build(:order, name: nil).should_not be_valid
  end
  it "is invalid without a image_url" do
	  FactoryGirl.build(:order, address: nil).should_not be_valid
  end
  it "is invalid without a price" do
	  FactoryGirl.build(:order, email: nil).should_not be_valid
  end
end