class ChaptersController < ApplicationController
  def new
    @book = Book.find(params[:book_id])
    book.chapters.new(chapter_params).save
    redirect_to edit_book_path(book), locals: { chapter: @chapter, book: book }
  end

  def create
    @chapter = Chapter.new(chapter_params)
  end

  def show
    @chapter = Chapter.find(params[:id])
    @book = Book.find(params[:book_id])
    render :show, locals: { chapter: @chapter, book: @book }
  end

  private

  attr_accessor :book

  def chapter_params
    {
      index: next_index,
      contents: nil,
      book_id: params[:book_id]
    }
  end

  def next_index
    return 1 if book.chapters.empty?

    book.chapters.last.index + 1
  end
end
