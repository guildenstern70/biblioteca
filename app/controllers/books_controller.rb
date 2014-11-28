class BooksController < ApplicationController
  
  def new
  end
 
  def create
    render text: params[:book].inspect
  end

  
end
