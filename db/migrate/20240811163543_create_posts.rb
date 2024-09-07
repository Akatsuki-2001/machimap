class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
