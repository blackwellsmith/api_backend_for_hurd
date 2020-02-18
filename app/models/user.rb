class User < ApplicationRecord
    has_secure_password
    has_many :journals
    has_many :contacts
    has_many :jobs
end
