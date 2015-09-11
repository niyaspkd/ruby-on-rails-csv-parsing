class SetDesignationIdToUnique < ActiveRecord::Migration
  def change
    remove_index :employees, :designation_id
    add_index :employees, :designation_id , unique:true
  end
end
