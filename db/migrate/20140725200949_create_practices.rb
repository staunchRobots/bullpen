class CreatePractices < ActiveRecord::Migration
  def change
    create_table :practices do |t|
      t.string :name
      t.string :description
      t.references :cv, index: true

      t.timestamps
    end
  end
end
