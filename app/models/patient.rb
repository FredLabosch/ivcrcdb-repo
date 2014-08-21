class Patient < ActiveRecord::Base
  default_scope -> { order('updated_at DESC') }

  has_many :examinations, dependent: :destroy

  after_save :determine_age

  class << self

    def export(ids)


    end

  end

  private

  def determine_age
    return if self.birtday.nil? || self.birthday == ""
    now = Time.now.utc.to_date
    age = now.year - self.birtday.year - ((now.month > self.birtday.month || (now.month == self.birtday.month && now.day >= self.birtday.day)) ? 0 : 1)
    self.age = age
  rescue Exception
    nil
  end


end
