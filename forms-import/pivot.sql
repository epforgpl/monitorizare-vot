DECLARE @cols AS NVARCHAR(MAX), @max_cols AS NVARCHAR(MAX), @query AS NVARCHAR(MAX)
DECLARE @Options TABLE (Code nvarchar(100))

INSERT INTO @Options
SELECT DISTINCT q.Code FROM OptionsToQuestions
  INNER JOIN Questions q ON OptionsToQuestions.IdQuestion = q.Id
  INNER JOIN Options o ON OptionsToQuestions.IdOption = o.Id ORDER BY Code;

select @cols = STUFF((SELECT ', ' + QUOTENAME(Code) + ',' + QUOTENAME(Code + '+')
                    from @Options
            FOR XML PATH(''), TYPE
            ).value('.', 'NVARCHAR(MAX)')
        ,1 ,1 ,'');

select @max_cols = STUFF((SELECT ', MAX(' + QUOTENAME(Code) + ') AS ' + QUOTENAME(Code) +
                        ', MAX(' + QUOTENAME(Code + '+') + ') AS ' + QUOTENAME(Code + '+')
                    from @Options
            FOR XML PATH(''), TYPE
            ).value('.', 'NVARCHAR(MAX)')
        ,1 ,1 ,'');


--Prepare the PIVOT query using the dynamic
SET @query =
  N'SELECT IdObserver, Teryt, PollingStationNumber, ' + @max_cols + ' FROM ' +
  '(SELECT IdObserver, Teryt, PollingStationNumber, ' + @cols + '
    FROM #Answers
    PIVOT(MAX(Text) FOR Code IN (' + @cols + ')) AS PVTTable) as pivoted GROUP BY IdObserver, Teryt, PollingStationNumber;'

-- ) AS p GROUP BY IdObserver, Teryt, PollingStationNumber

--Execute the Dynamic Pivot Query

SELECT @query;



-- Declare @Answers TABLE (
CREATE TABLE #Answers (
  IdObserver int,
  Teryt nvarchar(100),
  PollingStationNumber int,
  Code nvarchar(max),
  Text nvarchar(200),
  Value nvarchar(1000)
);

INSERT INTO #Answers
    SELECT IdObserver, CountyCode AS Teryt, PollingStationNumber, Questions.Code, Options.Text, Value
    FROM Answers
      INNER JOIN OptionsToQuestions ON Answers.IdOptionToQuestion = OptionsToQuestions.Id
      INNER JOIN Options ON OptionsToQuestions.IdOption = Options.Id
      INNER JOIN Questions ON OptionsToQuestions.IdQuestion = Questions.Id
    ;

-- TODO double the rows to get + values

DROP TABLE #Answers;

