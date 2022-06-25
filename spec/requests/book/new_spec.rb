require 'rails_helper'

RSpec.describe 'Book::New', type: :request do
  let(:book) { create(:book) }

  describe 'GET /book/new' do
    it 'loads the page' do
      get new_book_path
      expect(response).to have_http_status(200)
    end
  end
end
