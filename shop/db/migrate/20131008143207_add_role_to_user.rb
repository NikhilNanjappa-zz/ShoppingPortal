class AddRoleToUser < ActiveRecord::Migration
  def change
  	add_column :Users, :role, :string, :default => "user"
  end
end
