class CreateManns < ActiveRecord::Migration
  def change
    create_table :manns do |t|
      t.string :vorname
      t.string :nachname
      t.text :beschreibung
      t.integer :anzahl

      t.timestamps null: false
    end
  end
end
