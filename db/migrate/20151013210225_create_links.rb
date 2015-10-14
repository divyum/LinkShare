class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :user_id
      t.string :link
      t.string :link_type
      t.timestamps null: false
    end
  end
end
