class Allergy < ActiveRecord::Base

  has_many :allergy2examinations, :class_name => "Allergy2Examination"
  has_many :examinations, :through => :allergy2examinations

  validates_presence_of :name, :message => "STOOP halt"

end