class AddFieldsToFundraising < ActiveRecord::Migration
  def change
    add_column :fundraisings, :website, :string
    add_column :fundraisings, :pledging_ends_on, :date
  end
end
