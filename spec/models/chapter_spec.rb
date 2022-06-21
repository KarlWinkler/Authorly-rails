require 'rails_helper'

RSpec.describe Chapter, type: :model do
  subject { build(:chapter) }

  it { is_expected.to belong_to(:book) }
  it { is_expected.to validate_presence_of(:index) }

  describe '#blurb' do
    it 'returns the first 100 characters of the contents' do
      chapter = build(:chapter, contents: 'a' * 200)
      expect(chapter.blurb).to eq("#{'a' * 100}...")
    end
    it 'returns the only 50 characters of the contents' do
      chapter = build(:chapter, contents: 'a' * 50)
      expect(chapter.blurb).to eq("#{'a' * 50}...")
    end
  end
end
