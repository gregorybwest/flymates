class Airport < ApplicationRecord
  has_many :users, -> { where is_business: true }
end
