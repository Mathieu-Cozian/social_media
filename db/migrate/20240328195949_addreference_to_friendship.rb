class AddreferenceToFriendship < ActiveRecord::Migration[7.0]
  def change
    add_reference :friendships, :asker, null: false, foreign_key: { to_table: :users }
    add_reference :friendships, :asked, null: false, foreign_key: { to_table: :users }
  end
end
