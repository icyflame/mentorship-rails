class AddCurrentYearToStudent < ActiveRecord::Migration
  def change
    add_column :students, :current_year, :text
  end
end
