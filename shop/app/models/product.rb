class Product < ActiveRecord::Base
	default_scope :order => 'title'
	has_many :line_items
	before_destroy :ensure_not_referenced_by_any_line_item


	validates :title, :description, :image_url, :presence => true
	validates :price, :numericality => {:greater_than_or_equal_to => 0.01 }
	validates :title, :uniqueness => true
	
	 def ensure_not_referenced_by_any_line_item
      if line_items.empty?
        return true
      else
        errors.add(:base, 'Line Items present')
        return false
      end
    end

	def self.search(search, page)
  		paginate :per_page => 3, :page => page,
           :conditions => ['title like ?', "%#{search}%"],
           :order => 'title'
	end

 def self.sear(query)
# where(:title, query) -> This would return an exact match of the query
	where("title like ?", "%#{query}%")
end

end
