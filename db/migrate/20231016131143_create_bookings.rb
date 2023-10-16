class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.boolean :status
      t.references :organizer, null: false, foreign_key: { to_table: :users }
      t.references :participant, null: false, foreign_key: {to_table: :users}
      t.references :activity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
