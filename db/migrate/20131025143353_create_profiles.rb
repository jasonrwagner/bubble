class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.text :likes
      t.text :about_me

      t.timestamps
    end
  end
end
