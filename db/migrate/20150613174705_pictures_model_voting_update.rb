class PicturesModelVotingUpdate < ActiveRecord::Migration
  def change

    add_column :pictures, :upvote, :integer
    add_column :pictures, :downvote, :integer
    add_column :pictures, :voted, :boolean, default: true
    add_column :pictures, :title, :string

  end
end
