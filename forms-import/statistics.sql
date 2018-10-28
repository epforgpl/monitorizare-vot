SELECT COUNT(TeamId) as wszyscy, COUNT(MobileDeviceId) as zalogowani, sum(case when Observers.MobileDeviceId is null and Phone != '' and TeamId is not null then 1 else 0 end) as niezalogowani_z_tel FROM Observers;

SELECT CountyCode, c.Name, IdPollingStation, COUNT(*) AS answers FROM Answers
  INNER JOIN PollingStations s ON Answers.IdPollingStation = s.Id
  INNER JOIN Counties c ON s.IdCounty = c.Id
  GROUP BY CountyCode, c.Name, IdPollingStation
  ORDER BY CountyCode, IdPollingStation;

-- Notes exported
SELECT Questions.Code, IdObserver, Observers.TeamId, Observers.Name, PollingStations.TerritoryCode AS GminaTeryt, Counties.Name AS GminaNazwa, Counties.PowiatCode AS PowiatTeryt, Powiat.Name AS GminaNazwa,
  PollingStations.Number AS NumerKomisji, dateadd(HOUR, 2, LastModified) AS CzasDodania,
  REPLACE(REPLACE(Notes.Text, CHAR(13), ' '), CHAR(10), ''),
  (CASE WHEN AttachementPath = '' THEN 0 ELSE 1 END) as zdjecie
  FROM Notes
  INNER JOIN Observers ON Notes.IdObserver = Observers.Id
  LEFT OUTER JOIN Questions ON Notes.IdQuestion = Questions.Id
  INNER JOIN PollingStations ON Notes.IdPollingStation = PollingStations.Id
  INNER JOIN (SELECT
     Id, Counties.Code, Counties.Name,
     CASE
     WHEN LEFT(Counties.Code, 4) = '1465' THEN '146501'
     ELSE SUBSTRING(Counties.Code, 0, LEN(Counties.Code) - 1) + '00'
     END AS PowiatCode
   FROM Counties
    ) AS Counties ON Counties.Id = PollingStations.IdCounty
  LEFT OUTER JOIN Powiat ON Counties.PowiatCode = Powiat.Code
  WHERE Notes.LastModified > SMALLDATETIMEFROMPARTS(2018, 10, 22, 11, 44)
  -- WHERE Questions.Code IS NULL
  ORDER BY TeamId, IdObserver, Questions.Code;

-- Linking electoral districts: Powiaty - gminy
SELECT * FROM
  (SELECT
     Id, Code, Name,
     CASE
     WHEN LEFT(Counties.Code, 4) = '1465' THEN '146501'
     ELSE SUBSTRING(Counties.Code, 0, LEN(Counties.Code) - 1) + '00'
     END AS PowiatCode
   FROM Counties
    ) AS Counties
  LEFT OUTER JOIN Powiat ON Counties.PowiatCode = Powiat.Code

-- Where are the teams?
SELECT DISTINCT Counties.Name, Powiat.Name, PollingStations.Number AS NumerKomisji, TeamId, PollingStations.Address
  FROM Answers
  INNER JOIN PollingStations ON Answers.IdPollingStation = PollingStations.Id
  INNER JOIN (SELECT
     Id, Code, Name,
     CASE
     WHEN LEFT(Counties.Code, 4) = '1465' THEN '146501'
     ELSE SUBSTRING(Counties.Code, 0, LEN(Counties.Code) - 1) + '00'
     END AS PowiatCode
   FROM Counties
    ) AS Counties ON Counties.Id = PollingStations.IdCounty
  INNER JOIN Observers ON Answers.IdObserver = Observers.Id
  LEFT OUTER JOIN Powiat ON Counties.PowiatCode = Powiat.Code

  INNER JOIN OptionsToQuestions ON Answers.IdOptionToQuestion = OptionsToQuestions.Id
  INNER JOIN Questions ON OptionsToQuestions.IdQuestion = Questions.Id
  --WHERE Questions.FormCode IN ('C1', 'C2', 'Cg') -- zamkniecia

ORDER BY Powiat.Name, Counties.Name, NumerKomisji
