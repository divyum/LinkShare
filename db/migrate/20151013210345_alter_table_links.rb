class AlterTableLinks < ActiveRecord::Migration
  def change
    change_column :links, :link_type, :string, default: "public"
  end
end
