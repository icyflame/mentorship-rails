class AddPreference3ToStudent < ActiveRecord::Migration
  def change
    add_column :students, :preference3, :text
  end
end
