class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :full_name
      t.string :title
      t.integer :age
      t.text :bio

      t.timestamps
    end
  end
end
