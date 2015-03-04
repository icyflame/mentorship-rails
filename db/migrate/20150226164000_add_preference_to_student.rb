class AddPreferenceToStudent < ActiveRecord::Migration
  def change
    add_column :students, :preference, :text
  end
end
