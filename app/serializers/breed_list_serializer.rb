class BreedListSerializer < ActiveModel::Serializer
  attributes :id, :breed, :gender, :weight, :height
end
