class AddAttachmentImageNameToMaterials < ActiveRecord::Migration
  def self.up
    change_table :materials do |t|
      t.attachment :image_name
    end
  end

  def self.down
    remove_attachment :materials, :image_name
  end
end
