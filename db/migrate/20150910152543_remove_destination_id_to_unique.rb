class RemoveDestinationIdToUnique < ActiveRecord::Migration
  def change

    remove_index :employees, :designation_id
    add_index :employees, :designation_id

  end
end
