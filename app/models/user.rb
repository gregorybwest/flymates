class User < ApplicationRecord
  belongs_to :airport, optional: true
  has_many :reviews

  def is_business?
    self.is_business == true
  end
end
