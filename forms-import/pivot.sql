-- ==========================
-- Prepare Columns for pivot (once for given forms)
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

-- select @max_cols = STUFF((SELECT ', MAX(' + QUOTENAME(Code) + ') AS ' + QUOTENAME(Code)
--                     from @Options
--             FOR XML PATH(''), TYPE
--             ).value('.', 'NVARCHAR(MAX)')
--         ,1 ,1 ,'');
--
-- select @max_cols;


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
-- Prepare Ansewers (each time when you need results)
-- =======================

DROP TABLE IF EXISTS ##Answers;

-- Declare @Answers TABLE (
CREATE TABLE ##Answers (
  IdObserver int,
  TeamId int,
  Gmina nvarchar(100),
  PollingStationNumber int,
  Code nvarchar(max),
  Value nvarchar(1000)
);

INSERT INTO ##Answers
SELECT IdObserver, TeamId, CountyCode AS Gmina, PollingStationNumber,
            Questions.Code +
            CASE Questions.QuestionType
              WHEN 0 THEN '-' + Options.Text
              WHEN 1 THEN ''
              WHEN 2 THEN ''
            END AS Code,
            CASE QuestionType
              WHEN 1 THEN Options.Text
              ELSE ISNULL(Value, Options.Text)
            END AS Value
    FROM Answers
      INNER JOIN Observers ON Answers.IdObserver = Observers.Id
      INNER JOIN OptionsToQuestions ON Answers.IdOptionToQuestion = OptionsToQuestions.Id
      INNER JOIN Options ON OptionsToQuestions.IdOption = Options.Id
      INNER JOIN Questions ON OptionsToQuestions.IdQuestion = Questions.Id;


