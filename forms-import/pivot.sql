-- ==========================
-- Prepare Columns for pivot (once for given forms), then can be reused in the pivot queries
-- =======================

DECLARE @cols AS NVARCHAR(MAX), @max_cols AS NVARCHAR(MAX), @query AS NVARCHAR(MAX)
DECLARE @Options TABLE (Code nvarchar(100))

INSERT INTO @Options
SELECT DISTINCT Q.Code +
  CASE Q.QuestionType
    WHEN 0 THEN '-' + Opt.Text
    WHEN 1 THEN ''
    WHEN 2 THEN ''
  END AS Code
  FROM OptionsToQuestions oQ
    INNER JOIN Options Opt ON oQ.IdOption = Opt.Id
    INNER JOIN Questions Q ON oQ.IdQuestion = Q.Id
  ORDER BY Code

select @cols = STUFF((SELECT ', ' + QUOTENAME(Code)
                    from @Options
            FOR XML PATH(''), TYPE
            ).value('.', 'NVARCHAR(MAX)')
        ,1 ,1 ,'');

select @cols;

 select @max_cols = STUFF((SELECT ', MAX(' + QUOTENAME(Code) + ') AS ' + QUOTENAME(Code)
                     from @Options
             FOR XML PATH(''), TYPE
             ).value('.', 'NVARCHAR(MAX)')
         ,1 ,1 ,'');

 select @max_cols;


--Prepare the PIVOT query using the dynamic
SET @query =
  N'SELECT IdObserver, Teryt, PollingStationNumber, ' + @max_cols + ' \n FROM ' +
  '(SELECT IdObserver, Teryt, PollingStationNumber, ' + @cols + '
    \nFROM #Answers
    \nPIVOT(MAX(Text) FOR Code IN (' + @cols + ')) AS PVTTable) as pivoted GROUP BY IdObserver, Teryt, PollingStationNumber;'

-- ) AS p GROUP BY IdObserver, Teryt, PollingStationNumber

--Execute the Dynamic Pivot Query

SELECT @query;


-- ==========================
-- Prepare Answers (each time when you need results) - pivoted view each team/observer - one observation for one polling station including all possible forms
-- =======================

DROP TABLE IF EXISTS ##Answers;

-- Declare @Answers TABLE (
CREATE TABLE ##Answers (
  IdObserver int,
  Name nvarchar(200),
  TeamId int,
  Gmina nvarchar(100),
  GminaNazwa NVARCHAR(100),
  PollingStationNumber int,
  Code nvarchar(max),
  FormCode nvarchar(2),
  Value nvarchar(1000)
);


DELETE FROM ##Answers;

INSERT INTO ##Answers
SELECT IdObserver, Observers.Name, TeamId, CountyCode AS Gmina, Counties.Name AS GminaNazwa, PollingStationNumber,
            Questions.Code +
            CASE Questions.QuestionType
              WHEN 0 THEN '-' + Options.Text
              WHEN 1 THEN ''
              WHEN 2 THEN ''
            END AS Code, Questions.FormCode,
            CASE QuestionType
              WHEN 1 THEN Options.Text
              ELSE ISNULL(REPLACE(REPLACE(Value, CHAR(13), ' '), CHAR(10), ''), Options.Text)
            END AS Value
    FROM Answers
      INNER JOIN Observers ON Answers.IdObserver = Observers.Id
      INNER JOIN OptionsToQuestions ON Answers.IdOptionToQuestion = OptionsToQuestions.Id
      INNER JOIN Options ON OptionsToQuestions.IdOption = Options.Id
      INNER JOIN PollingStations ON Answers.IdPollingStation = PollingStations.Id
      INNER JOIN Counties ON PollingStations.IdCounty = Counties.Id
      INNER JOIN Questions ON OptionsToQuestions.IdQuestion = Questions.Id;


