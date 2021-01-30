class AddAuthenticationTokenToTranslators < ActiveRecord::Migration[5.2]
  def change
    add_column :translators, :authentication_token, :string, limit: 30
    add_index :translators, :authentication_token, unique: true
  end
end
