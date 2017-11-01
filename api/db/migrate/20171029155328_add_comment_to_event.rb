class AddCommentToEvent < ActiveRecord::Migration
  def change
    add_column :events, :user_id, :integer
    add_column :events, :event_id, :integer
  end
end
