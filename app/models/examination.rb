class Examination < ActiveRecord::Base
  belongs_to :patient
  has_many :allergy2examinations, :class_name => "Allergy2Examination"
  has_many :allergies, :through => :allergy2examinations

end
