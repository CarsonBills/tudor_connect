class User < ActiveRecord::Base
  belongs_to :building
  has_secure_password
end