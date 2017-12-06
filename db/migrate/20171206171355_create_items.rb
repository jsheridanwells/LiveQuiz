class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.references :poll, foreign_key: true
      t.string :content
      t.integer :position

      t.timestamps

    end

    add_column :items, :correct, :boolean, :default => false

  end
end
