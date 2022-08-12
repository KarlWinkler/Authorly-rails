require 'rails_helper'

RSpec.describe 'Book::Edit', type: :request do
  let(:author) { create(:author) }
  let(:book) { create(:book, author_id: author.id) }

  describe 'GET /book/edit' do
    it 'loads the page' do
      get edit_book_path(book)
      expect(response).to have_http_status(200)
    end

    it 'has a new chapter button' do
      get edit_book_path(book)
      expect(response.body).to include('New Chapter')
    end
  end
end
