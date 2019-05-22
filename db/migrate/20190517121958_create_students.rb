class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :roll_no
      t.string :klass
      t.date :adm_date

      t.timestamps
    end
  end
end
