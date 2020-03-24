class User < ApplicationRecord
    has_secure_password
   
    has_many :journals
    has_many :contacts
    has_many :jobs
    validates :email, uniqueness: true
    validates :email, format: { with: /\A[^@\s]+@([^@.\s]+\.)*[^@.\s]+\z/  }
end
#URI::MailTo::EMAIL_REGEXP