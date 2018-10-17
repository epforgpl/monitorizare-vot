
-- \{"type": "district", "teryt_parent": (\d+), "number": "(\d+)", "place": "([^"]+)", "accessible": \w+\}
-- INSERT INTO PollingStations (Id, Address, IdCounty, TerritoryCode, Number) VALUES ($1 * 10000 + $2, '$3', (SELECT Id FROM Counties WHERE Code = '$1') , '$1', $2); SET @a = @a + 1;

DECLARE @a int
SET @a = 1
