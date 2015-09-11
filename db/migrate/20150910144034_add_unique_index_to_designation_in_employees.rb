class AddUniqueIndexToDesignationInEmployees < ActiveRecord::Migration
  def change
    remove_index :employees, :badge_id
    remove_index :employees, :designation_id

    add_index :employees, :designation_id, unique: true
    add_index :employees, :badge_id
  end
end
