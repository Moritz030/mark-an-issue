class CreateIssuesTable < ActiveRecord::Migration[7.1]
  def change
    create_table :issues, id: :uuid do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.jsonb :location, null: false, default: {}

      t.timestamps
    end
  end
end
