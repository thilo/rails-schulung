class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.belongs_to :beam_target, null: false
      t.belongs_to :user, null: false
      t.date :date, null: false
      t.timestamps
    end
  end
end
