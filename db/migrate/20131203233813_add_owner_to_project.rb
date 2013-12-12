class AddOwnerToProject < ActiveRecord::Migration
  def change
    add_column :projects, :owner, :integer
  end
end
