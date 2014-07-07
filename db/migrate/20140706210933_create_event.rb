class CreateEvent < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date
      t.string :title
      t.text :description
    end
  end
end
