require 'rails_helper'

RSpec.describe 'Book Requests', type: :request do
  let(:author) { create(:author) }
  let(:book) { create(:book, author_id: author.id) }

  describe 'GET /book/index' do
    it 'loads the page' do
      get books_path
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /book/show' do
    it 'loads the page' do
      get book_path(book)
      expect(response).to have_http_status(200)
    end
  end
end
