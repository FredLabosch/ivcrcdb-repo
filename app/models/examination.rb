class Examination < ActiveRecord::Base
  belongs_to :patient
  has_one :general_info
end
