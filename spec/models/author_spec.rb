require 'rails_helper'

RSpec.describe Author, type: :model do
  let(:author) { create(:author) }

  it 'is valid with valid attributes' do
    expect(author).to be_valid
  end
end
