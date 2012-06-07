class BeamTarget < ActiveRecord::Base
  attr_accessible :density, :volume
  has_many :reservations
end
