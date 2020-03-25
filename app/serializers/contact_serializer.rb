class ContactSerializer #< ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  attributes :id
end
