class CreateEnterprise < ActiveRecord::Migration[5.2]
  def change
    create_table :enterprises do |t|
      t.string :name
      t.timestamps
    end
  end
end
