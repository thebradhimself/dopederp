class UpdatePicturesTable < ActiveRecord::Migration
  def change

    remove_column :pictures, :upvote
    remove_column :pictures, :downvote
    remove_column :pictures, :voted

    add_column :pictures, :upvote, :integer, default: 0
    add_column :pictures, :downvote, :integer, default: 0

  end
end
