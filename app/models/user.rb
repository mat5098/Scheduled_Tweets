class User < ApplicationRecord
   has_many :twitter_acounts
   has_secure_password 

   validates :email, presence: true, format: {with: /\A[^@\s]+@[^@\s]+\z/, message: "Must be a valid email address"}
end