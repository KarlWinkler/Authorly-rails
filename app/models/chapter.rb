class Chapter < ApplicationRecord
  belongs_to :book

  validates :index, presence: true

  def blurb
    return '...' if contents.nil?

    "#{contents[0, blurb_length]}..."
  end

  private

  def blurb_length
    max_blurb_length = 100
    contents.length > max_blurb_length ? max_blurb_length : contents.length
  end
end
