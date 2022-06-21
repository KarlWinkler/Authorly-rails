class Book < ApplicationRecord
  has_many :chapters
  # has-a Author
  # has-a

  validates :title, presence: true
end
