class CreateFacts < ActiveRecord::Migration[7.0]
  def change
    create_table :facts do |t|
      t.string :character
      t.string :droid
      t.string :planet
      t.string :quote

      t.timestamps
    end
  end
end
