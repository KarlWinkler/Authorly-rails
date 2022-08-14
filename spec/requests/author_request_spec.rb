require 'rails_helper'

RSpec.describe 'Author Requests', type: :request do
  let(:author) { create(:author) }

  describe 'GET /author/show' do
    it 'loads the page' do
      get authors_path
      expect(response).to have_http_status(200)
    end
  end
end
