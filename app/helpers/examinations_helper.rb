module ExaminationsHelper
  def get_current_date_as_string
    currentDate = Time.now
    currentDate.strftime("%d.%m.%Y")
  rescue NoMethodError
    "Keine Angabe"
  end

  def get_current_time
    currentDate = Time.now
    currentDate.strftime("%H.%M")
  rescue NoMethodError
    "Keine Angabe"
  end

  def get_age_in_completed_years (bd, d)
    # Difference in years, less one if you have not had a birthday this year.
    a = d.year - bd.year
    a = a - 1 if (
    bd.month >  d.month or
        (bd.month >= d.month and bd.day > d.day)
    )
    a
  end
end
