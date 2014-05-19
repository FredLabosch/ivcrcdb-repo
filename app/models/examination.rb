class Examination < ActiveRecord::Base
  has_many :general_infos, dependent: :destroy
end
