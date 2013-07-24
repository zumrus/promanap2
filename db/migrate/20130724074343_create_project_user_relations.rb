class CreateProjectUserRelations < ActiveRecord::Migration
  def change
    create_table :project_user_relations do |t|
    	t.boolean :role
    	t.integer :project_id
      t.integer :user_id

      t.timestamps
    end
  end
end
