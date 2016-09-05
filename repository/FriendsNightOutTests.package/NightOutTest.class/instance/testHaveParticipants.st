accessing
testHaveParticipants
	"A night out have participants"
	| aNightOut |
	aNightOut:= NightOut new.
	self assert: ((aNightOut participants) isKindOf: Collection).