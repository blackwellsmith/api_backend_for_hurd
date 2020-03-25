class JobSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer 
  attributes :id
  
end
