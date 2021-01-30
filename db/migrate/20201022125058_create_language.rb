class CreateLanguage < ActiveRecord::Migration[5.2]
  def change
    create_table :languages do |t|
      t.string :name
      t.text :symbol
      t.timestamps
    end
  end
end
