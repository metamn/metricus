class HoboMigration1 < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string   :name
      t.text     :description
      t.string   :status
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :campaign_id
    end
    add_index :tasks, [:campaign_id]

    create_table :campaigns do |t|
      t.string   :name
      t.text     :description
      t.string   :status
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :project_id
    end
    add_index :campaigns, [:project_id]

    create_table :projects do |t|
      t.string   :name
      t.text     :description
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :task_assignments do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :user_id
      t.integer  :task_id
    end
    add_index :task_assignments, [:user_id]
    add_index :task_assignments, [:task_id]
  end

  def self.down
    drop_table :tasks
    drop_table :campaigns
    drop_table :projects
    drop_table :task_assignments
  end
end
