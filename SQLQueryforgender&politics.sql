SELECT *
FROM dbo.GenderandPolitics;

SELECT Position
FROM dbo.GenderandPolitics
WHERE Gender = 'Female';

UPDATE dbo.GenderandPolitics
SET Position = REPLACE(position, 'Commissioner of ', 'Commissioner')
WHERE Position LIKE 'Commissioner of %';

UPDATE dbo.GenderandPolitics
SET Position = 'Commissioner'
WHERE Position LIKE 'Commissioner%';

SELECT *
FROM dbo.GenderandPolitics;

UPDATE dbo.GenderandPolitics
SET Position = 'Special Adviser'
WHERE Position LIKE 'Special Adviser%%';

UPDATE dbo.GenderandPolitics
SET Position = 'Commissioner'
WHERE Position LIKE 'Comissioner';

WITH CTE AS (
    SELECT 
        ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS RowNum,
        *
    FROM dbo.GenderandPolitics
)
UPDATE CTE
SET Position = 'Commissioner'
WHERE RowNum BETWEEN 152 AND 176;

SELECT Gender, State
FROM dbo.GenderandPolitics

SELECT State,
COUNT(*) AS female_count
FROM dbo.GenderandPolitics
WHERE Gender = 'Female'
GROUP BY State;

SELECT Position,
COUNT(*) AS female_count
FROM dbo.GenderandPolitics
WHERE Gender = 'Female'
GROUP BY Position;

SELECT DISTINCT Position
FROM dbo.GenderandPolitics;

UPDATE dbo.GenderandPolitics
SET Position = CASE
    WHEN position NOT IN ('Chairman', 'Commissioner', 'Senator', 'House of Representatives', 'Governor', 'Deputy Governor') 
	THEN 'Other High Ranking Officials'
    ELSE Position
END;

SELECT Position, State, 
COUNT(*) AS female_count
FROM dbo.GenderandPolitics
WHERE Gender = 'Female'
GROUP BY Position, State;

SELECT Gender, Position, State
FROM dbo.GenderandPolitics
Where Gender = 'Female'
GROUP BY Gender, Position, State;


ALTER TABLE dbo.GenderandPolitics
DROP COLUMN Party;

SELECT *
FROM dbo.GenderandPolitics

SELECT * 
FROM dbo.GenderandPolitics
WHERE [Literacy Rate] IS NOT NULL
ORDER BY [Literacy Rate] DESC;

SELECT State,
COUNT(*) AS FemaleCount
FROM dbo.GenderandPolitics
WHERE Gender = 'Female'
GROUP BY State
ORDER BY FemaleCount DESC;

SELECT Position,
COUNT (*) FemaleCount
FROM dbo.GenderandPolitics
WHERE GENDER = 'Female'
GROUP BY Position
ORDER BY FemaleCount DESC;

SELECT 
    Gender, 
    COUNT(*) AS count
FROM 
    dbo.GenderandPolitics
GROUP BY 
    Gender;


