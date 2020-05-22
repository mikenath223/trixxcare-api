class UserSerializer < ActiveModel::Serializer
  attributes :username, :password_digest
end
