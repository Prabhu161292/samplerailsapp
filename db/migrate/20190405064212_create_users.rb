class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :push_sub

      t.timestamps
    end
  end
end
