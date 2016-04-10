//Number of Johns
//This query retreives a count of all candidates with the name John

MATCH 
	(n:Candidate) 
WHERE
	n.name
CONTAINS
	"John" 
RETURN
	count(n)
