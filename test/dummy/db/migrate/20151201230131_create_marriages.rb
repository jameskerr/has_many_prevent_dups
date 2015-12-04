class CreateMarriages < ActiveRecord::Migration
  def change
    create_table :marriages do |t|
      t.belongs_to :husband, index: true, foreign_key: true
      t.belongs_to :wife, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
