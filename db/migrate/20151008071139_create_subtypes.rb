class CreateSubtypes < ActiveRecord::Migration
  def change
    create_table :subtypes do |t|
      t.belongs_to :type ,index:true
      t.string :subtype
      t.integer :typeid
    end
  end
end
