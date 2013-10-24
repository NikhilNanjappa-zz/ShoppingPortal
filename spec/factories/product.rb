require 'faker'

FactoryGirl.define do 
  factory :product do |f| 
	f.title { Faker::Lorem.sentence(12) }
	f.description { Faker::Lorem.paragraph(2) }
	f.image_url { Faker::Lorem.sentence(20) }
	f.price "240"		
  end 

  factory :invalid_product, parent: :product do |f| 
	f.title nil 
  end
end