class CreateDesignations < ActiveRecord::Migration

  def change
    create_table :designations do |t|
      t.string :designation

      t.timestamps null: false
    end
  end
end
