class Venue < ApplicationRecord
  has_many:seminar, through: :seminars_venues
  has_many:seminars_venues
  has_many:schedules
end
