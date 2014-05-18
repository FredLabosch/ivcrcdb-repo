class CreateGeneralInfos < ActiveRecord::Migration
  def change
    create_table :general_infos do |t|

      t.timestamps
    end
  end
end
