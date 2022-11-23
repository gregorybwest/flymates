class Review < ApplicationRecord
  belongs_to :business, class_name: "User", foreign_key: "business_id"
  belongs_to :author, class_name: "User", foreign_key: "user_id"
end
