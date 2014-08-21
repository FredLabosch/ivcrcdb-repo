module PatientsHelper
  def get_age_from_date(dob)
    return "" if dob.nil?
    now = Time.now.utc.to_date
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  rescue NoMethodError
    "Keine Angabe"
  end
end
