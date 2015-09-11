class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :badge_id
      t.references :designation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