SELECT TeamId, Gmina, GminaNazwa, PowiatCode AS Powiat, Powiat.Name AS PowiatNazwa,  PollingStationNumber,  MAX([A.01]) AS [A.01], MAX([A.01.1]) AS [A.01.1], MAX([A.02]) AS [A.02], MAX([A.03]) AS [A.03], MAX([A.04]) AS [A.04], MAX([A.05]) AS [A.05], MAX([A.06-inne]) AS [A.06-inne], MAX([A.06-naklejka foliowa]) AS [A.06-naklejka foliowa], MAX([A.06-opaska samozaciskowa]) AS [A.06-opaska samozaciskowa], MAX([A.06-opieczetowany i podpisany pasek papieru]) AS [A.06-opieczetowany i podpisany pasek papieru], MAX([A.07]) AS [A.07], MAX([A.08]) AS [A.08], MAX([A.08.1]) AS [A.08.1], MAX([A.09]) AS [A.09], MAX([A.10]) AS [A.10], MAX([A.10.1]) AS [A.10.1], MAX([A.11]) AS [A.11], MAX([A.12]) AS [A.12], MAX([A.13]) AS [A.13], MAX([A.13.1]) AS [A.13.1], MAX([A.14]) AS [A.14], MAX([A.15]) AS [A.15], MAX([A.16]) AS [A.16], MAX([A.16.1]) AS [A.16.1], MAX([A.16.2]) AS [A.16.2], MAX([A.17]) AS [A.17], MAX([A.17.1]) AS [A.17.1], MAX([A.18]) AS [A.18], MAX([A.19]) AS [A.19], MAX([A.A]) AS [A.A], MAX([A.B]) AS [A.B], MAX([A.C]) AS [A.C], MAX([B.00]) AS [B.00], MAX([B.01]) AS [B.01], MAX([B.02]) AS [B.02], MAX([B.03]) AS [B.03], MAX([B.03.1]) AS [B.03.1], MAX([B.04]) AS [B.04], MAX([B.04.1]) AS [B.04.1], MAX([B.04.2]) AS [B.04.2], MAX([B.05]) AS [B.05], MAX([B.05.1]) AS [B.05.1], MAX([B.06]) AS [B.06], MAX([B.07]) AS [B.07], MAX([B.08]) AS [B.08], MAX([B.09]) AS [B.09], MAX([B.10]) AS [B.10], MAX([B.11]) AS [B.11], MAX([B.12]) AS [B.12], MAX([B.13]) AS [B.13], MAX([B.13.1]) AS [B.13.1], MAX([B.14]) AS [B.14], MAX([B.15]) AS [B.15], MAX([B.16]) AS [B.16], MAX([B.16.1-inne]) AS [B.16.1-inne], MAX([B.16.1-naklejka foliowa]) AS [B.16.1-naklejka foliowa], MAX([B.16.1-opaska samozaciskowa]) AS [B.16.1-opaska samozaciskowa], MAX([B.16.1-opieczetowany i podpisany pasek papieru]) AS [B.16.1-opieczetowany i podpisany pasek papieru], MAX([B.16.2]) AS [B.16.2], MAX([B.17]) AS [B.17], MAX([B.18]) AS [B.18], MAX([B.18.1]) AS [B.18.1], MAX([B.18.2]) AS [B.18.2], MAX([B.19]) AS [B.19], MAX([B.19.1]) AS [B.19.1], MAX([B.20]) AS [B.20], MAX([B.20.1]) AS [B.20.1], MAX([B.21]) AS [B.21], MAX([B.22]) AS [B.22], MAX([B.22.1]) AS [B.22.1], MAX([B.22.2]) AS [B.22.2], MAX([B.23]) AS [B.23], MAX([B.23.1]) AS [B.23.1], MAX([B.24]) AS [B.24], MAX([B.25]) AS [B.25], MAX([B.26]) AS [B.26], MAX([B.A]) AS [B.A], MAX([B.B]) AS [B.B], MAX([B.C]) AS [B.C], MAX([C1.01]) AS [C1.01], MAX([C1.01.1]) AS [C1.01.1], MAX([C1.01.2]) AS [C1.01.2], MAX([C1.03]) AS [C1.03], MAX([C1.04]) AS [C1.04], MAX([C1.04.1]) AS [C1.04.1], MAX([C1.05]) AS [C1.05], MAX([C1.06]) AS [C1.06], MAX([C1.06.1]) AS [C1.06.1], MAX([C1.07.a]) AS [C1.07.a], MAX([C1.07.b]) AS [C1.07.b], MAX([C1.07.c]) AS [C1.07.c], MAX([C1.07.d]) AS [C1.07.d], MAX([C1.08]) AS [C1.08], MAX([C1.08.1]) AS [C1.08.1], MAX([C1.09]) AS [C1.09], MAX([C1.10]) AS [C1.10], MAX([C1.11]) AS [C1.11], MAX([C1.11.1]) AS [C1.11.1], MAX([C1.12]) AS [C1.12], MAX([C1.13]) AS [C1.13], MAX([C1.14]) AS [C1.14], MAX([C1.A]) AS [C1.A], MAX([C1.B]) AS [C1.B], MAX([C1.C]) AS [C1.C], MAX([C2.0]) AS [C2.0], MAX([C2.01]) AS [C2.01], MAX([C2.01.1]) AS [C2.01.1], MAX([C2.02]) AS [C2.02], MAX([C2.03]) AS [C2.03], MAX([C2.03+]) AS [C2.03+], MAX([C2.04]) AS [C2.04], MAX([C2.04.1]) AS [C2.04.1], MAX([C2.05]) AS [C2.05], MAX([C2.06]) AS [C2.06], MAX([C2.06.1]) AS [C2.06.1], MAX([C2.07]) AS [C2.07], MAX([C2.08]) AS [C2.08], MAX([C2.08.1]) AS [C2.08.1], MAX([C2.09]) AS [C2.09], MAX([C2.10]) AS [C2.10], MAX([C2.10.1]) AS [C2.10.1], MAX([C2.11]) AS [C2.11], MAX([C2.12]) AS [C2.12], MAX([C2.13]) AS [C2.13], MAX([C2.14]) AS [C2.14], MAX([C2.15]) AS [C2.15], MAX([C2.16]) AS [C2.16], MAX([C2.A]) AS [C2.A], MAX([C2.B]) AS [C2.B], MAX([C2.C]) AS [C2.C], MAX([Cg.00]) AS [Cg.00], MAX([Cg.01]) AS [Cg.01], MAX([Cg.02]) AS [Cg.02], MAX([Cg.02.1]) AS [Cg.02.1], MAX([Cg.03]) AS [Cg.03], MAX([Cg.04]) AS [Cg.04], MAX([Cg.05]) AS [Cg.05], MAX([Cg.05.1]) AS [Cg.05.1], MAX([Cg.05.2]) AS [Cg.05.2], MAX([Cg.05.3]) AS [Cg.05.3], MAX([Cg.05.4]) AS [Cg.05.4], MAX([Cg.06]) AS [Cg.06], MAX([Cg.06.1]) AS [Cg.06.1], MAX([Cg.07.a]) AS [Cg.07.a], MAX([Cg.07.b]) AS [Cg.07.b], MAX([Cg.08]) AS [Cg.08], MAX([Cg.08.1]) AS [Cg.08.1], MAX([Cg.09]) AS [Cg.09], MAX([Cg.09.1]) AS [Cg.09.1], MAX([Cg.09.2]) AS [Cg.09.2], MAX([Cg.10]) AS [Cg.10], MAX([Cg.11]) AS [Cg.11], MAX([Cg.11.1]) AS [Cg.11.1], MAX([Cg.11.2]) AS [Cg.11.2], MAX([Cg.12]) AS [Cg.12], MAX([Cg.13]) AS [Cg.13], MAX([Cg.14]) AS [Cg.14], MAX([Cg.A]) AS [Cg.A], MAX([Cg.B]) AS [Cg.B], MAX([Cg.C]) AS [Cg.C], MAX([Cp.00]) AS [Cp.00], MAX([Cp.01]) AS [Cp.01], MAX([Cp.02]) AS [Cp.02], MAX([Cp.02.1]) AS [Cp.02.1], MAX([Cp.03]) AS [Cp.03], MAX([Cp.04]) AS [Cp.04], MAX([Cp.05]) AS [Cp.05], MAX([Cp.05.1]) AS [Cp.05.1], MAX([Cp.05.2]) AS [Cp.05.2], MAX([Cp.05.3]) AS [Cp.05.3], MAX([Cp.05.4]) AS [Cp.05.4], MAX([Cp.06]) AS [Cp.06], MAX([Cp.06.1]) AS [Cp.06.1], MAX([Cp.07.a]) AS [Cp.07.a], MAX([Cp.07.b]) AS [Cp.07.b], MAX([Cp.08]) AS [Cp.08], MAX([Cp.08.1]) AS [Cp.08.1], MAX([Cp.09]) AS [Cp.09], MAX([Cp.09.1]) AS [Cp.09.1], MAX([Cp.09.2]) AS [Cp.09.2], MAX([Cp.10]) AS [Cp.10], MAX([Cp.11]) AS [Cp.11], MAX([Cp.11.1]) AS [Cp.11.1], MAX([Cp.11.2]) AS [Cp.11.2], MAX([Cp.12]) AS [Cp.12], MAX([Cp.13]) AS [Cp.13], MAX([Cp.14]) AS [Cp.14], MAX([Cp.A]) AS [Cp.A], MAX([Cp.B]) AS [Cp.B], MAX([Cp.C]) AS [Cp.C], MAX([Cs.00]) AS [Cs.00], MAX([Cs.01]) AS [Cs.01], MAX([Cs.02]) AS [Cs.02], MAX([Cs.02.1]) AS [Cs.02.1], MAX([Cs.03]) AS [Cs.03], MAX([Cs.04]) AS [Cs.04], MAX([Cs.05]) AS [Cs.05], MAX([Cs.05.1]) AS [Cs.05.1], MAX([Cs.05.2]) AS [Cs.05.2], MAX([Cs.05.3]) AS [Cs.05.3], MAX([Cs.05.4]) AS [Cs.05.4], MAX([Cs.06]) AS [Cs.06], MAX([Cs.06.1]) AS [Cs.06.1], MAX([Cs.07.a]) AS [Cs.07.a], MAX([Cs.07.b]) AS [Cs.07.b], MAX([Cs.08]) AS [Cs.08], MAX([Cs.08.1]) AS [Cs.08.1], MAX([Cs.09]) AS [Cs.09], MAX([Cs.09.1]) AS [Cs.09.1], MAX([Cs.09.2]) AS [Cs.09.2], MAX([Cs.10]) AS [Cs.10], MAX([Cs.11]) AS [Cs.11], MAX([Cs.11.1]) AS [Cs.11.1], MAX([Cs.11.2]) AS [Cs.11.2], MAX([Cs.12]) AS [Cs.12], MAX([Cs.13]) AS [Cs.13], MAX([Cs.14]) AS [Cs.14], MAX([Cs.A]) AS [Cs.A], MAX([Cs.B]) AS [Cs.B], MAX([Cs.C]) AS [Cs.C], MAX([Cw.00]) AS [Cw.00], MAX([Cw.01]) AS [Cw.01], MAX([Cw.02]) AS [Cw.02], MAX([Cw.02.1]) AS [Cw.02.1], MAX([Cw.03]) AS [Cw.03], MAX([Cw.04]) AS [Cw.04], MAX([Cw.05]) AS [Cw.05], MAX([Cw.05.1]) AS [Cw.05.1], MAX([Cw.05.2]) AS [Cw.05.2], MAX([Cw.05.3]) AS [Cw.05.3], MAX([Cw.05.4]) AS [Cw.05.4], MAX([Cw.06]) AS [Cw.06], MAX([Cw.06.1]) AS [Cw.06.1], MAX([Cw.07.a]) AS [Cw.07.a], MAX([Cw.07.b]) AS [Cw.07.b], MAX([Cw.08]) AS [Cw.08], MAX([Cw.08.1]) AS [Cw.08.1], MAX([Cw.09]) AS [Cw.09], MAX([Cw.09.1]) AS [Cw.09.1], MAX([Cw.09.2]) AS [Cw.09.2], MAX([Cw.10]) AS [Cw.10], MAX([Cw.11]) AS [Cw.11], MAX([Cw.11.1]) AS [Cw.11.1], MAX([Cw.11.2]) AS [Cw.11.2], MAX([Cw.12]) AS [Cw.12], MAX([Cw.13]) AS [Cw.13], MAX([Cw.14]) AS [Cw.14], MAX([Cw.A]) AS [Cw.A], MAX([Cw.B]) AS [Cw.B], MAX([Cw.C]) AS [Cw.C], MAX([D.0]) AS [D.0], MAX([D.01]) AS [D.01], MAX([D.02]) AS [D.02], MAX([D.02.1]) AS [D.02.1], MAX([D.02.2]) AS [D.02.2], MAX([D.02.3]) AS [D.02.3], MAX([D.03]) AS [D.03], MAX([D.03.1]) AS [D.03.1], MAX([D.03.2]) AS [D.03.2], MAX([D.03.3]) AS [D.03.3], MAX([D.04]) AS [D.04], MAX([D.05]) AS [D.05], MAX([D.05.1]) AS [D.05.1], MAX([D.06]) AS [D.06], MAX([D.07]) AS [D.07], MAX([D.08]) AS [D.08], MAX([D.09]) AS [D.09], MAX([D.09.1]) AS [D.09.1], MAX([D.10]) AS [D.10], MAX([D.11]) AS [D.11], MAX([D.A]) AS [D.A], MAX([D.B]) AS [D.B], MAX([D.C]) AS [D.C], MAX([QA.01]) AS [QA.01], MAX([QA.02]) AS [QA.02], MAX([QA.03]) AS [QA.03], MAX([QA.04]) AS [QA.04], MAX([QA.05]) AS [QA.05], MAX([QB.01]) AS [QB.01], MAX([QB.02]) AS [QB.02], MAX([QB.03]) AS [QB.03], MAX([QB.04]) AS [QB.04], MAX([QB.05]) AS [QB.05], MAX([QB.06]) AS [QB.06], MAX([QC1.01]) AS [QC1.01], MAX([QC1.02]) AS [QC1.02], MAX([QC1.03]) AS [QC1.03], MAX([QC1.04]) AS [QC1.04], MAX([QC1.08]) AS [QC1.08], MAX([QC1.09]) AS [QC1.09], MAX([QC1.10]) AS [QC1.10], MAX([QC1.11]) AS [QC1.11]
FROM (
  SELECT Name, IdObserver, TeamId, Gmina, GminaNazwa, PollingStationNumber,   [A.01], [A.01.1], [A.02], [A.03], [A.04], [A.05], [A.06-inne], [A.06-naklejka foliowa], [A.06-opaska samozaciskowa], [A.06-opieczetowany i podpisany pasek papieru], [A.07], [A.08], [A.08.1], [A.09], [A.10], [A.10.1], [A.11], [A.12], [A.13], [A.13.1], [A.14], [A.15], [A.16], [A.16.1], [A.16.2], [A.17], [A.17.1], [A.18], [A.19], [A.A], [A.B], [A.C], [B.00], [B.01], [B.02], [B.03], [B.03.1], [B.04], [B.04.1], [B.04.2], [B.05], [B.05.1], [B.06], [B.07], [B.08], [B.09], [B.10], [B.11], [B.12], [B.13], [B.13.1], [B.14], [B.15], [B.16], [B.16.1-inne], [B.16.1-naklejka foliowa], [B.16.1-opaska samozaciskowa], [B.16.1-opieczetowany i podpisany pasek papieru], [B.16.2], [B.17], [B.18], [B.18.1], [B.18.2], [B.19], [B.19.1], [B.20], [B.20.1], [B.21], [B.22], [B.22.1], [B.22.2], [B.23], [B.23.1], [B.24], [B.25], [B.26], [B.A], [B.B], [B.C], [C1.01], [C1.01.1], [C1.01.2], [C1.03], [C1.04], [C1.04.1], [C1.05], [C1.06], [C1.06.1], [C1.07.a], [C1.07.b], [C1.07.c], [C1.07.d], [C1.08], [C1.08.1], [C1.09], [C1.10], [C1.11], [C1.11.1], [C1.12], [C1.13], [C1.14], [C1.A], [C1.B], [C1.C], [C2.0], [C2.01], [C2.01.1], [C2.02], [C2.03], [C2.03+], [C2.04], [C2.04.1], [C2.05], [C2.06], [C2.06.1], [C2.07], [C2.08], [C2.08.1], [C2.09], [C2.10], [C2.10.1], [C2.11], [C2.12], [C2.13], [C2.14], [C2.15], [C2.16], [C2.A], [C2.B], [C2.C], [Cg.00], [Cg.01], [Cg.02], [Cg.02.1], [Cg.03], [Cg.04], [Cg.05], [Cg.05.1], [Cg.05.2], [Cg.05.3], [Cg.05.4], [Cg.06], [Cg.06.1], [Cg.07.a], [Cg.07.b], [Cg.08], [Cg.08.1], [Cg.09], [Cg.09.1], [Cg.09.2], [Cg.10], [Cg.11], [Cg.11.1], [Cg.11.2], [Cg.12], [Cg.13], [Cg.14], [Cg.A], [Cg.B], [Cg.C], [Cp.00], [Cp.01], [Cp.02], [Cp.02.1], [Cp.03], [Cp.04], [Cp.05], [Cp.05.1], [Cp.05.2], [Cp.05.3], [Cp.05.4], [Cp.06], [Cp.06.1], [Cp.07.a], [Cp.07.b], [Cp.08], [Cp.08.1], [Cp.09], [Cp.09.1], [Cp.09.2], [Cp.10], [Cp.11], [Cp.11.1], [Cp.11.2], [Cp.12], [Cp.13], [Cp.14], [Cp.A], [Cp.B], [Cp.C], [Cs.00], [Cs.01], [Cs.02], [Cs.02.1], [Cs.03], [Cs.04], [Cs.05], [Cs.05.1], [Cs.05.2], [Cs.05.3], [Cs.05.4], [Cs.06], [Cs.06.1], [Cs.07.a], [Cs.07.b], [Cs.08], [Cs.08.1], [Cs.09], [Cs.09.1], [Cs.09.2], [Cs.10], [Cs.11], [Cs.11.1], [Cs.11.2], [Cs.12], [Cs.13], [Cs.14], [Cs.A], [Cs.B], [Cs.C], [Cw.00], [Cw.01], [Cw.02], [Cw.02.1], [Cw.03], [Cw.04], [Cw.05], [Cw.05.1], [Cw.05.2], [Cw.05.3], [Cw.05.4], [Cw.06], [Cw.06.1], [Cw.07.a], [Cw.07.b], [Cw.08], [Cw.08.1], [Cw.09], [Cw.09.1], [Cw.09.2], [Cw.10], [Cw.11], [Cw.11.1], [Cw.11.2], [Cw.12], [Cw.13], [Cw.14], [Cw.A], [Cw.B], [Cw.C], [D.0], [D.01], [D.02], [D.02.1], [D.02.2], [D.02.3], [D.03], [D.03.1], [D.03.2], [D.03.3], [D.04], [D.05], [D.05.1], [D.06], [D.07], [D.08], [D.09], [D.09.1], [D.10], [D.11], [D.A], [D.B], [D.C], [QA.01], [QA.02], [QA.03], [QA.04], [QA.05], [QB.01], [QB.02], [QB.03], [QB.04], [QB.05], [QB.06], [QC1.01], [QC1.02], [QC1.03], [QC1.04], [QC1.08], [QC1.09], [QC1.10], [QC1.11]
    FROM ##Answers
    PIVOT(MAX(Value) FOR Code IN (   [A.01], [A.01.1], [A.02], [A.03], [A.04], [A.05], [A.06-inne], [A.06-naklejka foliowa], [A.06-opaska samozaciskowa], [A.06-opieczetowany i podpisany pasek papieru], [A.07], [A.08], [A.08.1], [A.09], [A.10], [A.10.1], [A.11], [A.12], [A.13], [A.13.1], [A.14], [A.15], [A.16], [A.16.1], [A.16.2], [A.17], [A.17.1], [A.18], [A.19], [A.A], [A.B], [A.C], [B.00], [B.01], [B.02], [B.03], [B.03.1], [B.04], [B.04.1], [B.04.2], [B.05], [B.05.1], [B.06], [B.07], [B.08], [B.09], [B.10], [B.11], [B.12], [B.13], [B.13.1], [B.14], [B.15], [B.16], [B.16.1-inne], [B.16.1-naklejka foliowa], [B.16.1-opaska samozaciskowa], [B.16.1-opieczetowany i podpisany pasek papieru], [B.16.2], [B.17], [B.18], [B.18.1], [B.18.2], [B.19], [B.19.1], [B.20], [B.20.1], [B.21], [B.22], [B.22.1], [B.22.2], [B.23], [B.23.1], [B.24], [B.25], [B.26], [B.A], [B.B], [B.C], [C1.01], [C1.01.1], [C1.01.2], [C1.03], [C1.04], [C1.04.1], [C1.05], [C1.06], [C1.06.1], [C1.07.a], [C1.07.b], [C1.07.c], [C1.07.d], [C1.08], [C1.08.1], [C1.09], [C1.10], [C1.11], [C1.11.1], [C1.12], [C1.13], [C1.14], [C1.A], [C1.B], [C1.C], [C2.0], [C2.01], [C2.01.1], [C2.02], [C2.03], [C2.03+], [C2.04], [C2.04.1], [C2.05], [C2.06], [C2.06.1], [C2.07], [C2.08], [C2.08.1], [C2.09], [C2.10], [C2.10.1], [C2.11], [C2.12], [C2.13], [C2.14], [C2.15], [C2.16], [C2.A], [C2.B], [C2.C], [Cg.00], [Cg.01], [Cg.02], [Cg.02.1], [Cg.03], [Cg.04], [Cg.05], [Cg.05.1], [Cg.05.2], [Cg.05.3], [Cg.05.4], [Cg.06], [Cg.06.1], [Cg.07.a], [Cg.07.b], [Cg.08], [Cg.08.1], [Cg.09], [Cg.09.1], [Cg.09.2], [Cg.10], [Cg.11], [Cg.11.1], [Cg.11.2], [Cg.12], [Cg.13], [Cg.14], [Cg.A], [Cg.B], [Cg.C], [Cp.00], [Cp.01], [Cp.02], [Cp.02.1], [Cp.03], [Cp.04], [Cp.05], [Cp.05.1], [Cp.05.2], [Cp.05.3], [Cp.05.4], [Cp.06], [Cp.06.1], [Cp.07.a], [Cp.07.b], [Cp.08], [Cp.08.1], [Cp.09], [Cp.09.1], [Cp.09.2], [Cp.10], [Cp.11], [Cp.11.1], [Cp.11.2], [Cp.12], [Cp.13], [Cp.14], [Cp.A], [Cp.B], [Cp.C], [Cs.00], [Cs.01], [Cs.02], [Cs.02.1], [Cs.03], [Cs.04], [Cs.05], [Cs.05.1], [Cs.05.2], [Cs.05.3], [Cs.05.4], [Cs.06], [Cs.06.1], [Cs.07.a], [Cs.07.b], [Cs.08], [Cs.08.1], [Cs.09], [Cs.09.1], [Cs.09.2], [Cs.10], [Cs.11], [Cs.11.1], [Cs.11.2], [Cs.12], [Cs.13], [Cs.14], [Cs.A], [Cs.B], [Cs.C], [Cw.00], [Cw.01], [Cw.02], [Cw.02.1], [Cw.03], [Cw.04], [Cw.05], [Cw.05.1], [Cw.05.2], [Cw.05.3], [Cw.05.4], [Cw.06], [Cw.06.1], [Cw.07.a], [Cw.07.b], [Cw.08], [Cw.08.1], [Cw.09], [Cw.09.1], [Cw.09.2], [Cw.10], [Cw.11], [Cw.11.1], [Cw.11.2], [Cw.12], [Cw.13], [Cw.14], [Cw.A], [Cw.B], [Cw.C], [D.0], [D.01], [D.02], [D.02.1], [D.02.2], [D.02.3], [D.03], [D.03.1], [D.03.2], [D.03.3], [D.04], [D.05], [D.05.1], [D.06], [D.07], [D.08], [D.09], [D.09.1], [D.10], [D.11], [D.A], [D.B], [D.C], [QA.01], [QA.02], [QA.03], [QA.04], [QA.05], [QB.01], [QB.02], [QB.03], [QB.04], [QB.05], [QB.06], [QC1.01], [QC1.02], [QC1.03], [QC1.04], [QC1.08], [QC1.09], [QC1.10], [QC1.11]
    )) AS PVTTable
    ) as pivoted
