class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :state
      t.string :name
    end
  end
end
