class RenameDesignationToName < ActiveRecord::Migration
  def change
    rename_column :designations, :designation , :name
  end
end
