class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :type
      t.text :description
      t.string :subject
      t.string :status
      t.string :created_by
      t.string :assignee
      t.timestamps
    end
  end
end