INNER JOIN (SELECT
     Id, Code, Name,
     CASE
     WHEN LEFT(Counties.Code, 4) = '1465' THEN '146501'
     ELSE SUBSTRING(Counties.Code, 0, LEN(Counties.Code) - 1) + '00'
     END AS PowiatCode
   FROM Counties
    ) AS Counties ON Counties.Code = pivoted.Gmina
  LEFT OUTER JOIN Powiat ON Counties.PowiatCode = Powiat.Code
GROUP BY TeamId, Gmina, GminaNazwa, PowiatCode, Powiat.Name, PollingStationNumber
ORDER BY TeamId, Gmina, PollingStationNumber


  SELECT Name, IdObserver, TeamId, Gmina, GminaNazwa, PollingStationNumber,   [A.01], [A.01.1], [A.02], [A.03], [A.04], [A.05], [A.06-inne], [A.06-naklejka foliowa], [A.06-opaska samozaciskowa], [A.06-opieczetowany i podpisany pasek papieru], [A.07], [A.08], [A.08.1], [A.09], [A.10], [A.10.1], [A.11], [A.12], [A.13], [A.13.1], [A.14], [A.15], [A.16], [A.16.1], [A.16.2], [A.17], [A.17.1], [A.18], [A.19], [A.A], [A.B], [A.C], [B.00], [B.01], [B.02], [B.03], [B.03.1], [B.04], [B.04.1], [B.04.2], [B.05], [B.05.1], [B.06], [B.07], [B.08], [B.09], [B.10], [B.11], [B.12], [B.13], [B.13.1], [B.14], [B.15], [B.16], [B.16.1-inne], [B.16.1-naklejka foliowa], [B.16.1-opaska samozaciskowa], [B.16.1-opieczetowany i podpisany pasek papieru], [B.16.2], [B.17], [B.18], [B.18.1], [B.18.2], [B.19], [B.19.1], [B.20], [B.20.1], [B.21], [B.22], [B.22.1], [B.22.2], [B.23], [B.23.1], [B.24], [B.25], [B.26], [B.A], [B.B], [B.C], [C1.01], [C1.01.1], [C1.01.2], [C1.03], [C1.04], [C1.04.1], [C1.05], [C1.06], [C1.06.1], [C1.07.a], [C1.07.b], [C1.07.c], [C1.07.d], [C1.08], [C1.08.1], [C1.09], [C1.10], [C1.11], [C1.11.1], [C1.12], [C1.13], [C1.14], [C1.A], [C1.B], [C1.C], [C2.0], [C2.01], [C2.01.1], [C2.02], [C2.03], [C2.03+], [C2.04], [C2.04.1], [C2.05], [C2.06], [C2.06.1], [C2.07], [C2.08], [C2.08.1], [C2.09], [C2.10], [C2.10.1], [C2.11], [C2.12], [C2.13], [C2.14], [C2.15], [C2.16], [C2.A], [C2.B], [C2.C], [Cg.00], [Cg.01], [Cg.02], [Cg.02.1], [Cg.03], [Cg.04], [Cg.05], [Cg.05.1], [Cg.05.2], [Cg.05.3], [Cg.05.4], [Cg.06], [Cg.06.1], [Cg.07.a], [Cg.07.b], [Cg.08], [Cg.08.1], [Cg.09], [Cg.09.1], [Cg.09.2], [Cg.10], [Cg.11], [Cg.11.1], [Cg.11.2], [Cg.12], [Cg.13], [Cg.14], [Cg.A], [Cg.B], [Cg.C], [Cp.00], [Cp.01], [Cp.02], [Cp.02.1], [Cp.03], [Cp.04], [Cp.05], [Cp.05.1], [Cp.05.2], [Cp.05.3], [Cp.05.4], [Cp.06], [Cp.06.1], [Cp.07.a], [Cp.07.b], [Cp.08], [Cp.08.1], [Cp.09], [Cp.09.1], [Cp.09.2], [Cp.10], [Cp.11], [Cp.11.1], [Cp.11.2], [Cp.12], [Cp.13], [Cp.14], [Cp.A], [Cp.B], [Cp.C], [Cs.00], [Cs.01], [Cs.02], [Cs.02.1], [Cs.03], [Cs.04], [Cs.05], [Cs.05.1], [Cs.05.2], [Cs.05.3], [Cs.05.4], [Cs.06], [Cs.06.1], [Cs.07.a], [Cs.07.b], [Cs.08], [Cs.08.1], [Cs.09], [Cs.09.1], [Cs.09.2], [Cs.10], [Cs.11], [Cs.11.1], [Cs.11.2], [Cs.12], [Cs.13], [Cs.14], [Cs.A], [Cs.B], [Cs.C], [Cw.00], [Cw.01], [Cw.02], [Cw.02.1], [Cw.03], [Cw.04], [Cw.05], [Cw.05.1], [Cw.05.2], [Cw.05.3], [Cw.05.4], [Cw.06], [Cw.06.1], [Cw.07.a], [Cw.07.b], [Cw.08], [Cw.08.1], [Cw.09], [Cw.09.1], [Cw.09.2], [Cw.10], [Cw.11], [Cw.11.1], [Cw.11.2], [Cw.12], [Cw.13], [Cw.14], [Cw.A], [Cw.B], [Cw.C], [D.0], [D.01], [D.02], [D.02.1], [D.02.2], [D.02.3], [D.03], [D.03.1], [D.03.2], [D.03.3], [D.04], [D.05], [D.05.1], [D.06], [D.07], [D.08], [D.09], [D.09.1], [D.10], [D.11], [D.A], [D.B], [D.C], [QA.01], [QA.02], [QA.03], [QA.04], [QA.05], [QB.01], [QB.02], [QB.03], [QB.04], [QB.05], [QB.06], [QC1.01], [QC1.02], [QC1.03], [QC1.04], [QC1.08], [QC1.09], [QC1.10], [QC1.11]
    FROM ##Answers
    PIVOT(MAX(Value) FOR Code IN (   [A.01], [A.01.1], [A.02], [A.03], [A.04], [A.05], [A.06-inne], [A.06-naklejka foliowa], [A.06-opaska samozaciskowa], [A.06-opieczetowany i podpisany pasek papieru], [A.07], [A.08], [A.08.1], [A.09], [A.10], [A.10.1], [A.11], [A.12], [A.13], [A.13.1], [A.14], [A.15], [A.16], [A.16.1], [A.16.2], [A.17], [A.17.1], [A.18], [A.19], [A.A], [A.B], [A.C], [B.00], [B.01], [B.02], [B.03], [B.03.1], [B.04], [B.04.1], [B.04.2], [B.05], [B.05.1], [B.06], [B.07], [B.08], [B.09], [B.10], [B.11], [B.12], [B.13], [B.13.1], [B.14], [B.15], [B.16], [B.16.1-inne], [B.16.1-naklejka foliowa], [B.16.1-opaska samozaciskowa], [B.16.1-opieczetowany i podpisany pasek papieru], [B.16.2], [B.17], [B.18], [B.18.1], [B.18.2], [B.19], [B.19.1], [B.20], [B.20.1], [B.21], [B.22], [B.22.1], [B.22.2], [B.23], [B.23.1], [B.24], [B.25], [B.26], [B.A], [B.B], [B.C], [C1.01], [C1.01.1], [C1.01.2], [C1.03], [C1.04], [C1.04.1], [C1.05], [C1.06], [C1.06.1], [C1.07.a], [C1.07.b], [C1.07.c], [C1.07.d], [C1.08], [C1.08.1], [C1.09], [C1.10], [C1.11], [C1.11.1], [C1.12], [C1.13], [C1.14], [C1.A], [C1.B], [C1.C], [C2.0], [C2.01], [C2.01.1], [C2.02], [C2.03], [C2.03+], [C2.04], [C2.04.1], [C2.05], [C2.06], [C2.06.1], [C2.07], [C2.08], [C2.08.1], [C2.09], [C2.10], [C2.10.1], [C2.11], [C2.12], [C2.13], [C2.14], [C2.15], [C2.16], [C2.A], [C2.B], [C2.C], [Cg.00], [Cg.01], [Cg.02], [Cg.02.1], [Cg.03], [Cg.04], [Cg.05], [Cg.05.1], [Cg.05.2], [Cg.05.3], [Cg.05.4], [Cg.06], [Cg.06.1], [Cg.07.a], [Cg.07.b], [Cg.08], [Cg.08.1], [Cg.09], [Cg.09.1], [Cg.09.2], [Cg.10], [Cg.11], [Cg.11.1], [Cg.11.2], [Cg.12], [Cg.13], [Cg.14], [Cg.A], [Cg.B], [Cg.C], [Cp.00], [Cp.01], [Cp.02], [Cp.02.1], [Cp.03], [Cp.04], [Cp.05], [Cp.05.1], [Cp.05.2], [Cp.05.3], [Cp.05.4], [Cp.06], [Cp.06.1], [Cp.07.a], [Cp.07.b], [Cp.08], [Cp.08.1], [Cp.09], [Cp.09.1], [Cp.09.2], [Cp.10], [Cp.11], [Cp.11.1], [Cp.11.2], [Cp.12], [Cp.13], [Cp.14], [Cp.A], [Cp.B], [Cp.C], [Cs.00], [Cs.01], [Cs.02], [Cs.02.1], [Cs.03], [Cs.04], [Cs.05], [Cs.05.1], [Cs.05.2], [Cs.05.3], [Cs.05.4], [Cs.06], [Cs.06.1], [Cs.07.a], [Cs.07.b], [Cs.08], [Cs.08.1], [Cs.09], [Cs.09.1], [Cs.09.2], [Cs.10], [Cs.11], [Cs.11.1], [Cs.11.2], [Cs.12], [Cs.13], [Cs.14], [Cs.A], [Cs.B], [Cs.C], [Cw.00], [Cw.01], [Cw.02], [Cw.02.1], [Cw.03], [Cw.04], [Cw.05], [Cw.05.1], [Cw.05.2], [Cw.05.3], [Cw.05.4], [Cw.06], [Cw.06.1], [Cw.07.a], [Cw.07.b], [Cw.08], [Cw.08.1], [Cw.09], [Cw.09.1], [Cw.09.2], [Cw.10], [Cw.11], [Cw.11.1], [Cw.11.2], [Cw.12], [Cw.13], [Cw.14], [Cw.A], [Cw.B], [Cw.C], [D.0], [D.01], [D.02], [D.02.1], [D.02.2], [D.02.3], [D.03], [D.03.1], [D.03.2], [D.03.3], [D.04], [D.05], [D.05.1], [D.06], [D.07], [D.08], [D.09], [D.09.1], [D.10], [D.11], [D.A], [D.B], [D.C], [QA.01], [QA.02], [QA.03], [QA.04], [QA.05], [QB.01], [QB.02], [QB.03], [QB.04], [QB.05], [QB.06], [QC1.01], [QC1.02], [QC1.03], [QC1.04], [QC1.08], [QC1.09], [QC1.10], [QC1.11]
    )) AS PVTTable ORDER BY IdObserver, Gmina, PollingStationNumber

