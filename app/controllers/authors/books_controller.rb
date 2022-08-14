module Authors
  class BooksController < AuthenticatedController
    def index
      @books = Book.where(author: current_author)
      render locals: { books: @books }
    end

    def show
      @book = Book.find(params[:id])
      render locals: { book: @book }
    end

    def edit
      @book = Book.find(params[:id])
      render :edit, locals: { book: @book }
    end

    def new
      @book = Book.new
      render locals: { book: @book }
    end

    def create
      @book = Book.new book_params
      if @book.save
        redirect_to @book
      else
        flash.notice = "Book not created: #{@book.errors.full_messages}"
        redirect_to new_authors_book_path, locals: { book: @book }
      end
    end

    def update
      @book = Book.find(params[:id])
      if @book.update book_params
        redirect_to @book
      else
        flash.notice = "Book not updated: #{@book.errors.full_messages}"
        redirect_to edit_authors_book_path, locals: { book: @book }
      end
    end

    private

    def book_params
      params[:book][:author_id] = current_author.id
      params.require(:book).permit(:title, :author_id, :image_url)
    end
  end
end
