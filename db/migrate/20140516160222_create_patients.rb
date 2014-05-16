class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string  :name
      t.string  :first_name
      t.string  :gender
      t.string  :birthday
      t.integer :age
      t.string  :street
      t.string  :zip_code
      t.string  :city
      t.string  :phone
      t.string  :cell_phone
      t.string  :naa

      t.timestamps
    end
  end
end
