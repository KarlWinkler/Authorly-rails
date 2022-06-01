require 'rails_helper'

RSpec.describe Book do
    subject { build(:book) }

    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to have_many(:chapters) }
end