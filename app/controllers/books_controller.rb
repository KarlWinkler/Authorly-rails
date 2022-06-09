class BooksController < ApplicationController
  def index
    @books = Book.all
    render :index, locals: { books: @books }
  end

  def show
    @book = Book.find(params[:id])
    render :show, locals: { book: @book }
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save!
      redirect_to @book
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :image_url)
  end
end