SELECT SUBSTRING(Code, 0, CHARINDEX('.', Code)) AS FormId FROM Questions LIMIT 10;

Select * from ##Answers;

-- See what forms are filled in and in what amount
SELECT SUM(CASE WHEN A > 0 THEN 1 ELSE 0 END) AS A, SUM(CASE WHEN B > 0 THEN 1 ELSE 0 END) AS B, SUM(CASE WHEN C1 > 0 THEN 1 ELSE 0 END) AS C1, SUM(CASE WHEN C2 > 0 THEN 1 ELSE 0 END) AS C2, SUM(CASE WHEN Cg > 0 THEN 1 ELSE 0 END) AS Cg, SUM(CASE WHEN Cp > 0 THEN 1 ELSE 0 END) AS Cp, SUM(CASE WHEN Cs > 0 THEN 1 ELSE 0 END) AS Cs, SUM(CASE WHEN Cw > 0 THEN 1 ELSE 0 END) AS Cw, SUM(CASE WHEN D > 0 THEN 1 ELSE 0 END) AS D FROM (
    SELECT TeamId, Gmina, GminaNazwa, PowiatCode AS Powiat, Powiat.Name AS PowiatNazwa,  PollingStationNumber,  SUM(A) AS A, SUM(B) AS B, SUM(C1) AS C1, SUM(C2) AS C2, SUM(Cg) AS Cg, SUM(Cp) AS Cp, SUM(Cs) AS Cs, SUM(Cw) AS Cw, SUM(D) AS D
FROM (
  SELECT Name, IdObserver, TeamId, Gmina, GminaNazwa, PollingStationNumber, [A], [B], [C1], C2, Cg, Cp, Cs, Cw, D
    FROM ##Answers
    PIVOT(COUNT(Value) FOR FormCode IN ( [A], [B], [C1], C2, Cg, Cp, Cs, Cw, D
    )) AS PVTTable
    ) as pivoted
INNER JOIN (SELECT
     Id, Code, Name,
     CASE
     WHEN LEFT(Counties.Code, 4) = '1465' THEN '146501'
     ELSE SUBSTRING(Counties.Code, 0, LEN(Counties.Code) - 1) + '00'
     END AS PowiatCode
   FROM Counties
    ) AS Counties ON Counties.Code = pivoted.Gmina
  LEFT OUTER JOIN Powiat ON Counties.PowiatCode = Powiat.Code
GROUP BY TeamId, Gmina, GminaNazwa, PowiatCode, Powiat.Name, PollingStationNumber
 ORDER BY TeamId, Gmina, PollingStationNumber
  ) AS p





