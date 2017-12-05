class CreatePresentations < ActiveRecord::Migration[5.1]
  def change
    create_table :presentations do |t|
      t.references :user_id, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
