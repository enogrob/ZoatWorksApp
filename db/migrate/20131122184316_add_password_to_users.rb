class AddPasswordToUsers < ActiveRecord::Migration
  def change      annotate
    add_column :users, :encrypted_password, :string
  end
end
