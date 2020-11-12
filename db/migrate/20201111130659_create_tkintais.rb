class CreateTkintais < ActiveRecord::Migration[6.0]
  def change
    create_table :tkintais do |t|
      t.datetime :tdate,null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
