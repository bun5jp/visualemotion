json.array!(@books) do |book|
  json.extract! book, :title, :image1, :image2, :image3, :amazon_link, :category_id, :note, :del_flg
  json.url book_url(book, format: :json)
end