class RenameTypeToVideoTypeInVideos < ActiveRecord::Migration[6.0]
  def change
    rename_column :videos, :type, :video_type
  end
end
