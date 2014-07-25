class CreateOpenSources < ActiveRecord::Migration
  def change
    create_table :open_sources do |t|
      t.references :cv, index: true

      t.timestamps
    end
  end
end