--SELECT IdObserver, TeamId, Gmina, PollingStationNumber, @max_cols
--FROM (
  SELECT IdObserver, TeamId, Gmina, PollingStationNumber,  [A.01], [A.02], [A.03], [A.04], [A.05], [A.06], [A.07], [A.08], [A.09], [A.10], [A.11], [A.12-inne], [A.12-naklejka foliowa], [A.12-opaska samozaciskowa], [A.12-opieczetowany i podpisany pasek papieru], [A.13], [A.14], [A.15], [A.16], [A.17], [A.18], [A.19], [A.20], [A.21], [A.22], [A.23], [A.24], [A.25], [A.26], [A.27], [A.28], [A.29], [A.30], [A.31], [A.32], [A.33], [A.34], [B.01], [B.02], [B.03], [B.04], [B.05], [B.06], [B.07], [B.08], [B.09], [B.10], [B.11], [B.12], [B.13], [B.14], [B.15], [B.16], [B.17], [B.18], [B.19], [B.20], [B.21], [B.22], [B.23], [B.24], [B.25], [B.26], [B.27], [B.28], [B.29-inne], [B.29-naklejka foliowa], [B.29-opaska samozaciskowa], [B.29-opieczetowany i podpisany pasek papieru], [B.30], [B.31], [B.32], [B.33], [B.34], [B.35], [B.36], [B.37], [B.38], [B.39], [B.40], [B.41], [B.42], [B.43], [B.44], [B.45], [B.46], [B.47], [B.48], [B.49], [B.50], [C1.01], [C1.02], [C1.03], [C1.04], [C1.05], [C1.06], [C1.07], [C1.08], [C1.09], [C1.10], [C1.11], [C1.12], [C1.13], [C1.14], [C1.15], [C1.16], [C1.17], [C1.18], [C1.19], [C1.20], [C1.21], [C1.22], [C1.23], [C1.24], [C1.25], [C1.26], [C1.27], [C1.28], [C1.29], [C1.30], [C1.31], [C1.32], [C1.33], [C2.01], [C2.02], [C2.03], [C2.04], [C2.05], [C2.06], [C2.07], [C2.08], [C2.09], [C2.10], [C2.11], [C2.12], [C2.13], [C2.14], [C2.15], [C2.16], [C2.17], [C2.18], [C2.19], [C2.20], [C2.21], [C2.22], [C2.23], [C2.24], [C2.25], [C2.26], [Cg.01], [Cg.02], [Cg.03], [Cg.04], [Cg.05], [Cg.06], [Cg.07], [Cg.08], [Cg.09], [Cg.10], [Cg.11], [Cg.12], [Cg.13], [Cg.14], [Cg.15], [Cg.16], [Cg.17], [Cg.18], [Cg.19], [Cg.20], [Cg.21], [Cg.22], [Cg.23], [Cg.24], [Cg.25], [Cg.26], [Cg.27], [Cg.28], [Cg.29], [Cg.30], [Cp.01], [Cp.02], [Cp.03], [Cp.04], [Cp.05], [Cp.06], [Cp.07], [Cp.08], [Cp.09], [Cp.10], [Cp.11], [Cp.12], [Cp.13], [Cp.14], [Cp.15], [Cp.16], [Cp.17], [Cp.18], [Cp.19], [Cp.20], [Cp.21], [Cp.22], [Cp.23], [Cp.24], [Cp.25], [Cp.26], [Cp.27], [Cp.28], [Cp.29], [Cp.30], [Cs.01], [Cs.02], [Cs.03], [Cs.04], [Cs.05], [Cs.06], [Cs.07], [Cs.08], [Cs.09], [Cs.10], [Cs.11], [Cs.12], [Cs.13], [Cs.14], [Cs.15], [Cs.16], [Cs.17], [Cs.18], [Cs.19], [Cs.20], [Cs.21], [Cs.22], [Cs.23], [Cs.24], [Cs.25], [Cs.26], [Cs.27], [Cs.28], [Cs.29], [Cs.30], [Cw.01], [Cw.02], [Cw.03], [Cw.04], [Cw.05], [Cw.06], [Cw.07], [Cw.08], [Cw.09], [Cw.10], [Cw.11], [Cw.12], [Cw.13], [Cw.14], [Cw.15], [Cw.16], [Cw.17], [Cw.18], [Cw.19], [Cw.20], [Cw.21], [Cw.22], [Cw.23], [Cw.24], [Cw.25], [Cw.26], [Cw.27], [Cw.28], [Cw.29], [Cw.30], [D.01], [D.02], [D.03], [D.04], [D.05], [D.06], [D.07], [D.08], [D.09], [D.10], [D.11], [D.12], [D.13], [D.14], [D.15], [D.16], [D.17], [D.18], [D.19], [D.20], [D.21], [D.22], [D.23]
    FROM ##Answers
    PIVOT(MAX(Value) FOR Code IN (  [A.01], [A.02], [A.03], [A.04], [A.05], [A.06], [A.07], [A.08], [A.09], [A.10], [A.11], [A.12-inne], [A.12-naklejka foliowa], [A.12-opaska samozaciskowa], [A.12-opieczetowany i podpisany pasek papieru], [A.13], [A.14], [A.15], [A.16], [A.17], [A.18], [A.19], [A.20], [A.21], [A.22], [A.23], [A.24], [A.25], [A.26], [A.27], [A.28], [A.29], [A.30], [A.31], [A.32], [A.33], [A.34], [B.01], [B.02], [B.03], [B.04], [B.05], [B.06], [B.07], [B.08], [B.09], [B.10], [B.11], [B.12], [B.13], [B.14], [B.15], [B.16], [B.17], [B.18], [B.19], [B.20], [B.21], [B.22], [B.23], [B.24], [B.25], [B.26], [B.27], [B.28], [B.29-inne], [B.29-naklejka foliowa], [B.29-opaska samozaciskowa], [B.29-opieczetowany i podpisany pasek papieru], [B.30], [B.31], [B.32], [B.33], [B.34], [B.35], [B.36], [B.37], [B.38], [B.39], [B.40], [B.41], [B.42], [B.43], [B.44], [B.45], [B.46], [B.47], [B.48], [B.49], [B.50], [C1.01], [C1.02], [C1.03], [C1.04], [C1.05], [C1.06], [C1.07], [C1.08], [C1.09], [C1.10], [C1.11], [C1.12], [C1.13], [C1.14], [C1.15], [C1.16], [C1.17], [C1.18], [C1.19], [C1.20], [C1.21], [C1.22], [C1.23], [C1.24], [C1.25], [C1.26], [C1.27], [C1.28], [C1.29], [C1.30], [C1.31], [C1.32], [C1.33], [C2.01], [C2.02], [C2.03], [C2.04], [C2.05], [C2.06], [C2.07], [C2.08], [C2.09], [C2.10], [C2.11], [C2.12], [C2.13], [C2.14], [C2.15], [C2.16], [C2.17], [C2.18], [C2.19], [C2.20], [C2.21], [C2.22], [C2.23], [C2.24], [C2.25], [C2.26], [Cg.01], [Cg.02], [Cg.03], [Cg.04], [Cg.05], [Cg.06], [Cg.07], [Cg.08], [Cg.09], [Cg.10], [Cg.11], [Cg.12], [Cg.13], [Cg.14], [Cg.15], [Cg.16], [Cg.17], [Cg.18], [Cg.19], [Cg.20], [Cg.21], [Cg.22], [Cg.23], [Cg.24], [Cg.25], [Cg.26], [Cg.27], [Cg.28], [Cg.29], [Cg.30], [Cp.01], [Cp.02], [Cp.03], [Cp.04], [Cp.05], [Cp.06], [Cp.07], [Cp.08], [Cp.09], [Cp.10], [Cp.11], [Cp.12], [Cp.13], [Cp.14], [Cp.15], [Cp.16], [Cp.17], [Cp.18], [Cp.19], [Cp.20], [Cp.21], [Cp.22], [Cp.23], [Cp.24], [Cp.25], [Cp.26], [Cp.27], [Cp.28], [Cp.29], [Cp.30], [Cs.01], [Cs.02], [Cs.03], [Cs.04], [Cs.05], [Cs.06], [Cs.07], [Cs.08], [Cs.09], [Cs.10], [Cs.11], [Cs.12], [Cs.13], [Cs.14], [Cs.15], [Cs.16], [Cs.17], [Cs.18], [Cs.19], [Cs.20], [Cs.21], [Cs.22], [Cs.23], [Cs.24], [Cs.25], [Cs.26], [Cs.27], [Cs.28], [Cs.29], [Cs.30], [Cw.01], [Cw.02], [Cw.03], [Cw.04], [Cw.05], [Cw.06], [Cw.07], [Cw.08], [Cw.09], [Cw.10], [Cw.11], [Cw.12], [Cw.13], [Cw.14], [Cw.15], [Cw.16], [Cw.17], [Cw.18], [Cw.19], [Cw.20], [Cw.21], [Cw.22], [Cw.23], [Cw.24], [Cw.25], [Cw.26], [Cw.27], [Cw.28], [Cw.29], [Cw.30], [D.01], [D.02], [D.03], [D.04], [D.05], [D.06], [D.07], [D.08], [D.09], [D.10], [D.11], [D.12], [D.13], [D.14], [D.15], [D.16], [D.17], [D.18], [D.19], [D.20], [D.21], [D.22], [D.23]
    )) AS PVTTable ORDER BY IdObserver, Gmina, PollingStationNumber
     -- ) as pivoted GROUP BY IdObserver, Gmina, PollingStationNumber;