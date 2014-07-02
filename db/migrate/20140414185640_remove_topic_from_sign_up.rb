class RemoveTopicFromSignUp < ActiveRecord::Migration
  def change
    remove_column :sign_ups, :topic, :string
  end
end
