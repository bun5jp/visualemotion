class Contact
  include ActiveModel::Model
 
  attr_accessor :name, :email, :message
 
  validates :name, :presence => {:message => 'NAMEを入力してください'}
  validates :email, :presence => {:message => 'EMAILを入力してください'}
  
end



# class Contact
#   include ActiveModel::Model
 
#   attr_accessor :name, :email, :message
 
#   validates :name, :presence => {:message => 'NAMEを入力してください'}
#   validates :email, :presence => {:message => 'EMAILを入力してください'}
# end
