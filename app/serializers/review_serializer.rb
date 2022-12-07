class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :comment
  belongs_to :user
end
