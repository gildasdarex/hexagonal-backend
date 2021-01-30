class AddDomainFieldToEnterprise < ActiveRecord::Migration[5.2]
  def up
    change_table :enterprises do |t|
      t.string  :domain, :default => nil
    end
  end

  def down
    remove_column :enterprises, :domain, :string
  end
end
