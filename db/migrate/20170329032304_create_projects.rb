class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
    	t.string :title
    	t.string :technologies
    	t.date :year_of_completion
    	t.references :freelancer, index: true, foreign_key: true

    	t.timestamps
    end
  end
end
