class JournalSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer 
  attributes :id
end
