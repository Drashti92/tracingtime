class AddStatusToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :status, :integer, defauls: 0
  end
end
