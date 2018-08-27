# dont need this serializer right now

class GameSerializer < ActiveModel::Serializer
  attributes :id, :score
  belongs_to :user
end
