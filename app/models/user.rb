class User < ApplicationRecord
  has_secure_password

  belongs_to :airport, optional: true
  # these are reviews the user has left about businesses
  has_many :written_reviews, dependent: :destroy, foreign_key: :user_id, class_name: "Review"
  # these are reviews about the business
  has_many :received_reviews, dependent: :destroy, foreign_key: :business_id, class_name: "Review"
  has_one_attached :image

  validates :email, presence: true, uniqueness: true
  validates :user_name, presence: true, uniqueness: true
  validates :is_business, inclusion: { in: [ true, false ] }

  def is_business?
    self.is_business == true
  end
end
