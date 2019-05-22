class CreateSalleryHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :sallery_histories do |t|
      t.integer :teacher_id
      t.integer :amount
      t.date :date

      t.timestamps
    end
  end
end
