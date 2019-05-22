class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.integer :student_id
      t.string :sub_name
      t.integer :obt_marks
      t.integer :total_marks

      t.timestamps
    end
  end
end
