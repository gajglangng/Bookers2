class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def index
  end

  def show
  end

  def edit
  end
  
  def update
    book = Book.find(params[:id])
    book.update(Book_params)
    redirect_to book_path(book.id)
  end  
  
end
