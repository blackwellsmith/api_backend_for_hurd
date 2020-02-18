class JobSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer 
  attributes :id
  belongs_to :user
end
