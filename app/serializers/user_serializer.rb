class UserSerializer < ActiveModel::Serializer
  attributes :initials
  has_many :scores
end
