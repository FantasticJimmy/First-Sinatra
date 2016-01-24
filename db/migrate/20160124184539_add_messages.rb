class AddMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.column :author, :string
      t.column :content, :text
      t.column :url, :string

      t.timestamps null: false
    end
  end
end
