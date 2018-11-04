class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.date :begin_date
      t.date :end_date

      t.timestamps
    end
  end
end
