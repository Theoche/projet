class CreatePosts < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
