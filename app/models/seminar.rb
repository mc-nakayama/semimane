class Seminar < ApplicationRecord
  has_many:venues,through: :seminars_venues
  has_many:seminars_venues
  accepts_nested_attributes_for :venue
end
