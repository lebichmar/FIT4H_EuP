class CreateKundes < ActiveRecord::Migration
  def change
    create_table :kundes do |t|
      t.string :vorname
      t.string :nachname
      t.text :beschreibung
      t.decimal :anzahl

      t.timestamps null: false
    end
  end
end
