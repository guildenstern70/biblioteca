require 'book_mailer'

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
    @comment_sent = flash[:comment]
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

  def send_comment
    @book = Book.find(params[:id])
    email = params[:email]
    comment = params[:message]
    BookMailer.contact(comment, email, params[:id])
    redirect_to @book, flash: {comment: true}
  end

  def update
    patch_attributes = params.require(:book).permit(:user_id)
    @book = Book.find(params[:id])
    @book.update(patch_attributes)
    redirect_to @book
  end

end
