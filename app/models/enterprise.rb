class Enterprise < ApplicationRecord
  has_many :users, dependent: :destroy
end
