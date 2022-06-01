require 'rails_helper'

RSpec.describe Chapter, type: :model do
  subject { build(:chapter) }

  it { is_expected.to belong_to(:book) }
end
