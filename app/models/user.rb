class User < ApplicationRecord
  validates :name, presence: true
  validates :phone, presence: true
  validates :status, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  validates :email, presence: true, length: { maximum: 244 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
  def self.search(param)
    param.strip!
    param.downcase!
    to_send_back = (name_matches(param) + email_matches(param)).uniq
    return nil unless to_send_back
    to_send_back
  end

  def self.name_matches(param)
    matches('name', param)
  end

  def self.email_matches(param)
    matches('email', param)
  end
  
  def self.matches(field_name, param)
    where("#{field_name} like ?", "%#{param}%")
  end
end
