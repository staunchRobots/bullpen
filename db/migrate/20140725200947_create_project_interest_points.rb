class CreateProjectInterestPoints < ActiveRecord::Migration
  def change
    create_table :project_interest_points do |t|
      t.string :content
      t.references :project, index: true

      t.timestamps
    end
  end
end
