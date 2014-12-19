class Book < ActiveRecord::Base
belongs_to :category

validates :title, presence: true,




#　画像セットアップ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
#＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

def self.up
	change_table :books do |t|
		t.attachment :image1
	end
end

def self.down
	remove_attachment :books, :image1
end



def self.up
	change_table :books do |t|
		t.attachment :image2
	end
end
def self.down
	remove_attachment :books, :image2
end



def self.up
	change_table :books do |t|
		t.attachment :image3
	end
end
def self.down
	remove_attachment :books, :image3
end

#========================================

end
