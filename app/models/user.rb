class User < ApplicationRecord
  belongs_to :airport, optional: true

  def is_business?
    self.is_business == true
  end
end
