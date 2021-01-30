class RenameLinkFieldInMeeting < ActiveRecord::Migration[5.2]
  def up
    rename_column :meetings, :link, :link_uuid
  end

  def down
    rename_column :meetings, :link_uuid, :link
  end
end
