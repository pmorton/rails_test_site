class CreateStuff < ActiveRecord::Migration
  def up
    create_table :stuff do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
