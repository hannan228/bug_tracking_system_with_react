class CreateBugs < ActiveRecord::Migration[6.1]
  def change
    create_table :bugs do |t|
      
      t.string :title,         null: false
      t.text :description,     null: true
      t.string :screenshot,    null: true

      t.integer :bug_type
      t.integer :bug_status,     null: true       
      t.integer :feature_status, null: true

      t.datetime :deadline
      t.datetime :created_at
      t.datetime :updated_at

    end
  end
end
