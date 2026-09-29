class CreateFrameworks < ActiveRecord::Migration[8.1]
  def change
    create_table :frameworks do |t|
      t.string :name
      t.string :runtime

      t.timestamps
    end
  end
end
