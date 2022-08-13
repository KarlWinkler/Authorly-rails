class Book < ApplicationRecord
  has_many :chapters
  belongs_to :author

  validates :title, presence: true

  # used for creating css class names
  def classify
    remove_symbols(title.split.map(&:capitalize).join('').concat(id.to_s))
  end

  private

  def remove_symbols(str)
    str.gsub(/[^0-9A-Za-z]/, '')
  end
end
