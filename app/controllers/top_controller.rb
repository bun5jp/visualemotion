class TopController < ApplicationController
  def index

  	#!偽の時には？の部分を取得する
  	#if (!params[:p]){page = 1} else {page = params :p}
  	@page = !params[:p] ? 1 : params[:p];
    @nextpage = @page.to_i+1;
  	@offset = (@page.to_i - 1)*5;
  	@books = Book.order("RANDOM()").find(:all,:offset => @offset,:limit => 5)

  end
end
