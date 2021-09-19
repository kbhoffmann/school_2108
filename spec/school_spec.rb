require './lib/school'
require 'pry'

RSpec.describe School do
    it 'exists' do
      school = School.new('9:00', 7)

      expect(school).to be_an_instance_of(School)
    end

    it 'has a start time' do
      school = School.new('9:00', 7)

      expect(school.start_time).to eq('9:00')
    end

    it 'has hours in a school day' do
      school = School.new('9:00', 7)

      expect(school.hours_in_school_day).to eq(7)
    end

    it 'starts with no student names' do
      school = School.new('9:00', 7)

      expect(school.student_names).to eq([])
    end

    it 'can add student names' do
      school = School.new('9:00', 7)

      school.add_student_name('Aurora')
      school.add_student_name('tim')
      school.add_student_name('megan')

      expect(school.student_names).to eq(['Aurora', 'tim', 'megan'])
    end

    it 'can calculate end time' do
      school_1 = School.new('9:00', 7)
      school_2 = School.new('9:00', 3)

      expect(school_1.end_time).to eq('16:00')
      expect(school_2.end_time).to eq('12:00')
    end

    it 'is full time?' do
      school = School.new('9:00', 7)

      expect(school.is_full_time?).to be true
    end


    it 'can list standard_student_names' do
      school = School.new('9:00', 7)

      school.add_student_name('Aurora')
      school.add_student_name('tim')
      school.add_student_name('megan')

      expect(school.standard_student_names).to eq(["Aurora", "Tim", "Megan"])
    end

    it 'can convert end time to clock time' do
      school_1 = School.new('9:00', 7)
      school_2 = School.new('9:00', 3)

      expect(school_1.convert_end_time_to_clock_time).to eq("4:00")
      expect(school_2.convert_end_time_to_clock_time).to eq("12:00")
    end
end
