class AddMoreFieldsToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :website, :text
    add_column :movies, :pledging_ends_on, :datetime
  end
end