-- Status: what observers has filled in how many questions of each form - a quick overview over how teams are doing

SELECT * FROM (
    SELECT TeamId, Gmina, GminaNazwa, PowiatCode AS Powiat, Powiat.Name AS PowiatNazwa,  PollingStationNumber,  SUM(A) AS A, SUM(B) AS B, SUM(C1) AS C1, SUM(C2) AS C2, SUM(Cg) AS Cg, SUM(Cp) AS Cp, SUM(Cs) AS Cs, SUM(Cw) AS Cw, SUM(D) AS D
FROM (
  SELECT Name, IdObserver, TeamId, Gmina, GminaNazwa, PollingStationNumber, [A], [B], [C1], C2, Cg, Cp, Cs, Cw, D
    FROM ##Answers
    PIVOT(COUNT(Value) FOR FormCode IN ( [A], [B], [C1], C2, Cg, Cp, Cs, Cw, D
    )) AS PVTTable
    ) as pivoted
INNER JOIN (SELECT
     Id, Code, Name,
     CASE
     WHEN LEFT(Counties.Code, 4) = '1465' THEN '146501'
     ELSE SUBSTRING(Counties.Code, 0, LEN(Counties.Code) - 1) + '00'
     END AS PowiatCode
   FROM Counties
    ) AS Counties ON Counties.Code = pivoted.Gmina
  LEFT OUTER JOIN Powiat ON Counties.PowiatCode = Powiat.Code
GROUP BY TeamId, Gmina, GminaNazwa, PowiatCode, Powiat.Name, PollingStationNumber
    ) AS p
-- WHERE C1 > 0

