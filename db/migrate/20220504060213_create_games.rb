class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string:title
      t.string:body
      t.string:intro

      t.timestamps
    end
  end
end
