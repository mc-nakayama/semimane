class SeminarsVenue < ApplicationRecord
  belongs_to:seminar
  belongs_to:venue
end
