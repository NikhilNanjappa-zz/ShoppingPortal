require 'faker'

FactoryGirl.define do 
  factory :order do |f| 			
    f.pay_type "Cheque"
    f.name "nikhil"
    f.address "pranam enclave"
    f.email "kainikhil@gmail.com"		
  end 
end