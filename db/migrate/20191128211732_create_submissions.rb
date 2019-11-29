class CreateSubmissions < ActiveRecord::Migration[5.2]
  def change
    create_table :submissions do |t|
      t.string :message
      t.integer :user_id

      t.timestamps
    end
  end
end
