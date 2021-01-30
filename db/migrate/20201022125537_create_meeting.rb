class CreateMeeting < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.string :name
      t.string :description
      t.string :link
      t.json :config
      t.timestamps
    end
  end
end
