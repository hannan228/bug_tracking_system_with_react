class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title,         null: false
      t.text :description

      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
