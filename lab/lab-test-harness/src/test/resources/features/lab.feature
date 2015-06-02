#Example Feature
Feature: Book Artists at Venues
		Venues should not allow two bookings in the same time slot
		Venues should not allow a booking with a performance it cannot accomodate

	Scenario: Allow a Band to play a small venue
		Given a venue "The Cellar" with an occupancy of "200"
		And the venue accomodates performances by a "Band", "Comedian"
		And request for a "Band" performance of "The Clash"
		When validating the booking
		Then the booking should be confirmed
		
	Scenario: Deny an Orchestra to play a small venue
		Given a venue "The Cellar" with an occupancy of "200"
		And the venue accomodates performances by a "Band", "Comedian"
		And request for a "Orchestra" performance of "The Brooklyn Symphony Orchestra"
		When validating the booking
		Then the booking should be confirmed