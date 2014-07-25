class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :title
      t.string :institution
      t.references :cv, index: true

      t.timestamps
    end
  end
end
