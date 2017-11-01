class AddRelationsToEventComment < ActiveRecord::Migration
  def change
    add_column :event_comments, :user_id, :integer
    add_column :event_comments, :event_id, :integer
  end
end
