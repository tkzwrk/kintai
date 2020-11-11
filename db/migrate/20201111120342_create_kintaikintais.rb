class CreateKintaikintais < ActiveRecord::Migration[6.0]
  def change
    create_table :kintaikintais do |t|
      t.datetime :sdate,null: false
      t.datetime :tdate,null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
