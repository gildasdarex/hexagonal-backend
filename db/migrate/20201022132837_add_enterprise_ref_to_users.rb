class AddEnterpriseRefToUsers < ActiveRecord::Migration[5.2]
  def up
    add_reference :users, :enterprise, foreign_key: true
  end

  def down
    remove_reference :users, :enterprise, foreign_key: true
  end
end
