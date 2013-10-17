class Order < ActiveRecord::Base
	belongs_to :user, :foreign_key => :user_id
	has_many :line_items, :dependent => :destroy

	PAYMENT_TYPES = [ "Cheque", "Credit Card", "Purchase Order"]

	validates :pay_type, :inclusion => PAYMENT_TYPES
	validates :name, :address, :email, :presence => true

	def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
    	item.cart_id = nil
    	line_items << item
    end
	end
end
