class CreatePolls < ActiveRecord::Migration[5.1]
  def change
    create_table :polls do |t|
      t.references :presentation, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
