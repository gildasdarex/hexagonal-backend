class CreateTranslation < ActiveRecord::Migration[5.2]
  def change
    create_table :translations do |t|
        t.belongs_to :translator
        t.belongs_to :language
        t.integer :evaluation_note
        t.timestamps
    end
  end
end
