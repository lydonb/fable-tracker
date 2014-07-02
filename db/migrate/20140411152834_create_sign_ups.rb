class CreateSignUps < ActiveRecord::Migration
  def change
    create_table :sign_ups do |t|
      t.integer :fable_id
      t.integer :user_id
      t.string :topic
      t.string :beverage_request

      t.timestamps
    end
  end
end
