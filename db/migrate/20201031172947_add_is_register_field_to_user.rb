class AddIsRegisterFieldToUser < ActiveRecord::Migration[5.2]
  def up
    change_table :users do |t|
      t.boolean  :is_register, :default => true
    end
  end

  def down
    remove_column :users, :is_register, :boolean
  end
end
