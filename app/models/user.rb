class User < ApplicationRecord
  has_many :courses, dependent: :destroy

  before_save { self.email = email.downcase }
  validates :name, presence: true
  VALID_EMAIL_REGEX = /\A[\w]+\.[\w]+@rmit\.edu\.au\z|\Aadmin\z/i;
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  # acts_as_voter
end
