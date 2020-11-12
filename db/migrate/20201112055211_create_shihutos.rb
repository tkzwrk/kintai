class CreateShihutos < ActiveRecord::Migration[6.0]
  def change
    create_table :shihutos do |t|
      t.string :year1,null: false
      t.string :month1,null: false
      t.string :day1,null: false
      t.text :note1,null: false
      t.string :year2,null: false
      t.string :month2,null: false
      t.string :day2,null: false
      t.text :note2,null: false
      t.string :year3,null: false
      t.string :month3,null: false
      t.string :day3,null: false
      t.text :note3,null: false
      t.string :year4,null: false
      t.string :month4,null: false
      t.string :day4,null: false
      t.text :note4,null: false
      t.string :year5,null: false
      t.string :month5,null: false
      t.string :day5,null: false
      t.text :note5,null: false
      t.string :year6,null: false
      t.string :month6,null: false
      t.string :day6,null: false
      t.text :note6,null: false
      t.string :year7,null: false
      t.string :month7,null: false
      t.string :day7,null: false
      t.text :note7,null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
