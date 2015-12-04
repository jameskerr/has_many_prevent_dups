class CreateBeanBags < ActiveRecord::Migration
  def change
    create_table :bean_bags do |t|
      t.string :color

      t.timestamps null: false
    end
  end
end
