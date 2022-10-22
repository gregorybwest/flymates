class User < ApplicationRecord
  belongs_to :airport, optional: true
end
