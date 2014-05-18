class CreateExaminations < ActiveRecord::Migration
  def change
    create_table :examinations do |t|

      t.timestamps
    end
  end
end
