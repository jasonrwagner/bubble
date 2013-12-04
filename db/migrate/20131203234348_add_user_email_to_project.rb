class AddUserEmailToProject < ActiveRecord::Migration
  def change
    add_column :projects, :user_email, :string
  end
end
