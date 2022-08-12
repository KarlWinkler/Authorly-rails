class Author < ApplicationRecord
  before_save :downcase_email

  has_many :books

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true, uniqueness: true

  private

  def downcase_email
    self.email = email.downcase
  end
end