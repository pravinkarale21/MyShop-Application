class AddAvatarToMaterials < ActiveRecord::Migration
  def change
    add_column :materials, :avatar, :string
  end
end
