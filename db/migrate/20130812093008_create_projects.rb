class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :code
      t.string :name
      t.string :version
      t.timestamps :estimatedTime
      t.string :owner
      t.timestamps
    end
  end
end
