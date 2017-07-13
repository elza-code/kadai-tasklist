class User < ApplicationRecord
 
  validates :name, presence: true, length: { minimum: 6, maximum: 30 }, uniqueness: true
  has_secure_password
  
  has_many :tasks
end
