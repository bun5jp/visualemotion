class Category < ActiveRecord::Base
	has_many :books


  #categories.create!( name: "art", )
end
