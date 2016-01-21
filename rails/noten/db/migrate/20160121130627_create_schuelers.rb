class CreateSchuelers < ActiveRecord::Migration
  def change
    create_table :schuelers do |t|
      t.string :vorname
      t.string :name
      t.datetime :geburtsdatum
      t.string :email
      t.digest :passwort

      t.timestamps null: false
    end
  end
end
