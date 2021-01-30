class AddLanguageRefToAppointments < ActiveRecord::Migration[5.2]
  def up
    add_reference :appointments, :languages, foreign_key: true
  end

  def down
    remove_reference :appointments, :languages, foreign_key: true
  end
end
