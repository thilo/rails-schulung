class Reservation < ActiveRecord::Base
  attr_accessible :date, :beam_target_id
  belongs_to :user
  belongs_to :beam_target
  
  validates_presence_of :user, :beam_target, :date
  validates_uniqueness_of :date, scope: 'beam_target_id', message: 'Ist bereits gebucht'
end
