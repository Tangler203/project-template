
//Count of non-major party Candidates
//This query retreives the number of Candidates that do not belong to the 4 major parties: Fine Gael, Fianna Fail, Sinn Fein and Labour

Match 
	(n:Candidate)
WHERE 
	n.party <> "Fine Gael" 
AND
	n.party <> "Fianna Fail" 
AND 
	n.party <> "Sinn Fein"
ANd
	n.party <> "Labour"
RETURN
	count(n)
