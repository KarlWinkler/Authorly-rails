class BooksController < ApplicationController
  def index
    @books = Book.all
    render :index, locals: { books: @books }
  end

  def show
    @book = Book.find(params[:id])
    render :show, locals: { book: @book }
  end

  def edit
    @book = Book.find(params[:id])
    render :edit, locals: { book: @book }
  end

  private

  def book_params
    params.require(:book).permit(:title, :author_id, :image_url)
  end
end
