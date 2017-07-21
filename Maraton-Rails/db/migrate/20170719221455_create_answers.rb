class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.belongs_to :question, index: true
      t.string :name
      t.boolean :correct

      t.timestamps
    end
  end
end
