class CreateMemos < ActiveRecord::Migration[6.1]
  def change
    create_table :memos do |t|
      t.string :name
      t.string :url
      t.text :memo

      t.timestamps
    end
  end
end
