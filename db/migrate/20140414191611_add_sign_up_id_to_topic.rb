class AddSignUpIdToTopic < ActiveRecord::Migration
  def change
    add_column :topics, :sign_up_id, :integer
  end
end
