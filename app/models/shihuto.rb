class Shihuto < ApplicationRecord
  with_options presence: true do
    validates :year1
    validates :year2
    validates :year3
    validates :year4
    validates :year5
    validates :year6
    validates :year7
    validates :month1
    validates :month2
    validates :month3
    validates :month4
    validates :month5
    validates :month6
    validates :month7
    validates :day1
    validates :day2
    validates :day3
    validates :day4
    validates :day5
    validates :day6
    validates :day7
    validates :note1
    validates :note2
    validates :note3
    validates :note4
    validates :note5
    validates :note6
    validates :note7

  end
end
