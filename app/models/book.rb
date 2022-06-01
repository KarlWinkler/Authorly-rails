class Book < ApplicationRecord
    
    # attr_accessor :title, :author, :image_url
    binding.pry

    has_many :chapters
    #has-a Author
    #has-a

    validates :title, presence: true, uniqueness: true


end
