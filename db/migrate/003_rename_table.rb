class RenameTable < ActiveRecord::Migration[5.0]
  def change
    rename_table :studentclasses, :school_classes
  end
end
