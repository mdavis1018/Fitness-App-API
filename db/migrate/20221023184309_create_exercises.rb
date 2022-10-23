class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.text :description
      t.string :name
      t.integer :exercise_category_id
      t.string :image_url

      t.timestamps
    end
  end
end
