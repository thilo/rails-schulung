class AllowOneBookingPerDayForReservation < ActiveRecord::Migration
  def change
    add_index :reservations, [:date, :beam_target_id], :unique => true
  end
end