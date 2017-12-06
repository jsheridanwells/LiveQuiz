class CreatePresentations < ActiveRecord::Migration[5.1]
  def change
    create_table :presentations do |t|
      t.string :user_id
      t.string :title

      t.timestamps
    end
  end
end
