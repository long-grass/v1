# class CreateEvents < ActiveRecord::Migration[5.1]
  
#   def change
#     create_table :events do |t|
#       t.string :title
#       t.string :location
#       t.datetime :start_time
#       t.datetime :end_time
#       t.integer :host_id

#       t.timestamps null: false
#     end
#   end
# end

class CreateEvents < ActiveRecord::Migration[5.1]
  #   def change
#     create_table :events do |t|
#       t.string :title
#       t.string :location
#       t.datetime :start_time
#       t.datetime :end_time
#       t.integer :host_id

#       t.timestamps null: false
#     end
#   end
  def change
    create_table :events do |t|
      t.string :title
      t.string :start_time
      t.string :location
      t.integer :host_id

      t.timestamps
    end
  end
end

