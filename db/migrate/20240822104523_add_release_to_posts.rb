class AddReleaseToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :release, :integer
  end
end
