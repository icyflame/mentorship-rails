class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :rollnum
      t.string :department
      t.integer :joinyear
      t.string :hall

      t.timestamps
    end
  end
end
