class Patient < ActiveRecord::Base
  default_scope -> { order('updated_at DESC') }

  has_many :examinations, dependent: :destroy

  class << self

    def export(ids)


    end

  end

end
