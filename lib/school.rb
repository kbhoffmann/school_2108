class School
  attr_reader :start_time,
              :hours_in_school_day,
              :student_names
  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    (@start_time.to_i + @hours_in_school_day).to_s + ":00"
  end

  def is_full_time?
    true
  end

  def standard_student_names
    names_capitalized = []

    @student_names.each do |name|
      name.capitalize
    names_capitalized << name.capitalize
    end
    return names_capitalized
  end

  def convert_end_time_to_clock_time
    if end_time != '12:00'
      (end_time.to_i - 12).to_s + ":00"
    else
      end_time
    end 
  end
end
