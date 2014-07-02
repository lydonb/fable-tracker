class RemoveSignUpIdFromTopic < ActiveRecord::Migration
  def change
    remove_column :topics, :sign_up_id, :string
  end
end
