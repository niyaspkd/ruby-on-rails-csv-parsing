class AddDestinationNameToUnique < ActiveRecord::Migration
  def change


    add_index :designations, :designation, unique:true
  end
end
