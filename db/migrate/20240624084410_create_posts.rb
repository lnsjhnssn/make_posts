class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :message
      t.string :link
      t.timestamps
    end
  end
end
