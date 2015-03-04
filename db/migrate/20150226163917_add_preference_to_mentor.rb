class AddPreferenceToMentor < ActiveRecord::Migration
  def change
    add_column :mentors, :preference, :text
  end
end
