require 'rails_helper'

RSpec.describe 'Book::Show', type: :request do
  let(:book) { create(:book) }

  describe 'GET /book/show' do
    it 'loads the page' do
      get book_path(id: book)
      expect(response).to have_http_status(200)
    end
  end
end
