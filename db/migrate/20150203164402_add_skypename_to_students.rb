class AddSkypenameToStudents < ActiveRecord::Migration
  def change
    add_column :students, :skypename, :string
  end
end
