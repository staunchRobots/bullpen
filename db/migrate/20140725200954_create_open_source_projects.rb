class CreateOpenSourceProjects < ActiveRecord::Migration
  def change
    create_table :open_source_projects do |t|
      t.string :url
      t.references :open_source, index: true

      t.timestamps
    end
  end
end
