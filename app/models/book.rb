class Book < ActiveRecord::Base
belongs_to :category
belongs_to :subcategory

# acts_as_taggable

  # validates :category_id,
  validates :title,uniqueness: true
  validates :amazon_link,uniqueness: true


 def set_image(file1, file2, file3)
    if !file1.nil?
      file1_name = file1.original_filename
      
      File.open("public/docs/#{file1_name}", 'wb'){|f| f.write(file1.read)}
      self.image1 = file1_name
    end

    if !file2.nil?
      file2_name = file2.original_filename
      
      File.open("public/docs/#{file2_name}", 'wb'){|f| f.write(file2.read)}
      self.image2 = file2_name
    end

    if !file3.nil?
      file3_name = file3.original_filename
      
      File.open("public/docs/#{file3_name}", 'wb'){|f| f.write(file3.read)}
      self.image3 = file3_name
    end

  end


end
