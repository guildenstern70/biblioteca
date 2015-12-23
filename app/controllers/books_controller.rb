class BooksController < ApplicationController

  def new

  end

  def create
    @book = Book.new(params[:book])
    @book.save
    redirect_to @book
  end

  def show
    @book = Book.find(params[:id])
    if not @book.available_for_rent?
      @whohasit = User.find(@book.user_id).surname
    end
  end

  def index
    @books = Book.all
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    patch_attributes = params.require(:book).permit(:user_id)
    @book = Book.find(params[:id])
    @book.update(patch_attributes)
    redirect_to @book
  end

end
