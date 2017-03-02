class Place < ApplicationRecord
	belongs_to :user
	has_many :comments
	has_many :photos
	geocoded_by :address
	after_validation :geocode
	validates :address, :description, presence: true
	validates :name, length: { minimum: 4, too_short: "too short minimum is %{count} characters" }
	
end

	