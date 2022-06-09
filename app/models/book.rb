class Book < ApplicationRecord
  has_many :chapters

  validates :title, presence: true, uniqueness: true
end
