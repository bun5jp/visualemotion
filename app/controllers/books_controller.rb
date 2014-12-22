class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  # GET /books
  # GET /books.json
  def index
    @books = Book.all
  end

  # GET /books/1
  # GET /books/1.json
  def show
  end

  # GET /books/new
  def new
    @book = Book.new
  end

  # GET /books/1/edit
  def edit
  end

  # POST /books
  # POST /books.json
  def create
    @book = Book.new(book_params)
#  画像アップロード機能追加のために記述＝＝＝＝＝＝
  file1 = params[:book][:image1]
  file2 = params[:book][:image2]
  file3 = params[:book][:image3]
  @book.set_image(file1, file2, file3)
#  記述終わり＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render action: 'show', status: :created, location: @book }
      else
        format.html { render action: 'new' }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    #   画像アップロード機能追加のために記述＝＝＝＝＝＝
  file1 = params[:book][:image1]
  file2 = params[:book][:image2]
  file3 = params[:book][:image3]
  @book.set_image(file1, file2, file3)
    #  記述終わり＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:title, :image1, :image2, :image3, :amazon_link, :category_id, :note, :del_flg, :tag_list)
    end





#アップロード用の機能

def upload
    file = params[:img]
    name = file.original_filename
 
    File.open("public/img/#{name}", 'wb') { |f|
      f.write(file.read)
    }
 
    render nothing: true, status: 200
  end


#

if params[:tag]
    @books = books.tagged_with(params[:tag])
  else
    @books = book.all
  end
end
