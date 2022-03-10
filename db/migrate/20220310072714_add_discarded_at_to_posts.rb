class AddDiscardedAtToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :discarded_at, :datetime, precision: 6
    add_index :posts, :discarded_at
  end
end
