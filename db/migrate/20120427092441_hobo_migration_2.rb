class HoboMigration2 < ActiveRecord::Migration
  def self.up
    create_table :documents do |t|
      t.string   :title
      t.string   :url
      t.text     :description
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :project_id
      t.integer  :campaign_id
      t.integer  :task_id
    end
    add_index :documents, [:project_id]
    add_index :documents, [:campaign_id]
    add_index :documents, [:task_id]
  end

  def self.down
    drop_table :documents
  end
end
