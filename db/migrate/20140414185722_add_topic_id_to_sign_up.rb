class AddTopicIdToSignUp < ActiveRecord::Migration
  def change
    add_column :sign_ups, :topic_id, :string
  end
end