SELECT IdObserver, Teryt, PollingStationNumber,  MAX([A.01]) AS [A.01], MAX([A.01+]) AS [A.01+], MAX([A.02]) AS [A.02], MAX([A.02+]) AS [A.02+], MAX([A.03]) AS [A.03], MAX([A.03+]) AS [A.03+], MAX([A.04]) AS [A.04], MAX([A.04+]) AS [A.04+], MAX([A.05]) AS [A.05], MAX([A.05+]) AS [A.05+], MAX([A.06]) AS [A.06], MAX([A.06+]) AS [A.06+], MAX([A.07]) AS [A.07], MAX([A.07+]) AS [A.07+], MAX([A.08]) AS [A.08], MAX([A.08+]) AS [A.08+], MAX([A.09]) AS [A.09], MAX([A.09+]) AS [A.09+], MAX([A.10]) AS [A.10], MAX([A.10+]) AS [A.10+], MAX([A.11]) AS [A.11], MAX([A.11+]) AS [A.11+], MAX([A.12]) AS [A.12], MAX([A.12+]) AS [A.12+], MAX([A.13]) AS [A.13], MAX([A.13+]) AS [A.13+], MAX([A.14]) AS [A.14], MAX([A.14+]) AS [A.14+], MAX([A.15]) AS [A.15], MAX([A.15+]) AS [A.15+], MAX([A.16]) AS [A.16], MAX([A.16+]) AS [A.16+], MAX([A.17]) AS [A.17], MAX([A.17+]) AS [A.17+], MAX([A.18]) AS [A.18], MAX([A.18+]) AS [A.18+], MAX([A.19]) AS [A.19], MAX([A.19+]) AS [A.19+], MAX([A.20]) AS [A.20], MAX([A.20+]) AS [A.20+], MAX([A.21]) AS [A.21], MAX([A.21+]) AS [A.21+], MAX([A.22]) AS [A.22], MAX([A.22+]) AS [A.22+], MAX([A.23]) AS [A.23], MAX([A.23+]) AS [A.23+], MAX([A.24]) AS [A.24], MAX([A.24+]) AS [A.24+], MAX([B.01]) AS [B.01], MAX([B.01+]) AS [B.01+], MAX([B.02]) AS [B.02], MAX([B.02+]) AS [B.02+], MAX([B.03]) AS [B.03], MAX([B.03+]) AS [B.03+], MAX([B.04]) AS [B.04], MAX([B.04+]) AS [B.04+], MAX([B.05]) AS [B.05], MAX([B.05+]) AS [B.05+], MAX([B.06]) AS [B.06], MAX([B.06+]) AS [B.06+], MAX([B.07]) AS [B.07], MAX([B.07+]) AS [B.07+], MAX([B.08]) AS [B.08], MAX([B.08+]) AS [B.08+], MAX([B.09]) AS [B.09], MAX([B.09+]) AS [B.09+], MAX([B.10]) AS [B.10], MAX([B.10+]) AS [B.10+], MAX([B.11]) AS [B.11], MAX([B.11+]) AS [B.11+], MAX([B.12]) AS [B.12], MAX([B.12+]) AS [B.12+], MAX([B.13]) AS [B.13], MAX([B.13+]) AS [B.13+], MAX([B.14]) AS [B.14], MAX([B.14+]) AS [B.14+], MAX([B.15]) AS [B.15], MAX([B.15+]) AS [B.15+], MAX([B.16]) AS [B.16], MAX([B.16+]) AS [B.16+], MAX([B.17]) AS [B.17], MAX([B.17+]) AS [B.17+], MAX([B.18]) AS [B.18], MAX([B.18+]) AS [B.18+], MAX([B.19]) AS [B.19], MAX([B.19+]) AS [B.19+], MAX([B.20]) AS [B.20], MAX([B.20+]) AS [B.20+], MAX([B.21]) AS [B.21], MAX([B.21+]) AS [B.21+], MAX([B.22]) AS [B.22], MAX([B.22+]) AS [B.22+], MAX([B.23]) AS [B.23], MAX([B.23+]) AS [B.23+], MAX([B.24]) AS [B.24], MAX([B.24+]) AS [B.24+], MAX([B.25]) AS [B.25], MAX([B.25+]) AS [B.25+], MAX([B.26]) AS [B.26], MAX([B.26+]) AS [B.26+], MAX([B.27]) AS [B.27], MAX([B.27+]) AS [B.27+], MAX([B.28]) AS [B.28], MAX([B.28+]) AS [B.28+], MAX([B.29]) AS [B.29], MAX([B.29+]) AS [B.29+], MAX([B.30]) AS [B.30], MAX([B.30+]) AS [B.30+], MAX([B.31]) AS [B.31], MAX([B.31+]) AS [B.31+], MAX([B.32]) AS [B.32], MAX([B.32+]) AS [B.32+], MAX([B.33]) AS [B.33], MAX([B.33+]) AS [B.33+], MAX([B.34]) AS [B.34], MAX([B.34+]) AS [B.34+], MAX([B.35]) AS [B.35], MAX([B.35+]) AS [B.35+], MAX([B.36]) AS [B.36], MAX([B.36+]) AS [B.36+], MAX([B.37]) AS [B.37], MAX([B.37+]) AS [B.37+], MAX([B.38]) AS [B.38], MAX([B.38+]) AS [B.38+], MAX([C.01]) AS [C.01], MAX([C.01+]) AS [C.01+], MAX([C.02]) AS [C.02], MAX([C.02+]) AS [C.02+], MAX([C.03]) AS [C.03], MAX([C.03+]) AS [C.03+], MAX([C.04]) AS [C.04], MAX([C.04+]) AS [C.04+], MAX([C.05]) AS [C.05], MAX([C.05+]) AS [C.05+], MAX([C.06]) AS [C.06], MAX([C.06+]) AS [C.06+], MAX([C.07]) AS [C.07], MAX([C.07+]) AS [C.07+], MAX([C.08]) AS [C.08], MAX([C.08+]) AS [C.08+], MAX([C.09]) AS [C.09], MAX([C.09+]) AS [C.09+], MAX([C.10]) AS [C.10], MAX([C.10+]) AS [C.10+], MAX([C.11]) AS [C.11], MAX([C.11+]) AS [C.11+], MAX([C.12]) AS [C.12], MAX([C.12+]) AS [C.12+], MAX([C.13]) AS [C.13], MAX([C.13+]) AS [C.13+], MAX([C.14]) AS [C.14], MAX([C.14+]) AS [C.14+], MAX([C.15]) AS [C.15], MAX([C.15+]) AS [C.15+], MAX([C.16]) AS [C.16], MAX([C.16+]) AS [C.16+], MAX([C.17]) AS [C.17], MAX([C.17+]) AS [C.17+], MAX([C.18]) AS [C.18], MAX([C.18+]) AS [C.18+], MAX([C.19]) AS [C.19], MAX([C.19+]) AS [C.19+], MAX([C.20]) AS [C.20], MAX([C.20+]) AS [C.20+], MAX([C.21]) AS [C.21], MAX([C.21+]) AS [C.21+], MAX([C.22]) AS [C.22], MAX([C.22+]) AS [C.22+], MAX([C.23]) AS [C.23], MAX([C.23+]) AS [C.23+], MAX([C.24]) AS [C.24], MAX([C.24+]) AS [C.24+], MAX([C2.01]) AS [C2.01], MAX([C2.01+]) AS [C2.01+], MAX([C2.02]) AS [C2.02], MAX([C2.02+]) AS [C2.02+], MAX([C2.03]) AS [C2.03], MAX([C2.03+]) AS [C2.03+], MAX([C2.04]) AS [C2.04], MAX([C2.04+]) AS [C2.04+], MAX([C2.05]) AS [C2.05], MAX([C2.05+]) AS [C2.05+], MAX([C2.06]) AS [C2.06], MAX([C2.06+]) AS [C2.06+], MAX([C2.07]) AS [C2.07], MAX([C2.07+]) AS [C2.07+], MAX([C2.08]) AS [C2.08], MAX([C2.08+]) AS [C2.08+], MAX([C2.09]) AS [C2.09], MAX([C2.09+]) AS [C2.09+], MAX([C2.10]) AS [C2.10], MAX([C2.10+]) AS [C2.10+], MAX([C2.11]) AS [C2.11], MAX([C2.11+]) AS [C2.11+], MAX([C2.12]) AS [C2.12], MAX([C2.12+]) AS [C2.12+], MAX([C2.13]) AS [C2.13], MAX([C2.13+]) AS [C2.13+], MAX([C2.14]) AS [C2.14], MAX([C2.14+]) AS [C2.14+], MAX([C2.15]) AS [C2.15], MAX([C2.15+]) AS [C2.15+], MAX([C2.16]) AS [C2.16], MAX([C2.16+]) AS [C2.16+], MAX([C2.17]) AS [C2.17], MAX([C2.17+]) AS [C2.17+], MAX([C2.18]) AS [C2.18], MAX([C2.18+]) AS [C2.18+], MAX([C3.01]) AS [C3.01], MAX([C3.01+]) AS [C3.01+], MAX([C3.02]) AS [C3.02], MAX([C3.02+]) AS [C3.02+], MAX([C3.03]) AS [C3.03], MAX([C3.03+]) AS [C3.03+], MAX([C3.04]) AS [C3.04], MAX([C3.04+]) AS [C3.04+], MAX([C3.05]) AS [C3.05], MAX([C3.05+]) AS [C3.05+], MAX([C3.06]) AS [C3.06], MAX([C3.06+]) AS [C3.06+], MAX([C3.07]) AS [C3.07], MAX([C3.07+]) AS [C3.07+], MAX([C3.08]) AS [C3.08], MAX([C3.08+]) AS [C3.08+], MAX([C3.09]) AS [C3.09], MAX([C3.09+]) AS [C3.09+], MAX([C3.10]) AS [C3.10], MAX([C3.10+]) AS [C3.10+], MAX([C3.11]) AS [C3.11], MAX([C3.11+]) AS [C3.11+], MAX([C3.12]) AS [C3.12], MAX([C3.12+]) AS [C3.12+], MAX([C3.13]) AS [C3.13], MAX([C3.13+]) AS [C3.13+], MAX([C3.14]) AS [C3.14], MAX([C3.14+]) AS [C3.14+], MAX([D.01]) AS [D.01], MAX([D.01+]) AS [D.01+], MAX([D.02]) AS [D.02], MAX([D.02+]) AS [D.02+], MAX([D.03]) AS [D.03], MAX([D.03+]) AS [D.03+], MAX([D.04]) AS [D.04], MAX([D.04+]) AS [D.04+], MAX([D.05]) AS [D.05], MAX([D.05+]) AS [D.05+], MAX([D.06]) AS [D.06], MAX([D.06+]) AS [D.06+], MAX([D.07]) AS [D.07], MAX([D.07+]) AS [D.07+], MAX([D.08]) AS [D.08], MAX([D.08+]) AS [D.08+], MAX([D.09]) AS [D.09], MAX([D.09+]) AS [D.09+], MAX([D.10]) AS [D.10], MAX([D.10+]) AS [D.10+], MAX([D.11]) AS [D.11], MAX([D.11+]) AS [D.11+], MAX([D.12]) AS [D.12], MAX([D.12+]) AS [D.12+] FROM (SELECT IdObserver, Teryt, PollingStationNumber,  [A.01],[A.01+], [A.02],[A.02+], [A.03],[A.03+], [A.04],[A.04+], [A.05],[A.05+], [A.06],[A.06+], [A.07],[A.07+], [A.08],[A.08+], [A.09],[A.09+], [A.10],[A.10+], [A.11],[A.11+], [A.12],[A.12+], [A.13],[A.13+], [A.14],[A.14+], [A.15],[A.15+], [A.16],[A.16+], [A.17],[A.17+], [A.18],[A.18+], [A.19],[A.19+], [A.20],[A.20+], [A.21],[A.21+], [A.22],[A.22+], [A.23],[A.23+], [A.24],[A.24+], [B.01],[B.01+], [B.02],[B.02+], [B.03],[B.03+], [B.04],[B.04+], [B.05],[B.05+], [B.06],[B.06+], [B.07],[B.07+], [B.08],[B.08+], [B.09],[B.09+], [B.10],[B.10+], [B.11],[B.11+], [B.12],[B.12+], [B.13],[B.13+], [B.14],[B.14+], [B.15],[B.15+], [B.16],[B.16+], [B.17],[B.17+], [B.18],[B.18+], [B.19],[B.19+], [B.20],[B.20+], [B.21],[B.21+], [B.22],[B.22+], [B.23],[B.23+], [B.24],[B.24+], [B.25],[B.25+], [B.26],[B.26+], [B.27],[B.27+], [B.28],[B.28+], [B.29],[B.29+], [B.30],[B.30+], [B.31],[B.31+], [B.32],[B.32+], [B.33],[B.33+], [B.34],[B.34+], [B.35],[B.35+], [B.36],[B.36+], [B.37],[B.37+], [B.38],[B.38+], [C.01],[C.01+], [C.02],[C.02+], [C.03],[C.03+], [C.04],[C.04+], [C.05],[C.05+], [C.06],[C.06+], [C.07],[C.07+], [C.08],[C.08+], [C.09],[C.09+], [C.10],[C.10+], [C.11],[C.11+], [C.12],[C.12+], [C.13],[C.13+], [C.14],[C.14+], [C.15],[C.15+], [C.16],[C.16+], [C.17],[C.17+], [C.18],[C.18+], [C.19],[C.19+], [C.20],[C.20+], [C.21],[C.21+], [C.22],[C.22+], [C.23],[C.23+], [C.24],[C.24+], [C2.01],[C2.01+], [C2.02],[C2.02+], [C2.03],[C2.03+], [C2.04],[C2.04+], [C2.05],[C2.05+], [C2.06],[C2.06+], [C2.07],[C2.07+], [C2.08],[C2.08+], [C2.09],[C2.09+], [C2.10],[C2.10+], [C2.11],[C2.11+], [C2.12],[C2.12+], [C2.13],[C2.13+], [C2.14],[C2.14+], [C2.15],[C2.15+], [C2.16],[C2.16+], [C2.17],[C2.17+], [C2.18],[C2.18+], [C3.01],[C3.01+], [C3.02],[C3.02+], [C3.03],[C3.03+], [C3.04],[C3.04+], [C3.05],[C3.05+], [C3.06],[C3.06+], [C3.07],[C3.07+], [C3.08],[C3.08+], [C3.09],[C3.09+], [C3.10],[C3.10+], [C3.11],[C3.11+], [C3.12],[C3.12+], [C3.13],[C3.13+], [C3.14],[C3.14+], [D.01],[D.01+], [D.02],[D.02+], [D.03],[D.03+], [D.04],[D.04+], [D.05],[D.05+], [D.06],[D.06+], [D.07],[D.07+], [D.08],[D.08+], [D.09],[D.09+], [D.10],[D.10+], [D.11],[D.11+], [D.12],[D.12+]
    FROM #Answers
    PIVOT(MAX(Text) FOR Code IN ( [A.01],[A.01+], [A.02],[A.02+], [A.03],[A.03+], [A.04],[A.04+], [A.05],[A.05+], [A.06],[A.06+], [A.07],[A.07+], [A.08],[A.08+], [A.09],[A.09+], [A.10],[A.10+], [A.11],[A.11+], [A.12],[A.12+], [A.13],[A.13+], [A.14],[A.14+], [A.15],[A.15+], [A.16],[A.16+], [A.17],[A.17+], [A.18],[A.18+], [A.19],[A.19+], [A.20],[A.20+], [A.21],[A.21+], [A.22],[A.22+], [A.23],[A.23+], [A.24],[A.24+], [B.01],[B.01+], [B.02],[B.02+], [B.03],[B.03+], [B.04],[B.04+], [B.05],[B.05+], [B.06],[B.06+], [B.07],[B.07+], [B.08],[B.08+], [B.09],[B.09+], [B.10],[B.10+], [B.11],[B.11+], [B.12],[B.12+], [B.13],[B.13+], [B.14],[B.14+], [B.15],[B.15+], [B.16],[B.16+], [B.17],[B.17+], [B.18],[B.18+], [B.19],[B.19+], [B.20],[B.20+], [B.21],[B.21+], [B.22],[B.22+], [B.23],[B.23+], [B.24],[B.24+], [B.25],[B.25+], [B.26],[B.26+], [B.27],[B.27+], [B.28],[B.28+], [B.29],[B.29+], [B.30],[B.30+], [B.31],[B.31+], [B.32],[B.32+], [B.33],[B.33+], [B.34],[B.34+], [B.35],[B.35+], [B.36],[B.36+], [B.37],[B.37+], [B.38],[B.38+], [C.01],[C.01+], [C.02],[C.02+], [C.03],[C.03+], [C.04],[C.04+], [C.05],[C.05+], [C.06],[C.06+], [C.07],[C.07+], [C.08],[C.08+], [C.09],[C.09+], [C.10],[C.10+], [C.11],[C.11+], [C.12],[C.12+], [C.13],[C.13+], [C.14],[C.14+], [C.15],[C.15+], [C.16],[C.16+], [C.17],[C.17+], [C.18],[C.18+], [C.19],[C.19+], [C.20],[C.20+], [C.21],[C.21+], [C.22],[C.22+], [C.23],[C.23+], [C.24],[C.24+], [C2.01],[C2.01+], [C2.02],[C2.02+], [C2.03],[C2.03+], [C2.04],[C2.04+], [C2.05],[C2.05+], [C2.06],[C2.06+], [C2.07],[C2.07+], [C2.08],[C2.08+], [C2.09],[C2.09+], [C2.10],[C2.10+], [C2.11],[C2.11+], [C2.12],[C2.12+], [C2.13],[C2.13+], [C2.14],[C2.14+], [C2.15],[C2.15+], [C2.16],[C2.16+], [C2.17],[C2.17+], [C2.18],[C2.18+], [C3.01],[C3.01+], [C3.02],[C3.02+], [C3.03],[C3.03+], [C3.04],[C3.04+], [C3.05],[C3.05+], [C3.06],[C3.06+], [C3.07],[C3.07+], [C3.08],[C3.08+], [C3.09],[C3.09+], [C3.10],[C3.10+], [C3.11],[C3.11+], [C3.12],[C3.12+], [C3.13],[C3.13+], [C3.14],[C3.14+], [D.01],[D.01+], [D.02],[D.02+], [D.03],[D.03+], [D.04],[D.04+], [D.05],[D.05+], [D.06],[D.06+], [D.07],[D.07+], [D.08],[D.08+], [D.09],[D.09+], [D.10],[D.10+], [D.11],[D.11+], [D.12],[D.12+])) AS PVTTable) as pivoted GROUP BY IdObserver, Teryt, PollingStationNumber;