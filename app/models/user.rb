# For recording user and their emails
class User < ApplicationRecord
  validates :email, presence: true, length: { minimum: 1 }
end
