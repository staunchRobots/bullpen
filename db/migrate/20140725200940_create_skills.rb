class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.integer :percentage
      t.references :cv, index: true

      t.timestamps
    end
  end
end
