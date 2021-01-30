class AddTranslatorRefToAppointments < ActiveRecord::Migration[5.2]
  def up
    add_reference :appointments, :translators, foreign_key: true
  end

  def down
    remove_reference :appointments, :translators, foreign_key: true
  end
end
