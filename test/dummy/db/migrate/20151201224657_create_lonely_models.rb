class CreateLonelyModels < ActiveRecord::Migration
  def change
    create_table :lonely_models do |t|

      t.timestamps null: false
    end
  end
end
