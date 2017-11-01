class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :time
      t.string :title
      t.string :kind

      t.timestamps null: false
    end
  end
end
