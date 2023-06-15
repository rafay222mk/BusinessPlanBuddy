class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :type
      t.boolean :is_delete

      t.timestamps
    end
  end
end
