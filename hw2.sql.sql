CREATE TABLE Countries (countryName VARCHAR(20), 
			latitude VARCHAR(8), 
			longitutde VARCHAR(8), 
			area INT, -- per sq km
			population INT, -- July 2017 est
			gdp FLOAT, -- trillion 2016 est
			gdpYear FLOAT); --trillion 2016 est
INSERT INTO Countries VALUES ('Germany', '51 00 E', '90 00 E', 357022, 80594017, 3.98, 3.467 );
INSERT INTO Countries VALUES ('Netherlands', '52 30 N', '05 45 E', 41543, 17084719, .8694, .7712);
INSERT INTO Countries VALUES ('Belgium', '50 50 N', '04 00 E', 30528, 11491346, .5095, .467);
INSERT INTO Countries VALUES ('Luxemburg', '49 45 N', '06 10 E', 2586, 594130, .05993, .467);
INSERT INTO Countries VALUES ('Poland', '52 00 N', '20 00 E', 312685, 38476269, 1.054, .4676);
INSERT INTO Countries VALUES ('Czech Republic', '49 45 N', '15 30 E', 78867, 10674723, .3507, .193);
INSERT INTO Countries VALUES ('Austria', '47 20 N', '13 20 E', 83871, 8754413, .4172, .3868);
INSERT INTO Countries VALUES ('France', '46 00 N', '02 00 E', 643801, 67106161, 2.734, 2.463);
INSERT INTO Countries VALUES ('Switzerland', '47 00 N', '08 00 E', 41277, 8236303, .496, .6599);

CREATE TABLE Borders (countryName VARCHAR(20), borderTo VARCHAR(20));
INSERT INTO Borders VALUES ('Germany', 'Poland');
INSERT INTO Borders VALUES ('Germany', 'Switzerland');
INSERT INTO Borders VALUES ('Germany', 'Netherlands');
INSERT INTO Borders VALUES ('Germany', 'Belgium');
INSERT INTO Borders VALUES ('Germany', 'Czech Republic');
INSERT INTO Borders VALUES ('Germany', 'Austria');
INSERT INTO Borders VALUES ('Germany', 'Luxemburg');
INSERT INTO Borders VALUES ('Germany', 'France');
INSERT INTO Borders VALUES ('Netherlands', 'Belgium');
INSERT INTO Borders VALUES ('Netherlands', 'Germany');
INSERT INTO Borders VALUES ('Belgium', 'Germany');
INSERT INTO Borders VALUES ('Belgium', 'Netherlands');
INSERT INTO Borders VALUES ('Belgium', 'Luxemburg');
INSERT INTO Borders VALUES ('Belgium', 'France');
INSERT INTO Borders VALUES ('Luxemburg', 'Germany');
INSERT INTO Borders VALUES ('Luxemburg', 'Belgium');
INSERT INTO Borders VALUES ('Luxemburg', 'France');
INSERT INTO Borders VALUES ('Poland', 'Germany');
INSERT INTO Borders VALUES ('Poland', 'Czech Republic');
INSERT INTO Borders VALUES ('Czech Republic', 'Germany');
INSERT INTO Borders VALUES ('Czech Republic', 'Poland');
INSERT INTO Borders VALUES ('Czech Republic', 'Austria');
INSERT INTO Borders VALUES ('Austria', 'Germany');
INSERT INTO Borders VALUES ('Austria', 'Czech Republic');
INSERT INTO Borders VALUES ('Austria', 'Switzerland');
INSERT INTO Borders VALUES ('France', 'Germany');
INSERT INTO Borders VALUES ('France', 'Belgium');
INSERT INTO Borders VALUES ('France', 'Luxemburg');
INSERT INTO Borders VALUES ('France', 'Switzerland');
INSERT INTO Borders VALUES ('Switzerland', 'Germany');
INSERT INTO Borders VALUES ('Switzerland', 'Austria');
INSERT INTO Borders VALUES ('Switzerland', 'France');

SELECT * FROM Borders WHERE borderTo = 'Germany';

SELECT * FROM Countries WHERE population > 35000000;

SELECT Countries.countryName, Countries.population, Borders.borderTo
From Borders
INNER JOIN Countries ON Borders.countryName = Countries.countryName
WHERE population > 35000000 AND borderTo = 'Germany';

  
 
