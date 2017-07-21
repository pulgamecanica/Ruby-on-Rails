class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.belongs_to :user, index: true
      t.belongs_to :deck, index: true
      t.timestamps
    end
  end
end
