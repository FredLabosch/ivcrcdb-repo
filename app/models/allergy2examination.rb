class Allergy2Examination < ActiveRecord::Base

  belongs_to :allergy
  belongs_to :examination

end