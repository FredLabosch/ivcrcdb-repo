class AddDetailsToGeneralInfo < ActiveRecord::Migration
  def change
    add_column :general_infos, :examination_id, :integer
    add_column :general_infos, :examination_date, :date
    add_column :general_infos, :profession, :string
    add_column :general_infos, :age_at_examination, :integer
    add_column :general_infos, :examiner, :string
    add_column :general_infos, :external_data, :boolean
    add_column :general_infos, :usable_data, :boolean
    add_column :general_infos, :comments_patient, :string
    add_column :general_infos, :comments_examiner, :string
  end
end
