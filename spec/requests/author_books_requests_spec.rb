require 'rails_helper'

RSpec.describe 'Author Books Requests', type: :request do
  let(:author) { create(:author) }
  let(:book) { create(:book, author: author) }

  before do
    sign_in author
    book
  end

  describe 'GET /authors#books#index' do
    it 'loads the page' do
      get authors_books_path
      expect(response).to have_http_status(200)
    end

    it 'displays the books' do
      get authors_books_path
      expect(response.body).to include(book.title)
    end
  end

  describe 'GET /book#edit' do
    it 'loads the page' do
      get edit_authors_book_path(book)
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /authors#book#new' do
    it 'loads the page' do
      get new_authors_book_path
      expect(response).to have_http_status(200)
    end
  end
end
