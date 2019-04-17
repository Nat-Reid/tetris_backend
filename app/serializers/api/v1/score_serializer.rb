class Api::V1::ScoreSerializer < ActiveModel::Serializer
  attributes :id, :score, :user_id
end
