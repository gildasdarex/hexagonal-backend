class Translator < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :translations
  has_many :languages, through: :translations
end
