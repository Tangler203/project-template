//Seats for 3 seat Constituency
//This gets a count of seats for the seat constituency

MATCH
	(n:Constituency)
WHERE
	n.seats = 3
RETURN
	sum(n.seats)
