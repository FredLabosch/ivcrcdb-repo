class CreateAllergies2Examinations < ActiveRecord::Migration
  def change
    create_table :allergies2examinations do |t|
      t.references :examination
      t.references :allergies
    end
  end
end
