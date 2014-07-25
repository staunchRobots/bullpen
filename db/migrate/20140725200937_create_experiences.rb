class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :name
      t.integer :years
      t.references :cv, index: true

      t.timestamps
    end
  end
end
