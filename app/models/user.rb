class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :user_name, presence: true, uniqueness: true
  validates :is_business, presence: true
  belongs_to :airport, optional: true
  has_many :reviews
  has_one_attached :image

  def is_business?
    self.is_business == true
  end
end
