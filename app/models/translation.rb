class Translation < ApplicationRecord
  belongs_to :translator
  belongs_to :language
end
