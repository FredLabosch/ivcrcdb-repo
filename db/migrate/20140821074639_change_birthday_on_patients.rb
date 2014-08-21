class ChangeBirthdayOnPatients < ActiveRecord::Migration
  def change
    change_column :patients, :birthday, :date
  end
end
