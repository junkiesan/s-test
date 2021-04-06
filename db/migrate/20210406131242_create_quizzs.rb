class CreateQuizzs < ActiveRecord::Migration[6.0]
  def change
    create_table :quizzs do |t|
      t.string :title
      t.text :description
      t.string :difficulty

      t.timestamps
    end
  end
end
