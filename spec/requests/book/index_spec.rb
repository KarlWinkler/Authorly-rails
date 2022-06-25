require 'rails_helper'

RSpec.describe 'Book::Index', type: :request do
  let(:book) { create(:book) }

  describe 'GET /book/index' do
    it 'loads the page' do
      get books_path
      expect(response).to have_http_status(200)
    end
  end
end
