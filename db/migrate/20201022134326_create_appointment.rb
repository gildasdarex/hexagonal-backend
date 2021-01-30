class CreateAppointment < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.belongs_to :user
      t.belongs_to :meeting
      t.datetime :start_time
      t.datetime :end_time
      t.timestamps
    end
  end
end
