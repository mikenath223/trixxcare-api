class DoctorSerializer < ActiveModel::Serializer
  attributes :name, :image, :price, :details, :id, :location
end
