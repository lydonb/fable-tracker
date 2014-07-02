class RenameTopicToDescription < ActiveRecord::Migration
  def change
    rename_column :topics, :topic, :description
  end
end
