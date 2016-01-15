class AddFieldsToAuthor < ActiveRecord::Migration
  def change
    add_column :authors, :hallo, :string
  end
end
