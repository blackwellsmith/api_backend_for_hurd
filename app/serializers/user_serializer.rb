class UserSerializer
 
  include FastJsonapi::ObjectSerializer
  attributes :id , :name
  has_many :contacts
  has_many :jobs
  has_many :journals
end
