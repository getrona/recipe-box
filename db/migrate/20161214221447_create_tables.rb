class CreateTables < ActiveRecord::Migration[5.0]
  def change
      create_table(:ingredients) do |i|
        i.string :name

        i.timestamps
      end

      create_table(:instructions) do |s|
        s.string :description

        s.timestamps

      end

      create_table(:recipies) do |r|
        r.string :catagory
        r.integer :rating

        r.timestamps
      end
  end
end
