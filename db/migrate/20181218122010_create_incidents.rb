class CreateIncidents < ActiveRecord::Migration[5.2]
  def change
    create_table :incidents do |t|
      t.text :description
      t.string :types, array: true, default: []
      t.boolean :reported_anonymously
      t.jsonb :user_info, default: {} 
      t.text :involved_people
      t.text :other_observers
      t.string :datetime
      t.string :location

      t.timestamps
    end
  end
end
