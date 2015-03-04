class AddCgpaToStudents < ActiveRecord::Migration
  def change
    add_column :students, :cg, :float
  end
end
