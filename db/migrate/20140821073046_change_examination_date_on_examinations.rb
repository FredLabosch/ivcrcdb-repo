class ChangeExaminationDateOnExaminations < ActiveRecord::Migration
  def change
    change_column :examinations, :examination_date, :datetime
  end
end
