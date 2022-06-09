class Chapter < ApplicationRecord
  belongs_to :book

  attr_accessor :content, :index
end
