class CreateKods < ActiveRecord::Migration
  def change
    create_table :kods do |t|
      t.integer :next, default: 0

      t.timestamps
    end
    
    Kod.create
    
  end
end
