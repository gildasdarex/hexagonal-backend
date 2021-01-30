class AddTrackableFieldsToTranslator < ActiveRecord::Migration[5.2]
  def up
    change_table :translators do |t|
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.inet     :current_sign_in_ip
      t.inet     :last_sign_in_ip
    end
  end

  def down
    remove_column :translators, :sign_in_count, :integer
    remove_column :translators, :current_sign_in_at, :datetime
    remove_column :translators, :last_sign_in_at, :datetime
    remove_column :translators, :current_sign_in_ip, :inet
    remove_column :translators, :last_sign_in_ip, :inet
  end
end
