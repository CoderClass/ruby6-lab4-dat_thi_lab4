class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.references :room, foreign_key: true
      t.text :content
      t.string :username

      t.timestamps
    end
  end
end
