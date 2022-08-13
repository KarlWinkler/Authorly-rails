require 'rails_helper'

RSpec.describe Book do
  let(:author) { create(:author) }
  subject { build(:book) }

  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to have_many(:chapters) }
  it { is_expected.to belong_to(:author) }

  describe '#classify' do
    it 'returns a string with the book title in PascalCase' do
      book = create(:book, title: 'the great gatsby', author: author)
      expect(book.classify).to eq("TheGreatGatsby#{book.id}")
    end

    it 'returns a string with no symbols' do
      book = create(:book, title: "Alice's Adventures in Wonderland", author: author)
      expect(book.classify).to eq("AlicesAdventuresInWonderland#{book.id}")
    end
  end
end
