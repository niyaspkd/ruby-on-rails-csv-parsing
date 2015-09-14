class AddDestinationNameToUnique < ActiveRecord::Migration
  def change


    add_index :designations, :name, unique:true
  end
end
