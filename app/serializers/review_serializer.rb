class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :business_id, :body, :rating, :author_name
end
