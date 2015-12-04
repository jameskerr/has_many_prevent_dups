class CreateHusbands < ActiveRecord::Migration
  def change
    create_table :husbands do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
