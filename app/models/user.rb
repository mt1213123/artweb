class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  has_many :exhibitions
  has_many :comments

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze

  with_options presence: true do
    validates :nickname
    validates :email, uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL_REGEX }
    validates :password, length: { minimum: 6 }, format: { with: VALID_PASSWORD_REGEX }
  end
end
