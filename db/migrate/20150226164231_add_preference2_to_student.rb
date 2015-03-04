class AddPreference2ToStudent < ActiveRecord::Migration
  def change
    add_column :students, :preference2, :text
  end
end
