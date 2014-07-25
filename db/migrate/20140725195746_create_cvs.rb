class CreateCvs < ActiveRecord::Migration
  def change
    create_table :cvs do |t|
      t.string :name
      t.string :profile
      t.string :title
      t.integer :stackoverflow_reputation
      t.string :blog

      t.timestamps
    end
  end
end
