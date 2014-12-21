class JsonController < ApplicationController

	def index
	@id = params[:id]
	@books = Book.find(@id)
    render :json => @books
  end
end
