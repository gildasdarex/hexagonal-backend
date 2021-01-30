class User < ApplicationRecord
  # Include default devise modules.
  has_many :appointments
  has_many :meetings, through: :appointments
end
