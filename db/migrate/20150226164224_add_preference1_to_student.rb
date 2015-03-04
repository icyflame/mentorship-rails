class AddPreference1ToStudent < ActiveRecord::Migration
  def change
    add_column :students, :preference1, :text
  end
end
