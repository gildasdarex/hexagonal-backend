class Language < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :translations
  has_many :translators, through: :translations
end
