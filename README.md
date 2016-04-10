# Irish Constituencies Neo4j Database
###### Liam Joyce, G00314054

## Introduction
This is a database containing all candidates and constituencies from the 2016 Irish General Election.

## Database
The Database is made in Neo4j using the Cypher Query Language.
There are 2 node types: "Candidate" and "Constituency".
Candidate has the labels "name" and "party".
Constituency has the labels "name" and "seats".

## Queries
Summarise your three queries here.
Then explain them one by one in the following sections.

#### Count of non-major party Candidates
This query retreives the number of Candidates that do not belong to the 4 major parties: Fine Gael, Fianna Fail, Sinn Fein and Labour
```cypher
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
```

#### Number of Johns
This query retreives a count of all candidates with the name John
```cypher
MATCH 
	(n:Candidate) 
WHERE
	n.name
CONTAINS
	"John" 
RETURN
	count(n)
```

#### Seats for 3 seat Constituency
This gets a count of seats for the seat constituency
```cypher
MATCH
	(n:Constituency)
WHERE
	n.seats = 3
RETURN
	sum(n.seats)
```

## References
1. [Neo4J website](http://neo4j.com/), the website of the Neo4j database.
2. [Website](https://adriankavanaghelections.org/2014/10/22/officially-declared-candidates-for-the-20152016-general-election/) where I got my candidates
3.[TutorialsPoint](http://www.tutorialspoint.com//neo4j/index.htm), I got tutorials from this website
