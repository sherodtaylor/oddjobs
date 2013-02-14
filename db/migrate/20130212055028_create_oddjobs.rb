class CreateOddjobs < ActiveRecord::Migration
  def change
    create_table :oddjobs do |t|
      t.string :job
      t.string :company
      t.text :description
      t.date :date_posted

      t.timestamps
    end
  end
end
