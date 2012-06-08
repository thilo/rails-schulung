class AddDeviseToUsers < ActiveRecord::Migration
  def self.up
    change_table(:users) do |t|
      ## Database authenticatable
      t.string :encrypted_password, :null => false, :default => ""

    end
  end

  def self.down
    remove_column :user, :encrypted_password
    remove_index :user, :email
  end
end