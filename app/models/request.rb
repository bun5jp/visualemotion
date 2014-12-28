class Request
  include ActiveModel::Model
 
  attr_accessor :title, :category, :book_url, :message, :name, :email
 
  # validates :name, :presence => {:message => '入力してください'}
  # validates :email, :presence => {:message => '入力してください'}

end

