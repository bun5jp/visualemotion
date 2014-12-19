module BooksHelper

  def profile_image_for(book, size = '52')
    image_tag "/docs/#{user.image1}", size: size, class: :gravatar
  end

end

