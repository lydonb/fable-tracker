class CreateFables < ActiveRecord::Migration
  def change
    create_table :fables do |t|
      t.date :date

      t.timestamps
    end
  end
end
