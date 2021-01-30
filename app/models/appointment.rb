class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :meeting
  belongs_to :language
  belongs_to :translator
end
