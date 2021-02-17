class User < ApplicationRecord
  validates :name, presence: true
  validates :phone, presence: true
  validates :status, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  validates :email, presence: true, length: { maximum: 244 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
end
