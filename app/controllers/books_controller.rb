class BooksController < ApplicationController
    def index
      @books = Book.all
      render :index, locals: { books: @books }
    end

    def show
      @book = Book.find(params[:id])
    end

    def news
      @book = Book.new
      render :new, locals: { book: @book }
    end

    def create
      @book = Book.new title: " ", author: " ", image_url: ""

      if @book.save
        redirect_to @book
      else
        render :new, status: :unprocessable_entity
      end
    end
  
    private
      def article_params
        params.require(:article).permit(:title, :body)
      end
end