class BooksController < ApplicationController
  
  def index
    @books = Book.all
  end
  
  def new
  end
 
  def create
    @book = Book.new(params[:book])
    @book.save
    redirect_to @book
  end
  
  def show
    @book = Book.find(params[:id])
  end
  
  def lend
    @book = Book.find(params[:id])
  end

  
end
