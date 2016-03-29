class CreateJoinTableUserMicropost < ActiveRecord::Migration
  def change
    create_join_table :users, :microposts do |t|
      t.index [:user_id, :micropost_id]
      # t.index [:micropost_id, :user_id]
    end
  end
end
