class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :business_id, :body, :rating, :author, :created_at
end
