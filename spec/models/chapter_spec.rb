require 'rails_helper'

RSpec.describe Chapter, type: :model do
  subject { build(:chapter) }

  it { is_expected.to belong_to(:book) }
  it { is_expected.to validate_presence_of(:index) }

  describe '#blurb' do
    context 'when the contents are longer than 100 characters' do
      it 'returns the first 100 characters of the contents' do
        chapter = build(:chapter, contents: 'a' * 200)
        expect(chapter.blurb).to eq("#{'a' * 100}...")
      end
    end

    context 'when the blurb is 50 characters long' do
      it 'returns the only 50 characters of the contents' do
        chapter = build(:chapter, contents: 'a' * 50)
        expect(chapter.blurb).to eq("#{'a' * 50}...")
      end
    end

    context 'when the contents are nil' do
      it 'returns an empty string' do
        chapter = build(:chapter, contents: nil)
        expect(chapter.blurb).to eq('...')
      end
    end
  end
end
