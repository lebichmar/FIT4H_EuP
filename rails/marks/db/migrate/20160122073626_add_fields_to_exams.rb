class AddFieldsToExams < ActiveRecord::Migration
  def change
    add_column :exams, :title, :string
  end
end
