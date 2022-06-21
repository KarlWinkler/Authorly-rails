class ChaptersController < ApplicationController
  def new
    @chapter = Chapter.new
    @book = Book.find(params[:book_id])
    render :new, locals: { chapter: @chapter, book: @book }
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

  def chapter_params
    {
      index: Book.chapters.last.index + 1,
      content: nil,
      book_id: params[:book_id]
    }
  end
end
