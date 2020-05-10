# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :username, :password_digest
end
