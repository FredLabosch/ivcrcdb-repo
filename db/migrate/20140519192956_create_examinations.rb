class CreateExaminations < ActiveRecord::Migration
  def change
    create_table :examinations do |t|
      t.date :examination_date, :date
      t.string :examiner, :string
      t.integer :age_at_examination, :integer
      t.string :profession, :string
      t.boolean :external_data, :boolean
      t.boolean :usable_data, :boolean
      t.string :comment_patient, :string
      t.string :comment_examiner, :string
      t.string :short_description, :string

      # this line adds an integer column called `patient_id`.
      t.references :patient, index: true

      t.timestamps
    end
  end
end
