```sql SELECT COUNT(*) FROM singer; ```
```sql SELECT COUNT(*) AS Total_Singers FROM singer; ```
```sql SELECT Name, Country, Age  FROM singer  ORDER BY Age DESC; ```
```sql SELECT Name, Country, Age  FROM singer  ORDER BY Age DESC; ```
```sql SELECT AVG(Age) AS Average_Age, MIN(Age) AS Minimum_Age, MAX(Age) AS Maximum_Age FROM singer WHERE Country = 'France'; ```
```sql SELECT AVG(Age) AS Average_Age, MIN(Age) AS Minimum_Age, MAX(Age) AS Maximum_Age FROM singer WHERE Country = 'France'; ```
```sql SELECT Song_Name, Song_release_year FROM singer ORDER BY Age ASC LIMIT 1; ```
```sql SELECT Song_Name, Song_release_year FROM singer ORDER BY Age ASC LIMIT 1; ```
```sql SELECT DISTINCT Country FROM singer WHERE Age > 20; ```
```sql SELECT DISTINCT Country FROM singer WHERE Age > 20; ```
```sql SELECT Country, COUNT(*) AS Number_of_Singers FROM singer GROUP BY Country; ```
```sql SELECT Country, COUNT(*) AS Number_of_Singers FROM singer GROUP BY Country; ```
```sql SELECT Song_Name FROM singer WHERE Age > (SELECT AVG(Age) FROM singer); ```
```sql SELECT Song_Name FROM singer WHERE Age > (SELECT AVG(Age) FROM singer); ```
```sql SELECT Location, Name  FROM stadium  WHERE Capacity BETWEEN 5000 AND 10000; ```
```sql SELECT Location, Name FROM stadium WHERE Capacity BETWEEN 5000 AND 10000; ```
```sql SELECT MAX(Capacity) AS Max_Capacity, AVG(Capacity) AS Average_Capacity FROM stadium; ```
```sql SELECT AVG(Capacity) AS Average_Capacity, MAX(Capacity) AS Maximum_Capacity FROM stadium; ```
```sql SELECT Name, Capacity FROM stadium ORDER BY Average DESC LIMIT 1; ```
```sql SELECT Name, Capacity FROM stadium WHERE Average = (SELECT MAX(Average) FROM stadium); ```
```sql SELECT COUNT(*) FROM concert WHERE YEAR IN (2014, 2015); ```
```sql SELECT COUNT(*) FROM concert WHERE Year IN (2014, 2015); ```
```sql SELECT s.Name, COUNT(c.concert_ID) AS Number_of_Concerts FROM stadium s JOIN concert c ON s.Stadium_ID = c.Stadium_ID GROUP BY s.Name; ```
```sql SELECT s.Name, COUNT(c.concert_ID) AS Number_of_Concerts FROM stadium s JOIN concert c ON s.Stadium_ID = c.Stadium_ID GROUP BY s.Name; ```
```sql SELECT s.Name, s.Capacity FROM stadium s JOIN concert c ON s.Stadium_ID = c.Stadium_ID WHERE c.Year >= 2014 GROUP BY s.Stadium_ID ORDER BY COUNT(c.concert_ID) DESC LIMIT 1; ```
```sql SELECT s.Name, s.Capacity FROM stadium s JOIN concert c ON s.Stadium_ID = c.Stadium_ID WHERE c.Year > 2013 GROUP BY s.Stadium_ID ORDER BY COUNT(c.concert_ID) DESC LIMIT 1; ```
```sql SELECT Year  FROM concert  GROUP BY Year  ORDER BY COUNT(*) DESC  LIMIT 1; ```
```sql SELECT Year FROM concert GROUP BY Year ORDER BY COUNT(*) DESC LIMIT 1; ```
```sql SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert); ```
```sql SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert); ```
```sql SELECT Country  FROM singer  WHERE Age > 40  INTERSECT  SELECT Country  FROM singer  WHERE Age < 30; ```
```sql SELECT Name FROM stadium WHERE Stadium_ID NOT IN (     SELECT Stadium_ID     FROM concert     WHERE Year = 2014 ); ```
```sql SELECT Name FROM stadium WHERE Stadium_ID NOT IN (     SELECT Stadium_ID     FROM concert     WHERE Year = 2014 ); ```
```sql SELECT      c.concert_Name,      c.Theme,      COUNT(sc.Singer_ID) AS Number_of_Singers FROM      concert c JOIN      singer_in_concert sc ON c.concert_ID = sc.concert_ID GROUP BY      c.concert_ID,      c.concert_Name,      c.Theme; ```
```sql SELECT concert.concert_Name, concert.Theme, COUNT(singer_in_concert.Singer_ID) AS Number_of_Singers FROM concert JOIN singer_in_concert ON concert.concert_ID = singer_in_concert.concert_ID GROUP BY concert.concert_ID, concert.concert_Name, concert.Theme; ```
```sql SELECT s.Name, COUNT(si.concert_ID) AS Number_of_Concerts FROM singer s JOIN singer_in_concert si ON s.Singer_ID = si.Singer_ID GROUP BY s.Name; ```
```sql SELECT s.Name, COUNT(sc.concert_ID) AS Number_of_Concerts FROM singer s JOIN singer_in_concert sc ON s.Singer_ID = sc.Singer_ID GROUP BY s.Name; ```
```sql SELECT s.Name FROM singer s JOIN singer_in_concert sic ON s.Singer_ID = sic.Singer_ID JOIN concert c ON sic.concert_ID = c.concert_ID WHERE c.Year = 2014; ```
```sql SELECT s.Name FROM singer s JOIN singer_in_concert sic ON s.Singer_ID = sic.Singer_ID JOIN concert c ON sic.concert_ID = c.concert_ID WHERE c.Year = 2014; ```
```sql SELECT Name, Country FROM singer WHERE Song_Name LIKE '%Hey%'; ```
```sql SELECT Name, Country FROM singer WHERE Song_Name LIKE '%Hey%'; ```
```sql SELECT s.Name, s.Location FROM stadium s JOIN concert c ON s.Stadium_ID = c.Stadium_ID WHERE c.Year = 2014 INTERSECT SELECT s.Name, s.Location FROM stadium s JOIN concert c ON s.Stadium_ID = c.Stadium_ID WHERE c.Year = 2015; ```
```sql SELECT s.Name, s.Location FROM stadium s JOIN concert c ON s.Stadium_ID = c.Stadium_ID WHERE c.Year IN (2014, 2015) GROUP BY s.Stadium_ID HAVING COUNT(DISTINCT c.Year) = 2; ```
```sql SELECT COUNT(*) AS NumberOfConcerts FROM concert JOIN stadium ON concert.Stadium_ID = stadium.Stadium_ID WHERE stadium.Capacity = (SELECT MAX(Capacity) FROM stadium); ```
```sql SELECT COUNT(*) AS Number_of_Concerts FROM concert JOIN stadium ON concert.Stadium_ID = stadium.Stadium_ID WHERE stadium.Capacity = (SELECT MAX(Capacity) FROM stadium); ```
```sql SELECT COUNT(*) FROM Pets WHERE weight > 10; ```
```sql SELECT COUNT(*) FROM Pets WHERE weight > 10; ```
```sql SELECT Pets.weight FROM Pets JOIN Has_Pet ON Pets.PetID = Has_Pet.PetID JOIN Student ON Has_Pet.StuID = Student.StuID WHERE Pets.PetType = 'dog' ORDER BY Pets.pet_age ASC LIMIT 1; ```
```sql SELECT MIN(weight) AS youngest_dog_weight FROM Pets WHERE PetType = 'Dog'; ```
```sql SELECT Pets.PetType, MAX(Pets.weight) AS MaxWeight FROM Pets JOIN Has_Pet ON Pets.PetID = Has_Pet.PetID GROUP BY Pets.PetType; ```
```sql SELECT PetType, MAX(weight) AS MaxWeight FROM Pets GROUP BY PetType; ```
```sql SELECT COUNT(*)  FROM Student s JOIN Has_Pet hp ON s.StuID = hp.StuID WHERE s.Age > 20; ```
```sql SELECT COUNT(*)  FROM Has_Pet HP JOIN Student S ON HP.StuID = S.StuID WHERE S.Age > 20; ```
```sql SELECT COUNT(*)  FROM Has_Pet HP JOIN Student S ON HP.StuID = S.StuID JOIN Pets P ON HP.PetID = P.PetID WHERE S.Sex = 'F' AND P.PetType = 'dog'; ```
```sql SELECT COUNT(*)  FROM Student s JOIN Has_Pet hp ON s.StuID = hp.StuID JOIN Pets p ON hp.PetID = p.PetID WHERE s.Sex = 'Female' AND p.PetType = 'Dog'; ```
```sql SELECT COUNT(DISTINCT PetType) AS NumberOfDistinctPetTypes FROM Pets; ```
```sql SELECT COUNT(DISTINCT PetType) AS NumberOfDifferentPetTypes FROM Pets; ```
```sql SELECT S.Fname FROM Student S JOIN Has_Pet HP ON S.StuID = HP.StuID JOIN Pets P ON HP.PetID = P.PetID WHERE P.PetType IN ('cat', 'dog'); ```
```sql SELECT S.Fname FROM Student S JOIN Has_Pet HP ON S.StuID = HP.StuID JOIN Pets P ON HP.PetID = P.PetID WHERE P.PetType IN ('cat', 'dog'); ```
```sql SELECT S.Fname FROM Student S JOIN Has_Pet HP ON S.StuID = HP.StuID JOIN Pets P ON HP.PetID = P.PetID WHERE P.PetType IN ('cat', 'dog') GROUP BY S.StuID, S.Fname HAVING COUNT(DISTINCT P.PetType) = 2; ```
```sql SELECT S.Fname FROM Student S JOIN Has_Pet HP ON S.StuID = HP.StuID JOIN Pets P ON HP.PetID = P.PetID WHERE P.PetType IN ('Cat', 'Dog') GROUP BY S.StuID, S.Fname HAVING COUNT(DISTINCT P.PetType) = 2; ```
```sql SELECT Major, Age FROM Student WHERE StuID NOT IN (     SELECT StuID     FROM Has_Pet     JOIN Pets ON Has_Pet.PetID = Pets.PetID     WHERE PetType = 'cat' ); ```
```sql SELECT S.Major, S.Age FROM Student S WHERE S.StuID NOT IN (     SELECT HP.StuID     FROM Has_Pet HP     JOIN Pets P ON HP.PetID = P.PetID     WHERE P.PetType = 'cat' ); ```
```sql SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet JOIN Pets ON Has_Pet.PetID = Pets.PetID WHERE Pets.PetType = 'cat'); ```
```sql SELECT StuID FROM Student WHERE StuID NOT IN (     SELECT StuID     FROM Has_Pet     JOIN Pets ON Has_Pet.PetID = Pets.PetID     WHERE Pets.PetType = 'cat' ); ```
```sql SELECT s.Fname, s.Age FROM Student s JOIN Has_Pet hp ON s.StuID = hp.StuID JOIN Pets p ON hp.PetID = p.PetID WHERE p.PetType = 'dog' AND s.StuID NOT IN (     SELECT hp.StuID     FROM Has_Pet hp     JOIN Pets p ON hp.PetID = p.PetID     WHERE p.PetType = 'cat' ); ```
```sql SELECT S.Fname FROM Student S JOIN Has_Pet HP ON S.StuID = HP.StuID JOIN Pets P ON HP.PetID = P.PetID WHERE P.PetType = 'dog' AND S.StuID NOT IN (     SELECT HP2.StuID     FROM Has_Pet HP2     JOIN Pets P2 ON HP2.PetID = P2.PetID     WHERE P2.PetType = 'cat' ); ```
```sql SELECT PetType, weight FROM Pets ORDER BY pet_age ASC LIMIT 1; ```
```sql SELECT PetType, weight  FROM Pets  ORDER BY pet_age ASC  LIMIT 1; ```
```sql SELECT PetID, weight FROM Pets WHERE pet_age > 1; ```
```sql SELECT PetID, weight FROM Pets WHERE pet_age > 1; ```
```sql SELECT Pets.PetType, AVG(Pets.pet_age) AS AverageAge, MAX(Pets.pet_age) AS MaximumAge FROM Pets JOIN Has_Pet ON Pets.PetID = Has_Pet.PetID GROUP BY Pets.PetType; ```
```sql SELECT Pets.PetType, AVG(Pets.pet_age) AS AverageAge, MAX(Pets.pet_age) AS MaximumAge FROM Pets JOIN Has_Pet ON Pets.PetID = Has_Pet.PetID GROUP BY Pets.PetType; ```
```sql SELECT Pets.PetType, AVG(Pets.weight) AS AverageWeight FROM Pets JOIN Has_Pet ON Pets.PetID = Has_Pet.PetID GROUP BY Pets.PetType; ```
```sql SELECT Pets.PetType, AVG(Pets.weight) AS AverageWeight FROM Pets JOIN Has_Pet ON Pets.PetID = Has_Pet.PetID GROUP BY Pets.PetType; ```
```sql SELECT S.Fname, S.Age FROM Student S JOIN Has_Pet HP ON S.StuID = HP.StuID; ```
```sql SELECT DISTINCT S.Fname, S.Age FROM Student S JOIN Has_Pet HP ON S.StuID = HP.StuID; ```
```sql SELECT PetID FROM Has_Pet WHERE StuID = (SELECT StuID FROM Student WHERE LName = 'Smith'); ```
```sql SELECT PetID FROM Has_Pet WHERE StuID = (SELECT StuID FROM Student WHERE LName = 'Smith'); ```
```sql SELECT Student.StuID, COUNT(Has_Pet.PetID) AS NumberOfPets FROM Student JOIN Has_Pet ON Student.StuID = Has_Pet.StuID GROUP BY Student.StuID; ```
```sql SELECT StuID, COUNT(PetID) AS NumberOfPets FROM Has_Pet GROUP BY StuID; ```
```sql SELECT S.Fname, S.Sex FROM Student S JOIN Has_Pet HP ON S.StuID = HP.StuID GROUP BY S.StuID, S.Fname, S.Sex HAVING COUNT(HP.PetID) > 1; ```
```sql SELECT S.Fname, S.Sex FROM Student S JOIN Has_Pet HP ON S.StuID = HP.StuID GROUP BY S.StuID, S.Fname, S.Sex HAVING COUNT(HP.PetID) > 1; ```
```sql SELECT S.LName FROM Student S JOIN Has_Pet HP ON S.StuID = HP.StuID JOIN Pets P ON HP.PetID = P.PetID WHERE P.PetType = 'cat' AND P.pet_age = 3; ```
```sql SELECT Student.LName FROM Student JOIN Has_Pet ON Student.StuID = Has_Pet.StuID JOIN Pets ON Has_Pet.PetID = Pets.PetID WHERE Pets.PetType = 'cat' AND Pets.pet_age = 3; ```
```sql SELECT AVG(Age)  FROM Student  WHERE StuID NOT IN (SELECT StuID FROM Has_Pet); ```
```sql SELECT AVG(Age)  FROM Student  WHERE StuID NOT IN (SELECT StuID FROM Has_Pet); ```
```sql SELECT COUNT(*) FROM continents; ```
```sql SELECT COUNT(*) AS NumberOfContinents FROM continents; ```
```sql SELECT c.ContId, c.Continent, COUNT(cn.CountryId) AS NumberOfCountries FROM continents c JOIN countries cn ON c.ContId = cn.Continent GROUP BY c.ContId, c.Continent; ```
```sql SELECT      c.ContId AS ContinentId,     c.Continent AS ContinentName,     COUNT(cn.CountryId) AS NumberOfCountries FROM      continents c JOIN      countries cn ON c.ContId = cn.Continent GROUP BY      c.ContId, c.Continent; ```
```sql SELECT COUNT(CountryId) AS NumberOfCountries FROM countries; ```
```sql SELECT COUNT(CountryId) AS NumberOfCountries FROM countries; ```
```sql SELECT      cm.FullName,      cm.Id,      COUNT(ml.Model) AS NumberOfModels FROM      car_makers cm JOIN      model_list ml ON cm.Id = ml.Maker GROUP BY      cm.FullName,      cm.Id; ```
```sql SELECT cm.Id, cm.Maker, cm.FullName, COUNT(ml.ModelId) AS ModelCount FROM car_makers cm JOIN model_list ml ON cm.Id = ml.Maker GROUP BY cm.Id, cm.Maker, cm.FullName; ```
```sql SELECT Model FROM car_names JOIN model_list ON car_names.Model = model_list.Model ORDER BY Horsepower ASC LIMIT 1; ```
```sql SELECT Model FROM car_names JOIN model_list ON car_names.Model = model_list.Model JOIN car_makers ON model_list.Maker = car_makers.Id JOIN cars_data ON car_names.MakeId = cars_data.MakeId ORDER BY Horsepower ASC LIMIT 1; ```
```sql SELECT model FROM car_names JOIN car_makers ON car_names.MakeId = car_makers.Id JOIN model_list ON car_makers.Maker = model_list.Maker WHERE weight < (SELECT AVG(weight) FROM cars_data); ```
```sql SELECT Model FROM car_names JOIN model_list ON car_names.Model = model_list.Model WHERE Weight < (SELECT AVG(Weight) FROM cars_data); ```
```sql SELECT DISTINCT cm.Maker FROM car_makers cm JOIN model_list ml ON cm.Id = ml.Maker JOIN car_names cn ON ml.Model = cn.Model JOIN cars_data cd ON cn.MakeId = cd.MakeId WHERE cd.Year = 1970; ```
```sql SELECT DISTINCT car_makers.Maker FROM car_makers JOIN car_names ON car_makers.Id = car_names.MakeId JOIN cars_data ON car_names.MakeId = cars_data.MakeId WHERE cars_data.Year = 1970; ```
```sql SELECT car_names.Make, cars_data.Year FROM car_names JOIN cars_data ON car_names.MakeId = cars_data.MakeId ORDER BY cars_data.Year ASC LIMIT 1; ```
```sql SELECT T3.Make, T1.Year FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.MakeId JOIN model_list AS T3 ON T2.Model = T3.Model ORDER BY T1.Year ASC LIMIT 1; ```
```sql SELECT DISTINCT Model FROM car_names JOIN model_list ON car_names.Model = model_list.Model JOIN cars_data ON car_names.MakeId = cars_data.MakeId WHERE cars_data.Year > 1980; ```
```sql SELECT DISTINCT Model  FROM car_names  JOIN model_list ON car_names.Model = model_list.Model  JOIN car_makers ON model_list.Maker = car_makers.Id  JOIN cars_data ON car_names.MakeId = cars_data.MakeId  WHERE Year > 1980; ```
```sql SELECT c.Continent, COUNT(cm.Id) AS MakerCount FROM continents c JOIN countries co ON c.ContId = co.Continent JOIN car_makers cm ON co.CountryId = cm.Country GROUP BY c.Continent; ```
```sql SELECT c.Continent, COUNT(cm.Id) AS NumberOfCarMakers FROM continents c JOIN countries co ON c.ContId = co.Continent JOIN car_makers cm ON co.CountryId = cm.Country GROUP BY c.Continent; ```
```sql SELECT c.CountryName FROM countries c JOIN car_makers cm ON c.CountryId = cm.Country GROUP BY c.CountryName ORDER BY COUNT(cm.Id) DESC LIMIT 1; ```
```sql SELECT c.CountryName FROM countries c JOIN car_makers cm ON c.CountryId = cm.Country GROUP BY c.CountryName ORDER BY COUNT(cm.Id) DESC LIMIT 1; ```
```sql SELECT car_makers.FullName, COUNT(model_list.Model) AS ModelCount FROM car_makers JOIN model_list ON car_makers.Id = model_list.Maker GROUP BY car_makers.FullName; ```
```sql SELECT cm.Maker, cm.FullName, COUNT(ml.ModelId) AS NumberOfModels FROM car_makers cm JOIN model_list ml ON cm.Id = ml.Maker GROUP BY cm.Maker, cm.FullName; ```
```sql SELECT accelerate  FROM cars_data  JOIN car_names ON cars_data.MakeId = car_names.MakeId  JOIN model_list ON car_names.Model = model_list.Model  JOIN car_makers ON model_list.Maker = car_makers.Maker  WHERE car_makers.Make = 'AMC' AND car_names.Model = 'Hornet Sportabout (SW)'; ```
```sql SELECT Accelerate FROM cars_data JOIN car_names ON cars_data.MakeId = car_names.MakeId JOIN model_list ON car_names.Model = model_list.Model JOIN car_makers ON model_list.Maker = car_makers.Maker WHERE car_names.Make = 'AMC' AND car_names.Model = 'Hornet Sportabout (SW)'; ```
```sql SELECT COUNT(*) AS NumberOfCarMakers FROM car_makers JOIN countries ON car_makers.Country = countries.CountryId WHERE countries.CountryName = 'France'; ```
```sql SELECT COUNT(*)  FROM car_makers  JOIN countries ON car_makers.Country = countries.CountryId  WHERE countries.CountryName = 'France'; ```
```sql SELECT COUNT(*)  FROM car_names  JOIN model_list ON car_names.Model = model_list.Model  JOIN car_makers ON model_list.Maker = car_makers.Id  JOIN countries ON car_makers.Country = countries.CountryId  JOIN continents ON countries.Continent = continents.ContId  WHERE continents.Continent = 'USA'; ```
```sql SELECT COUNT(*)  FROM car_names  JOIN model_list ON car_names.Model = model_list.Model  JOIN car_makers ON model_list.Maker = car_makers.Id  JOIN countries ON car_makers.Country = countries.CountryId  WHERE countries.CountryName = 'United States'; ```
```sql SELECT AVG(MPG) AS AverageMPG FROM cars_data WHERE Cylinders = 4; ```
```sql SELECT AVG(MPG) AS AverageMPG FROM cars_data WHERE Cylinders = 4; ```
```sql SELECT MIN(Weight) AS MinWeight FROM cars_data WHERE Cylinders = 8 AND Year = 1974; ```
```sql SELECT MIN(Weight)  FROM cars_data  WHERE Cylinders = 8 AND Year = 1974; ```
```sql SELECT DISTINCT Maker, Model FROM model_list; ```
```sql SELECT Maker, Model FROM model_list; ```
```sql SELECT CountryName, CountryId FROM countries WHERE CountryId IN (     SELECT Country     FROM car_makers     GROUP BY Country     HAVING COUNT(*) >= 1 ); ```
```sql SELECT CountryName, CountryId FROM countries WHERE CountryId IN (SELECT Country FROM car_makers); ```
```sql SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150; ```
```sql SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150; ```
```sql SELECT Year, AVG(Weight) AS AverageWeight FROM cars_data GROUP BY Year; ```
```sql SELECT YEAR, AVG(Weight) AS AverageWeight FROM cars_data GROUP BY YEAR; ```
```sql SELECT c.CountryName FROM countries c JOIN continents co ON c.ContId = co.ContId JOIN car_makers cm ON c.CountryId = cm.Country WHERE co.Continent = 'Europe' GROUP BY c.CountryName HAVING COUNT(cm.Id) >= 3; ```
```sql SELECT c.CountryName FROM countries c JOIN continents ct ON c.ContId = ct.ContId JOIN car_makers cm ON c.CountryId = cm.Country WHERE ct.Continent = 'Europe' GROUP BY c.CountryName HAVING COUNT(cm.Id) >= 3; ```
```sql SELECT MAX(Horsepower), Make FROM cars_data JOIN car_names ON cars_data.MakeId = car_names.MakeId WHERE Cylinders = 3; ```
```sql SELECT MAX(Horsepower), Make FROM cars_data JOIN car_names ON cars_data.MakeId = car_names.MakeId WHERE Cylinders = 3; ```
```sql SELECT Model FROM model_list JOIN car_names ON model_list.Model = car_names.Model JOIN cars_data ON car_names.MakeId = cars_data.MakeId ORDER BY MPG DESC LIMIT 1; ```
```sql SELECT Model FROM car_names JOIN cars_data ON car_names.MakeId = cars_data.MakeId ORDER BY MPG DESC LIMIT 1; ```
```sql SELECT AVG(Horsepower)  FROM cars_data  WHERE Year < 1980; ```
```sql SELECT AVG(Horsepower)  FROM cars_data  WHERE Year < 1980; ```
```sql SELECT AVG(cars_data.Edispl) FROM cars_data JOIN car_names ON cars_data.MakeId = car_names.MakeId JOIN model_list ON car_names.Model = model_list.Model WHERE model_list.Model = 'volvo'; ```
```sql SELECT AVG(cars_data.Edispl) FROM cars_data JOIN car_names ON cars_data.MakeId = car_names.MakeId JOIN model_list ON car_names.Model = model_list.Model JOIN car_makers ON model_list.Maker = car_makers.Maker WHERE car_makers.Maker = 'Volvo'; ```
```sql SELECT Cylinders, MAX(Accelerate) AS MaxAccelerate FROM cars_data GROUP BY Cylinders; ```
```sql SELECT Cylinders, MAX(Accelerate) AS MaxAccelerate FROM cars_data GROUP BY Cylinders; ```
```sql SELECT Model FROM model_list JOIN car_names ON model_list.ModelId = car_names.Model GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1; ```
```sql SELECT Model, COUNT(DISTINCT Make) AS VersionCount FROM car_names JOIN model_list ON car_names.Model = model_list.Model GROUP BY Model ORDER BY VersionCount DESC LIMIT 1; ```
```sql SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4; ```
```sql SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4; ```
```sql SELECT COUNT(*)  FROM cars_data  WHERE Year = 1980; ```
```sql SELECT COUNT(*)  FROM cars_data  WHERE Year = 1980; ```
```sql SELECT COUNT(*)  FROM car_names  JOIN model_list ON car_names.Model = model_list.Model  JOIN car_makers ON model_list.Maker = car_makers.Id  WHERE car_makers.FullName = 'American Motor Company'; ```
```sql SELECT COUNT(*)  FROM model_list  JOIN car_makers ON model_list.Maker = car_makers.Id  WHERE car_makers.FullName = 'American Motor Company'; ```
```sql SELECT cm.Maker, cm.FullName, cm.Id FROM car_makers cm JOIN model_list ml ON cm.Id = ml.Maker GROUP BY cm.Maker, cm.FullName, cm.Id HAVING COUNT(ml.Model) > 3; ```
```sql SELECT m.Maker, m.Id FROM car_makers m JOIN model_list ml ON m.Id = ml.Maker GROUP BY m.Maker, m.Id HAVING COUNT(ml.Model) > 3; ```
```sql SELECT DISTINCT cn.Model FROM car_names cn JOIN model_list ml ON cn.Model = ml.Model JOIN car_makers cm ON ml.Maker = cm.Id JOIN cars_data cd ON cn.MakeId = cd.MakeId WHERE (cm.FullName = 'General Motors' OR cd.Weight > 3500); ```
```sql SELECT DISTINCT Model FROM model_list JOIN car_names ON model_list.Model = car_names.Model WHERE Maker = 'General Motors' UNION SELECT DISTINCT Model FROM cars_data JOIN car_names ON cars_data.MakeId = car_names.MakeId WHERE Weight > 3500; ```
```sql SELECT Year FROM cars_data WHERE Weight BETWEEN 3000 AND 4000; ```
```sql SELECT DISTINCT Year FROM cars_data WHERE Weight < 4000 AND Year IN (     SELECT Year     FROM cars_data     WHERE Weight > 3000 ); ```
```sql SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1; ```
```sql SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1; ```
```sql SELECT Cylinders FROM cars_data JOIN car_names ON cars_data.MakeId = car_names.MakeId JOIN model_list ON car_names.Model = model_list.Model WHERE Model = 'volvo' ORDER BY Accelerate ASC LIMIT 1; ```
```sql SELECT Cylinders FROM cars_data JOIN car_names ON cars_data.MakeId = car_names.MakeId JOIN model_list ON car_names.Model = model_list.Model JOIN car_makers ON model_list.Maker = car_makers.Maker WHERE car_makers.Maker = 'Volvo' ORDER BY Accelerate ASC LIMIT 1; ```
```sql SELECT COUNT(*)  FROM cars_data  WHERE Accelerate > (SELECT MAX(Horsepower) FROM cars_data); ```
```sql SELECT COUNT(*)  FROM cars_data  WHERE Accelerate > (SELECT MAX(Horsepower) FROM cars_data); ```
```sql SELECT COUNT(*)  FROM countries  WHERE CountryId IN (     SELECT CountryId      FROM car_makers      GROUP BY CountryId      HAVING COUNT(Id) > 2 ); ```
```sql SELECT COUNT(CountryId)  FROM car_makers  GROUP BY Country  HAVING COUNT(Maker) > 2; ```
```sql SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6; ```
```sql SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6; ```
```sql SELECT cn.Make, ml.Model, cd.Horsepower FROM cars_data cd JOIN car_names cn ON cd.MakeId = cn.MakeId JOIN model_list ml ON cn.Model = ml.Model WHERE cd.Cylinders = 4 ORDER BY cd.Horsepower DESC LIMIT 1; ```
```sql SELECT cn.Make, ml.Model, cd.Horsepower FROM cars_data cd JOIN car_names cn ON cd.MakeId = cn.MakeId JOIN model_list ml ON cn.Model = ml.Model WHERE cd.Cylinders = 4 ORDER BY cd.Horsepower DESC LIMIT 1; ```
```sql SELECT cn.MakeId, cn.Make FROM car_names cn JOIN cars_data cd ON cn.MakeId = cd.MakeId WHERE cd.Horsepower > (SELECT MIN(Horsepower) FROM cars_data)   AND cd.Cylinders <= 3; ```
```sql SELECT cn.MakeId, cn.Make FROM car_names cn JOIN cars_data cd ON cn.MakeId = cd.MakeId WHERE cd.Horsepower > (SELECT MIN(Horsepower) FROM cars_data) AND cd.Cylinders < 4; ```
```sql SELECT MAX(MPG)  FROM cars_data  WHERE Cylinders = 8 OR Year < 1980; ```
```sql SELECT MAX(MPG)  FROM cars_data  WHERE Cylinders = 8 OR Year < 1980; ```
```sql SELECT Model FROM car_names JOIN model_list ON car_names.Model = model_list.Model JOIN car_makers ON model_list.Maker = car_makers.Id JOIN cars_data ON car_names.MakeId = cars_data.MakeId WHERE Weight < 3500 AND car_makers.Maker != 'Ford Motor Company'; ```
```sql SELECT DISTINCT Model FROM car_names JOIN model_list ON car_names.Model = model_list.Model JOIN car_makers ON model_list.Maker = car_makers.Id JOIN cars_data ON car_names.MakeId = cars_data.MakeId WHERE Weight < 3500 AND car_makers.Maker != 'Ford Motor Company'; ```
```sql SELECT CountryName FROM countries WHERE CountryId NOT IN (SELECT Country FROM car_makers); ```
```sql SELECT CountryName FROM countries WHERE CountryId NOT IN (SELECT Country FROM car_makers); ```
```sql SELECT cm.Id, cm.Maker FROM car_makers cm JOIN model_list ml ON cm.Id = ml.Maker GROUP BY cm.Id, cm.Maker HAVING COUNT(ml.ModelId) >= 2 ```
```sql SELECT cm.Id, cm.Maker FROM car_makers cm JOIN model_list ml ON cm.Id = ml.Maker JOIN car_names cn ON ml.Model = cn.Model GROUP BY cm.Id, cm.Maker HAVING COUNT(ml.Model) >= 2 AND COUNT(cn.Make) > 3; ```
```sql SELECT c.CountryId, c.CountryName FROM countries c JOIN car_makers cm ON c.CountryId = cm.Country JOIN model_list ml ON cm.Id = ml.Maker JOIN car_names cn ON ml.Model = cn.Model WHERE ml.Model = 'fiat' GROUP BY c.CountryId, c.CountryName HAVING COUNT(cm.Id) > 3; ```
```sql SELECT c.CountryId, c.CountryName FROM countries c JOIN car_makers cm ON c.CountryId = cm.Country JOIN model_list ml ON cm.Id = ml.Maker JOIN car_names cn ON ml.Model = cn.Model WHERE (SELECT COUNT(*) FROM car_makers WHERE Country = c.CountryId) > 3    OR cn.Make = 'Fiat'; ```
```sql SELECT Country FROM airlines WHERE Airline = 'JetBlue Airways'; ```
```sql SELECT Country FROM airlines WHERE Airline = 'Jetblue Airways'; ```
```sql SELECT Abbreviation FROM airlines WHERE Airline = 'JetBlue Airways'; ```
```sql SELECT Abbreviation FROM airlines WHERE Airline = 'Jetblue Airways'; ```
```sql SELECT A.Airline, A.Abbreviation FROM airlines A JOIN flights F ON A.uid = F.Airline JOIN airports AP ON F.DestAirport = AP.AirportCode WHERE AP.Country = 'USA'; ```
```sql SELECT Airline, Abbreviation FROM airlines WHERE Country = 'USA'; ```
```sql SELECT AirportCode, AirportName FROM airports WHERE City = 'Anthony'; ```
```sql SELECT AirportCode, AirportName FROM airports WHERE City = 'Anthony'; ```
```sql SELECT COUNT(*) FROM airlines; ```
```sql SELECT COUNT(*) AS TotalAirlines FROM airlines; ```
```sql SELECT COUNT(*) AS TotalAirports FROM airports; ```
```sql SELECT COUNT(*) AS NumberOfAirports FROM airports; ```
```sql SELECT COUNT(*) AS TotalFlights FROM flights; ```
```sql SELECT COUNT(*) AS NumberOfFlights FROM flights; ```
```sql SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'; ```
```sql SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'; ```
```sql SELECT COUNT(*) FROM airlines WHERE Country = 'USA'; ```
```sql SELECT COUNT(*) FROM airlines WHERE Country = 'USA'; ```
```sql SELECT City, Country FROM airports WHERE AirportName = 'Alton'; ```
```sql SELECT City, Country  FROM airports  WHERE AirportName = 'Alton'; ```
```sql SELECT AirportName FROM airports WHERE AirportCode = 'AKO'; ```
```sql SELECT AirportName FROM airports WHERE AirportCode = 'AKO'; ```
```sql SELECT AirportName FROM airports WHERE City = 'Aberdeen'; ```
```sql SELECT AirportName FROM airports WHERE City = 'Aberdeen'; ```
```sql SELECT COUNT(*) FROM flights WHERE SourceAirport = 'APG'; ```
```sql SELECT COUNT(*)  FROM flights  JOIN airports ON flights.SourceAirport = airports.AirportCode  WHERE airports.AirportName = 'APG'; ```
```sql SELECT COUNT(*) FROM flights WHERE DestAirport = 'ATO'; ```
```sql SELECT COUNT(*) AS NumberOfFlights FROM flights JOIN airports ON flights.DestAirport = airports.AirportCode WHERE airports.AirportName = 'ATO'; ```
```sql SELECT COUNT(*)  FROM flights  JOIN airports ON flights.SourceAirport = airports.AirportCode  WHERE airports.City = 'Aberdeen'; ```
```sql SELECT COUNT(*) AS NumberOfFlights FROM flights JOIN airports ON flights.SourceAirport = airports.AirportCode WHERE airports.City = 'Aberdeen'; ```
```sql SELECT COUNT(*) AS NumberOfFlights FROM flights JOIN airports ON flights.DestAirport = airports.AirportCode WHERE airports.City = 'Aberdeen'; ```
```sql SELECT COUNT(*)  FROM flights  JOIN airports ON flights.DestAirport = airports.AirportCode  WHERE airports.City = 'Aberdeen'; ```
```sql SELECT COUNT(*)  FROM flights  JOIN airports AS source ON flights.SourceAirport = source.AirportCode  JOIN airports AS destination ON flights.DestAirport = destination.AirportCode  WHERE source.City = 'Aberdeen' AND destination.City = 'Ashley'; ```
```sql SELECT COUNT(*)  FROM flights  JOIN airports AS source ON flights.SourceAirport = source.AirportCode  JOIN airports AS dest ON flights.DestAirport = dest.AirportCode  WHERE source.City = 'Aberdeen' AND dest.City = 'Ashley'; ```
```sql SELECT COUNT(*)  FROM flights  JOIN airlines ON flights.Airline = airlines.uid  WHERE airlines.Airline = 'JetBlue Airways'; ```
```sql SELECT COUNT(*)  FROM flights  JOIN airlines ON flights.Airline = airlines.uid  WHERE airlines.Airline = 'Jetblue Airways'; ```
```sql SELECT COUNT(*)  FROM flights  JOIN airlines ON flights.Airline = airlines.uid  JOIN airports AS dest ON flights.DestAirport = dest.AirportCode  WHERE airlines.Airline = 'United Airlines' AND dest.AirportCode = 'ASY'; ```
```sql SELECT COUNT(*)  FROM flights  JOIN airports ON flights.DestAirport = airports.AirportCode  JOIN airlines ON flights.Airline = airlines.uid  WHERE airlines.Airline = 'United Airlines' AND airports.AirportName = 'ASY Airport'; ```
```sql SELECT COUNT(*)  FROM flights  JOIN airlines ON flights.Airline = airlines.uid  JOIN airports AS source ON flights.SourceAirport = source.AirportCode  JOIN airports AS dest ON flights.DestAirport = dest.AirportCode  WHERE airlines.Airline = 'United Airlines' AND source.AirportCode = 'AHD'; ```
```sql SELECT COUNT(*)  FROM flights  JOIN airports ON flights.SourceAirport = airports.AirportCode  JOIN airlines ON flights.Airline = airlines.uid  WHERE airlines.Airline = 'United Airlines' AND airports.AirportName = 'AHD Airport'; ```
```sql SELECT COUNT(*)  FROM flights  JOIN airlines ON flights.Airline = airlines.uid  JOIN airports AS dest ON flights.DestAirport = dest.AirportCode  WHERE airlines.Airline = 'United Airlines' AND dest.City = 'Aberdeen'; ```
```sql SELECT COUNT(*)  FROM flights  JOIN airlines ON flights.Airline = airlines.uid  JOIN airports AS dest_airports ON flights.DestAirport = dest_airports.AirportCode  WHERE airlines.Airline = 'United Airlines' AND dest_airports.City = 'Aberdeen'; ```
```sql SELECT a.City FROM airports a JOIN flights f ON a.AirportCode = f.DestAirport GROUP BY a.City ORDER BY COUNT(f.FlightNo) DESC LIMIT 1; ```
```sql SELECT a.City, COUNT(f.DestAirport) AS Frequency FROM airports a JOIN flights f ON a.AirportCode = f.DestAirport GROUP BY a.City ORDER BY Frequency DESC LIMIT 1; ```
```sql SELECT a.City FROM airports a JOIN flights f ON a.AirportCode = f.SourceAirport GROUP BY a.City ORDER BY COUNT(f.FlightNo) DESC LIMIT 1; ```
```sql SELECT City FROM airports JOIN flights ON airports.AirportCode = flights.SourceAirport GROUP BY City ORDER BY COUNT(*) DESC LIMIT 1; ```
```sql SELECT DestAirport FROM flights GROUP BY DestAirport ORDER BY COUNT(*) DESC LIMIT 1; ```
```sql SELECT DestAirport  FROM flights  GROUP BY DestAirport  ORDER BY COUNT(*) DESC  LIMIT 1; ```
```sql SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY COUNT(*) ASC LIMIT 1; ```
```sql SELECT DestAirport FROM flights GROUP BY DestAirport ORDER BY COUNT(*) ASC LIMIT 1; ```
```sql SELECT A.Airline, COUNT(F.FlightNo) AS FlightCount FROM airlines A JOIN flights F ON A.uid = F.Airline GROUP BY A.Airline ORDER BY FlightCount DESC LIMIT 1; ```
```sql SELECT A.Airline FROM airlines A JOIN flights F ON A.uid = F.Airline GROUP BY A.Airline ORDER BY COUNT(*) DESC LIMIT 1; ```
```sql SELECT a.Abbreviation, a.Country FROM airlines a JOIN flights f ON a.uid = f.Airline GROUP BY a.uid, a.Abbreviation, a.Country ORDER BY COUNT(f.FlightNo) ASC LIMIT 1; ```
```sql SELECT a.Abbreviation, a.Country FROM airlines a JOIN flights f ON a.uid = f.Airline GROUP BY a.Abbreviation, a.Country ORDER BY COUNT(f.FlightNo) ASC LIMIT 1; ```
```sql SELECT DISTINCT a.Airline FROM airlines a JOIN flights f ON a.uid = f.Airline JOIN airports ap ON f.SourceAirport = ap.AirportCode WHERE ap.AirportCode = 'AHD'; ```
```sql SELECT DISTINCT a.Airline FROM airlines a JOIN flights f ON a.uid = f.Airline WHERE f.SourceAirport = 'AHD'; ```
```sql SELECT DISTINCT a.Airline FROM airlines a JOIN flights f ON a.uid = f.Airline JOIN airports ap ON f.DestAirport = ap.AirportCode WHERE ap.AirportCode = 'AHD'; ```
```sql SELECT DISTINCT A.Airline FROM airlines A JOIN flights F ON A.uid = F.Airline JOIN airports AP ON F.DestAirport = AP.AirportCode WHERE AP.AirportCode = 'AHD'; ```
```sql SELECT a.Airline FROM airlines a JOIN flights f ON a.uid = f.Airline JOIN airports s ON f.SourceAirport = s.AirportCode JOIN airports d ON f.DestAirport = d.AirportCode WHERE s.AirportCode = 'APG' AND d.AirportCode = 'CVO' GROUP BY a.Airline HAVING COUNT(DISTINCT s.AirportCode) > 1 AND COUNT(DISTINCT d.AirportCode) > 1; ```
```sql SELECT a.Airline FROM airlines a JOIN flights f ON a.uid = f.Airline JOIN airports s ON f.SourceAirport = s.AirportCode JOIN airports d ON f.DestAirport = d.AirportCode WHERE s.AirportName = 'APG' AND d.AirportName = 'CVO'; ```
```sql SELECT a.Airline FROM airlines a JOIN flights f ON a.uid = f.Airline JOIN airports s ON f.SourceAirport = s.AirportCode JOIN airports d ON f.DestAirport = d.AirportCode WHERE s.AirportCode = 'CVO' AND d.AirportCode != 'APG'; ```
```sql SELECT a.Airline FROM airlines a JOIN flights f ON a.uid = f.Airline JOIN airports s ON f.SourceAirport = s.AirportCode JOIN airports d ON f.DestAirport = d.AirportCode WHERE s.AirportCode = 'CVO' AND d.AirportCode != 'APG'; ```
```sql SELECT a.Airline FROM airlines a JOIN flights f ON a.uid = f.Airline GROUP BY a.Airline HAVING COUNT(f.FlightNo) >= 10; ```
```sql SELECT A.Airline FROM airlines A JOIN flights F ON A.uid = F.Airline GROUP BY A.Airline HAVING COUNT(F.FlightNo) >= 10; ```
```sql SELECT a.Airline FROM airlines a JOIN flights f ON a.uid = f.Airline GROUP BY a.Airline HAVING COUNT(f.FlightNo) < 200; ```
```sql SELECT a.Airline FROM airlines a JOIN flights f ON a.uid = f.Airline GROUP BY a.Airline HAVING COUNT(f.FlightNo) < 200; ```
```sql SELECT FlightNo FROM flights JOIN airlines ON flights.Airline = airlines.uid WHERE airlines.Airline = 'United Airlines'; ```
```sql SELECT FlightNo FROM flights JOIN airlines ON flights.Airline = airlines.uid WHERE airlines.Airline = 'United Airlines'; ```
```sql SELECT FlightNo FROM flights JOIN airports ON flights.SourceAirport = airports.AirportCode WHERE airports.AirportName = 'APG'; ```
```sql SELECT FlightNo FROM flights JOIN airports ON flights.SourceAirport = airports.AirportCode WHERE airports.AirportName = 'APG'; ```
```sql SELECT FlightNo FROM flights JOIN airports ON flights.DestAirport = airports.AirportCode WHERE airports.AirportName = 'APG'; ```
```sql SELECT FlightNo FROM flights JOIN airports ON flights.DestAirport = airports.AirportCode WHERE airports.AirportName = 'APG'; ```
```sql SELECT FlightNo FROM flights JOIN airports ON flights.SourceAirport = airports.AirportCode WHERE airports.City = 'Aberdeen'; ```
```sql SELECT FlightNo FROM flights JOIN airports ON flights.SourceAirport = airports.AirportCode WHERE airports.City = 'Aberdeen'; ```
```sql SELECT FlightNo FROM flights JOIN airports ON flights.DestAirport = airports.AirportCode WHERE airports.City = 'Aberdeen'; ```
```sql SELECT FlightNo FROM flights JOIN airports ON flights.DestAirport = airports.AirportCode WHERE airports.City = 'Aberdeen'; ```
```sql SELECT COUNT(*)  FROM flights  JOIN airports ON flights.DestAirport = airports.AirportCode  WHERE airports.City IN ('Aberdeen', 'Abilene'); ```
```sql SELECT COUNT(*)  FROM flights  JOIN airports ON flights.DestAirport = airports.AirportCode  WHERE airports.City IN ('Aberdeen', 'Abilene'); ```
```sql SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights) AND AirportCode NOT IN (SELECT DestAirport FROM flights); ```
```sql SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights)   AND AirportCode NOT IN (SELECT DestAirport FROM flights); ```
```sql SELECT COUNT(Employee_ID) AS Total_Employees FROM employee; ```
```sql SELECT COUNT(Employee_ID) AS Number_of_Employees FROM employee; ```
```sql SELECT Name FROM employee ORDER BY Age ASC; ```
```sql SELECT Name FROM employee ORDER BY Age ASC; ```
```sql SELECT City, COUNT(Employee_ID) AS Number_of_Employees FROM employee GROUP BY City; ```
```sql SELECT employee.City, COUNT(employee.Employee_ID) AS Number_of_Employees FROM employee GROUP BY employee.City; ```
```sql SELECT City FROM employee WHERE Age < 30 GROUP BY City HAVING COUNT(Employee_ID) > 1; ```
```sql SELECT City FROM employee WHERE Age < 30 GROUP BY City HAVING COUNT(Employee_ID) > 1; ```
```sql SELECT Location, COUNT(Shop_ID) AS Number_of_Shops FROM shop GROUP BY Location; ```
```sql SELECT Location, COUNT(Shop_ID) AS Number_of_Shops FROM shop GROUP BY Location; ```
```sql SELECT s.Manager_name, s.District FROM shop s WHERE s.Number_products = (SELECT MAX(Number_products) FROM shop); ```
```sql SELECT s.Manager_name, s.District FROM shop s WHERE s.Number_products = (SELECT MAX(Number_products) FROM shop); ```
```sql SELECT MIN(Number_products) AS Min_Products, MAX(Number_products) AS Max_Products FROM shop; ```
```sql SELECT MIN(Number_products) AS Min_Products, MAX(Number_products) AS Max_Products FROM shop; ```
```sql SELECT Name, Location, District FROM shop ORDER BY Number_products DESC; ```
```sql SELECT Name, Location, District  FROM shop  ORDER BY Number_products DESC; ```
```sql SELECT Name FROM shop WHERE Number_products > (SELECT AVG(Number_products) FROM shop); ```
```sql SELECT s.Name FROM shop s WHERE s.Number_products > (SELECT AVG(Number_products) FROM shop); ```
```sql SELECT e.Name FROM employee e JOIN evaluation ev ON e.Employee_ID = ev.Employee_ID GROUP BY e.Employee_ID, e.Name ORDER BY COUNT(ev.Year_awarded) DESC LIMIT 1; ```
```sql SELECT e.Name FROM employee e JOIN evaluation ev ON e.Employee_ID = ev.Employee_ID GROUP BY e.Employee_ID, e.Name ORDER BY COUNT(ev.Year_awarded) DESC LIMIT 1; ```
```sql SELECT e.Name FROM employee e JOIN evaluation ev ON e.Employee_ID = ev.Employee_ID ORDER BY ev.Bonus DESC LIMIT 1; ```
```sql SELECT e.Name FROM employee e JOIN evaluation ev ON e.Employee_ID = ev.Employee_ID ORDER BY ev.Bonus DESC LIMIT 1; ```
```sql SELECT Name FROM employee WHERE Employee_ID NOT IN (SELECT Employee_ID FROM evaluation); ```
```sql SELECT Name FROM employee WHERE Employee_ID NOT IN (SELECT Employee_ID FROM evaluation); ```
```sql SELECT s.Name FROM shop s JOIN hiring h ON s.Shop_ID = h.Shop_ID GROUP BY s.Name ORDER BY COUNT(h.Employee_ID) DESC LIMIT 1; ```
```sql SELECT s.Name FROM shop s JOIN hiring h ON s.Shop_ID = h.Shop_ID GROUP BY s.Name ORDER BY COUNT(h.Employee_ID) DESC LIMIT 1; ```
```sql SELECT Name FROM shop WHERE Shop_ID NOT IN (SELECT Shop_ID FROM hiring); ```
```sql SELECT Name FROM shop WHERE Shop_ID NOT IN (SELECT Shop_ID FROM hiring); ```
```sql SELECT s.Name AS Shop_Name, COUNT(h.Employee_ID) AS Number_of_Employees_Hired FROM shop s JOIN hiring h ON s.Shop_ID = h.Shop_ID GROUP BY s.Name; ```
```sql SELECT s.Shop_ID, s.Name, COUNT(h.Employee_ID) AS Number_of_Employees FROM shop s LEFT JOIN hiring h ON s.Shop_ID = h.Shop_ID GROUP BY s.Shop_ID, s.Name; ```
```sql SELECT SUM(Bonus) AS Total_Bonus FROM evaluation; ```
```sql SELECT SUM(Bonus) AS Total_Bonus FROM evaluation; ```
```sql SELECT * FROM hiring; ```
```sql SELECT * FROM hiring; ```
```sql SELECT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT District FROM shop WHERE Number_products > 10000; ```
```sql SELECT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT District FROM shop WHERE Number_products > 10000; ```
```sql SELECT COUNT(DISTINCT Location) AS Number_of_Store_Locations FROM shop; ```
```sql SELECT COUNT(DISTINCT Location) AS Number_of_Distinct_Store_Locations FROM shop; ```
```sql SELECT COUNT(*) AS Total_Documents FROM Documents; ```
```sql SELECT COUNT(*) AS Number_of_Documents FROM Documents; ```
```sql SELECT Document_ID, Document_Name, Document_Description  FROM Documents; ```
```sql SELECT Document_ID, Document_Name, Document_Description  FROM Documents; ```
```sql SELECT Document_Name, Template_ID  FROM Documents  WHERE Document_Description LIKE '%w%'; ```
```sql SELECT D.Document_Name, D.Template_ID FROM Documents D WHERE D.Document_Description LIKE '%w%'; ```
```sql SELECT Document_ID, Template_ID, Document_Description FROM Documents WHERE Document_Name = 'Robbin CV'; ```
```sql SELECT Document_ID, Template_ID, Document_Description FROM Documents WHERE Document_Name = 'Robbin CV'; ```
```sql SELECT COUNT(DISTINCT Template_ID) AS NumberOfDifferentTemplates FROM Documents; ```
```sql SELECT COUNT(DISTINCT Template_ID) AS NumberOfDifferentTemplates FROM Documents; ```
```sql SELECT COUNT(Documents.Document_ID) FROM Documents JOIN Templates ON Documents.Template_ID = Templates.Template_ID JOIN Ref_Template_Types ON Templates.Template_Type_Code = Ref_Template_Types.Template_Type_Code WHERE Ref_Template_Types.Template_Type_Code = 'PPT'; ```
```sql SELECT COUNT(*)  FROM Documents  JOIN Templates ON Documents.Template_ID = Templates.Template_ID  JOIN Ref_Template_Types ON Templates.Template_Type_Code = Ref_Template_Types.Template_Type_Code  WHERE Ref_Template_Types.Template_Type_Description = 'PPT'; ```
```sql SELECT T.Template_ID, COUNT(D.Document_ID) AS Number_of_Documents FROM Templates T JOIN Documents D ON T.Template_ID = D.Template_ID GROUP BY T.Template_ID; ```
```sql SELECT Template_ID, COUNT(*) AS Usage_Count FROM Documents GROUP BY Template_ID; ```
```sql SELECT D.Template_ID, T.Template_Type_Code FROM Documents D JOIN Templates T ON D.Template_ID = T.Template_ID GROUP BY D.Template_ID, T.Template_Type_Code ORDER BY COUNT(D.Document_ID) DESC LIMIT 1; ```
```sql SELECT d.Template_ID, t.Template_Type_Code FROM Documents d JOIN Templates t ON d.Template_ID = t.Template_ID GROUP BY d.Template_ID, t.Template_Type_Code ORDER BY COUNT(d.Document_ID) DESC LIMIT 1; ```
```sql SELECT Template_ID FROM Documents GROUP BY Template_ID HAVING COUNT(Document_ID) > 1; ```
```sql SELECT Template_ID FROM Documents GROUP BY Template_ID HAVING COUNT(Document_ID) > 1; ```
```sql SELECT Template_ID FROM Templates WHERE Template_ID NOT IN (SELECT Template_ID FROM Documents); ```
```sql SELECT Template_ID FROM Templates WHERE Template_ID NOT IN (SELECT Template_ID FROM Documents); ```
```sql SELECT COUNT(*) AS Total_Templates FROM Templates; ```
```sql SELECT COUNT(*) AS Number_of_Templates FROM Templates; ```
```sql SELECT Template_ID, Version_Number, Template_Type_Code  FROM Templates; ```
```sql SELECT Template_ID, Version_Number, Template_Type_Code FROM Templates; ```
```sql SELECT DISTINCT Template_Type_Code FROM Templates; ```
```sql SELECT DISTINCT Template_Type_Code FROM Ref_Template_Types; ```
```sql SELECT Template_ID FROM Templates WHERE Template_Type_Code IN ('PP', 'PPT'); ```
```sql SELECT Template_ID FROM Templates WHERE Template_Type_Code IN ('PP', 'PPT'); ```
```sql SELECT COUNT(*)  FROM Templates  WHERE Template_Type_Code = 'CV'; ```
```sql SELECT COUNT(*) AS NumberOfTemplates FROM Templates t JOIN Ref_Template_Types rtt ON t.Template_Type_Code = rtt.Template_Type_Code WHERE rtt.Template_Type_Description = 'CV'; ```
```sql SELECT Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5; ```
```sql SELECT Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5; ```
```sql SELECT Ref_Template_Types.Template_Type_Code, COUNT(Templates.Template_ID) AS Number_of_Templates FROM Ref_Template_Types JOIN Templates ON Ref_Template_Types.Template_Type_Code = Templates.Template_Type_Code GROUP BY Ref_Template_Types.Template_Type_Code; ```
```sql SELECT Ref_Template_Types.Template_Type_Code, COUNT(Templates.Template_ID) AS Template_Count FROM Ref_Template_Types JOIN Templates ON Ref_Template_Types.Template_Type_Code = Templates.Template_Type_Code GROUP BY Ref_Template_Types.Template_Type_Code; ```
```sql SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1; ```
```sql SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1; ```
```sql SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code HAVING COUNT(*) < 3; ```
```sql SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code HAVING COUNT(*) < 3; ```
```sql SELECT MIN(Version_Number), Template_Type_Code FROM Templates GROUP BY Template_Type_Code; ```
```sql SELECT MIN(Version_Number), Template_Type_Code FROM Templates GROUP BY Template_Type_Code; ```
```sql SELECT t.Template_Type_Code FROM Documents d JOIN Templates t ON d.Template_ID = t.Template_ID WHERE d.Document_Name = 'Data base'; ```
```sql SELECT rt.Template_Type_Code FROM Ref_Template_Types rt JOIN Templates t ON rt.Template_Type_Code = t.Template_Type_Code JOIN Documents d ON t.Template_ID = d.Template_ID WHERE d.Document_Name = 'Data base'; ```
```sql SELECT Document_Name FROM Documents JOIN Templates ON Documents.Template_ID = Templates.Template_ID JOIN Ref_Template_Types ON Templates.Template_Type_Code = Ref_Template_Types.Template_Type_Code WHERE Ref_Template_Types.Template_Type_Code = 'BK'; ```
```sql SELECT d.Document_Name FROM Documents d JOIN Templates t ON d.Template_ID = t.Template_ID WHERE t.Template_Type_Code = 'BK'; ```
```sql SELECT      rt.Template_Type_Code,      COUNT(d.Document_ID) AS Number_of_Documents FROM      Ref_Template_Types rt JOIN      Templates t ON rt.Template_Type_Code = t.Template_Type_Code JOIN      Documents d ON t.Template_ID = d.Template_ID GROUP BY      rt.Template_Type_Code; ```
```sql SELECT      rt.Template_Type_Code,      rt.Template_Type_Description,      COUNT(d.Document_ID) AS Document_Count FROM      Ref_Template_Types rt JOIN      Templates t ON rt.Template_Type_Code = t.Template_Type_Code JOIN      Documents d ON t.Template_ID = d.Template_ID GROUP BY      rt.Template_Type_Code,      rt.Template_Type_Description; ```
```sql SELECT Template_Type_Code FROM Templates JOIN Documents ON Templates.Template_ID = Documents.Template_ID GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1; ```
```sql SELECT rt.Template_Type_Code FROM Ref_Template_Types rt JOIN Templates t ON rt.Template_Type_Code = t.Template_Type_Code JOIN Documents d ON t.Template_ID = d.Template_ID GROUP BY rt.Template_Type_Code ORDER BY COUNT(d.Document_ID) DESC LIMIT 1; ```
```sql SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Code NOT IN (     SELECT Template_Type_Code     FROM Templates     WHERE Template_ID IN (         SELECT Template_ID         FROM Documents     ) ); ```
```sql SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Code NOT IN (     SELECT Template_Type_Code     FROM Templates     WHERE Template_ID IN (         SELECT Template_ID         FROM Documents     ) ); ```
```sql SELECT Template_Type_Code, Template_Type_Description  FROM Ref_Template_Types; ```
```sql SELECT Template_Type_Code, Template_Type_Description FROM Ref_Template_Types; ```
```sql SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = 'AD'; ```
```sql SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = 'AD'; ```
```sql SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = 'Book'; ```
```sql SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = 'Book'; ```
```sql SELECT DISTINCT rt.Template_Type_Description FROM Ref_Template_Types rt JOIN Templates t ON rt.Template_Type_Code = t.Template_Type_Code JOIN Documents d ON t.Template_ID = d.Template_ID; ```
```sql SELECT DISTINCT rtt.Template_Type_Description FROM Ref_Template_Types rtt JOIN Templates t ON rtt.Template_Type_Code = t.Template_Type_Code JOIN Documents d ON t.Template_ID = d.Template_ID; ```
```sql SELECT T1.Template_ID FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Template_Type_Description = 'Presentation'; ```
```sql SELECT t.Template_ID FROM Templates t JOIN Ref_Template_Types r ON t.Template_Type_Code = r.Template_Type_Code WHERE r.Template_Type_Description = 'Presentation'; ```
```sql SELECT COUNT(*) AS Total_Paragraphs FROM Paragraphs; ```
```sql SELECT COUNT(*) AS Total_Paragraphs FROM Paragraphs; ```
```sql SELECT COUNT(*)  FROM Paragraphs  JOIN Documents ON Paragraphs.Document_ID = Documents.Document_ID  WHERE Documents.Document_Name = 'Summer Show'; ```
```sql SELECT COUNT(*) AS Paragraph_Count FROM Paragraphs JOIN Documents ON Paragraphs.Document_ID = Documents.Document_ID WHERE Documents.Document_Name = 'Summer Show'; ```
```sql SELECT Paragraph_Text, Other_Details FROM Paragraphs WHERE Paragraph_Text = 'Korea '; ```
```sql SELECT Paragraph_Text FROM Paragraphs WHERE Paragraph_Text LIKE '%Korea%'; ```
```sql SELECT Paragraph_ID, Paragraph_Text FROM Paragraphs JOIN Documents ON Paragraphs.Document_ID = Documents.Document_ID WHERE Documents.Document_Name = 'Welcome to NY'; ```
```sql SELECT Paragraph_ID, Paragraph_Text FROM Paragraphs JOIN Documents ON Paragraphs.Document_ID = Documents.Document_ID WHERE Documents.Document_Name = 'Welcome to NY'; ```
```sql SELECT p.Paragraph_Text FROM Paragraphs p JOIN Documents d ON p.Document_ID = d.Document_ID WHERE d.Document_Name = 'Customer reviews'; ```
```sql SELECT Paragraph_Text FROM Paragraphs JOIN Documents ON Paragraphs.Document_ID = Documents.Document_ID WHERE Documents.Document_Name = 'Customer reviews'; ```
```sql SELECT Document_ID, COUNT(Paragraph_ID) AS Number_of_Paragraphs FROM Paragraphs GROUP BY Document_ID ORDER BY Document_ID; ```
```sql SELECT Paragraphs.Document_ID, COUNT(Paragraphs.Paragraph_ID) AS Number_of_Paragraphs FROM Paragraphs GROUP BY Paragraphs.Document_ID ORDER BY Paragraphs.Document_ID; ```
```sql SELECT      d.Document_ID,      d.Document_Name,      COUNT(p.Paragraph_ID) AS Number_of_Paragraphs FROM      Documents d LEFT JOIN      Paragraphs p ON d.Document_ID = p.Document_ID GROUP BY      d.Document_ID,      d.Document_Name; ```
```sql SELECT      D.Document_ID,      D.Document_Name,      COUNT(P.Paragraph_ID) AS Number_of_Paragraphs FROM      Documents D LEFT JOIN      Paragraphs P ON D.Document_ID = P.Document_ID GROUP BY      D.Document_ID,      D.Document_Name; ```
```sql SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(Paragraph_ID) >= 2; ```
```sql SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(Paragraph_ID) >= 2; ```
```sql SELECT d.Document_ID, d.Document_Name FROM Documents d JOIN Paragraphs p ON d.Document_ID = p.Document_ID GROUP BY d.Document_ID, d.Document_Name ORDER BY COUNT(p.Paragraph_ID) DESC LIMIT 1; ```
```sql SELECT D.Document_ID, D.Document_Name FROM Documents D JOIN (     SELECT Document_ID, COUNT(*) AS Paragraph_Count     FROM Paragraphs     GROUP BY Document_ID ) P ON D.Document_ID = P.Document_ID ORDER BY P.Paragraph_Count DESC LIMIT 1; ```
```sql SELECT Document_ID FROM Paragraphs GROUP BY Document_ID ORDER BY COUNT(*) ASC LIMIT 1; ```
```sql SELECT Document_ID FROM Paragraphs GROUP BY Document_ID ORDER BY COUNT(*) ASC LIMIT 1; ```
```sql SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(Paragraph_ID) BETWEEN 1 AND 2; ```
```sql SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(Paragraph_ID) BETWEEN 1 AND 2; ```
```sql SELECT Paragraph_ID, Document_ID FROM Paragraphs WHERE Paragraph_Text IN ('Brazil', 'Ireland'); ```
```sql SELECT d.Document_ID FROM Documents d JOIN Paragraphs p ON d.Document_ID = p.Document_ID WHERE p.Paragraph_Text LIKE '%Brazil%'   AND p.Paragraph_Text LIKE '%Ireland%'; ```
```sql SELECT COUNT(*) AS NumberOfTeachers FROM teacher; ```
```sql SELECT COUNT(*) AS Total_Teachers FROM teacher; ```
```sql SELECT Name FROM teacher ORDER BY Age ASC; ```
```sql SELECT Name FROM teacher ORDER BY Age ASC; ```
```sql SELECT Age, Hometown FROM teacher; ```
```sql SELECT Age, Hometown FROM teacher; ```
```sql SELECT Name FROM teacher WHERE Hometown != 'Little Lever Urban District'; ```
```sql SELECT Name FROM teacher WHERE Hometown != 'Little Lever Urban District'; ```
```sql SELECT Name FROM teacher WHERE Age = 32 OR Age = 33; ```
```sql SELECT Name FROM teacher WHERE Age IN (32, 33); ```
```sql SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1; ```
```sql SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1; ```
```sql SELECT T2.Hometown, COUNT(*) AS Number_of_Teachers FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Hometown; ```
```sql SELECT Hometown, COUNT(Teacher_ID) AS Number_of_Teachers FROM teacher GROUP BY Hometown; ```
```sql SELECT Hometown, COUNT(*) AS Hometown_Count FROM teacher GROUP BY Hometown ORDER BY Hometown_Count DESC LIMIT 1; ```
```sql SELECT Hometown, COUNT(*) AS Hometown_Count FROM teacher GROUP BY Hometown ORDER BY Hometown_Count DESC LIMIT 1; ```
```sql SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2; ```
```sql SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(Teacher_ID) >= 2; ```
```sql SELECT T2.Name, T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID; ```
```sql SELECT T2.Name, T3.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID; ```
```sql SELECT T2.Name, T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Name ASC; ```
```sql SELECT T2.Name, T3.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID ORDER BY T2.Name ASC; ```
```sql SELECT teacher.Name FROM teacher JOIN course_arrange ON teacher.Teacher_ID = course_arrange.Teacher_ID JOIN course ON course_arrange.Course_ID = course.Course_ID WHERE course.Course = 'math'; ```
```sql SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID WHERE T3.Course = 'Math'; ```
```sql SELECT teacher.Name, COUNT(course_arrange.Course_ID) AS Number_of_Courses FROM teacher JOIN course_arrange ON teacher.Teacher_ID = course_arrange.Teacher_ID GROUP BY teacher.Name; ```
```sql SELECT teacher.Name, COUNT(course_arrange.Course_ID) AS Course_Count FROM teacher JOIN course_arrange ON teacher.Teacher_ID = course_arrange.Teacher_ID GROUP BY teacher.Name; ```
```sql SELECT T.Name FROM teacher T JOIN course_arrange CA ON T.Teacher_ID = CA.Teacher_ID GROUP BY T.Teacher_ID, T.Name HAVING COUNT(CA.Course_ID) >= 2; ```
```sql SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(T1.Course_ID) >= 2; ```
```sql SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange); ```
```sql SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange); ```
```sql SELECT COUNT(ID) FROM visitor WHERE Age < 30; ```
```sql SELECT Name  FROM visitor  WHERE Level_of_membership > 4  ORDER BY Level_of_membership DESC; ```
```sql SELECT AVG(Age)  FROM visitor  WHERE Level_of_membership <= 4; ```
```sql SELECT Name, Level_of_membership FROM visitor WHERE Level_of_membership > 4 ORDER BY Age DESC; ```
```sql SELECT Museum_ID, Name  FROM museum  ORDER BY Num_of_Staff DESC  LIMIT 1; ```
```sql SELECT AVG(Num_of_Staff)  FROM museum  WHERE Open_Year < 2009; ```
```sql SELECT Open_Year, Num_of_Staff FROM museum WHERE Name = 'Plaza Museum'; ```
```sql SELECT Name FROM museum WHERE Num_of_Staff > (     SELECT MIN(Num_of_Staff)     FROM museum     WHERE Open_Year > 2010 ); ```
```sql SELECT v.ID, v.Name, v.Age FROM visitor v JOIN visit vi ON v.ID = vi.visitor_ID GROUP BY v.ID, v.Name, v.Age HAVING COUNT(vi.Museum_ID) > 1; ```
```sql SELECT visitor.ID, visitor.Name, visitor.Level_of_membership FROM visitor JOIN visit ON visitor.ID = visit.visitor_ID GROUP BY visitor.ID, visitor.Name, visitor.Level_of_membership ORDER BY SUM(visit.Total_spent) DESC LIMIT 1; ```
```sql SELECT m.Museum_ID, m.Name FROM museum m JOIN visit v ON m.Museum_ID = v.Museum_ID GROUP BY m.Museum_ID, m.Name ORDER BY COUNT(v.visit_ID) DESC LIMIT 1; ```
```sql SELECT Name FROM museum WHERE Museum_ID NOT IN (SELECT Museum_ID FROM visit); ```
```sql SELECT v.Name, v.Age FROM visitor v JOIN visit vi ON v.ID = vi.visitor_ID WHERE vi.Num_of_Ticket = (SELECT MAX(Num_of_Ticket) FROM visit); ```
```sql SELECT AVG(Num_of_Ticket) AS Average_Tickets, MAX(Num_of_Ticket) AS Maximum_Tickets FROM visit; ```
```sql SELECT SUM(Total_spent) AS Total_Ticket_Expense FROM visit JOIN visitor ON visit.visitor_ID = visitor.ID WHERE visitor.Level_of_membership = 1; ```
```sql SELECT v.Name FROM visitor v JOIN visit vi ON v.ID = vi.visitor_ID JOIN museum m ON vi.Museum_ID = m.Museum_ID WHERE m.Open_Year < 2009 INTERSECT SELECT v.Name FROM visitor v JOIN visit vi ON v.ID = vi.visitor_ID JOIN museum m ON vi.Museum_ID = m.Museum_ID WHERE m.Open_Year > 2011; ```
```sql SELECT COUNT(visitor_ID) FROM visitor WHERE ID NOT IN (     SELECT visitor_ID     FROM visit     JOIN museum ON visit.Museum_ID = museum.Museum_ID     WHERE museum.Open_Year > 2010 ); ```
```sql SELECT COUNT(*) FROM museum WHERE Open_Year > 2013 OR Open_Year < 2008; ```
```sql SELECT COUNT(player_id) AS total_players FROM players; ```
```sql SELECT COUNT(*) AS total_players FROM players; ```
```sql SELECT COUNT(*) AS total_matches FROM matches; ```
```sql SELECT COUNT(*) AS total_matches FROM matches; ```
```sql SELECT first_name, birth_date FROM players WHERE country_code = 'USA'; ```
```sql SELECT first_name, birth_date FROM players WHERE country_code = 'USA'; ```
```sql SELECT      AVG(winner_age) AS average_winner_age,     AVG(loser_age) AS average_loser_age FROM      matches; ```
```sql SELECT      AVG(winner_age) AS average_winner_age,     AVG(loser_age) AS average_loser_age FROM      matches; ```
```sql SELECT AVG(winner_rank) AS average_winner_rank FROM matches; ```
```sql SELECT AVG(winner_rank) AS average_winner_rank FROM matches; ```
```sql SELECT MAX(loser_rank) AS highest_loser_rank FROM matches; ```
```sql SELECT MIN(loser_rank) AS best_rank_of_losers FROM matches; ```
```sql SELECT COUNT(DISTINCT country_code) AS distinct_country_codes FROM players; ```
```sql SELECT COUNT(DISTINCT country_code) AS distinct_countries FROM players; ```
```sql SELECT COUNT(DISTINCT loser_name) AS distinct_loser_names FROM matches; ```
```sql SELECT COUNT(DISTINCT loser_name) AS distinct_loser_names FROM matches; ```
```sql SELECT tourney_name FROM matches GROUP BY tourney_name HAVING COUNT(*) > 10; ```
```sql SELECT tourney_name FROM matches GROUP BY tourney_name HAVING COUNT(*) > 10; ```
```sql SELECT p1.first_name, p1.last_name FROM players p1 JOIN matches m1 ON p1.player_id = m1.winner_id WHERE m1.tourney_date LIKE '2013%' INTERSECT SELECT p2.first_name, p2.last_name FROM players p2 JOIN matches m2 ON p2.player_id = m2.winner_id WHERE m2.tourney_date LIKE '2016%'; ```
```sql SELECT p.player_id, p.first_name, p.last_name FROM players p JOIN matches m ON p.player_id = m.winner_id WHERE m.tourney_date BETWEEN '2013-01-01' AND '2013-12-31' INTERSECT SELECT p.player_id, p.first_name, p.last_name FROM players p JOIN matches m ON p.player_id = m.winner_id WHERE m.tourney_date BETWEEN '2016-01-01' AND '2016-12-31'; ```
```sql SELECT COUNT(*)  FROM matches  WHERE YEAR(tourney_date) IN (2013, 2016); ```
```sql SELECT COUNT(*)  FROM matches  WHERE YEAR(tourney_date) IN (2013, 2016); ```
```sql SELECT p.country_code, p.first_name FROM players p JOIN matches m ON p.player_id = m.winner_id WHERE m.tourney_name IN ('WTA Championships', 'Australian Open') GROUP BY p.player_id, p.country_code, p.first_name HAVING COUNT(DISTINCT m.tourney_name) = 2; ```
```sql SELECT p.first_name, p.country_code FROM players p JOIN matches m ON p.player_id = m.winner_id WHERE m.tourney_name IN ('WTA Championships', 'Australian Open') GROUP BY p.player_id, p.first_name, p.country_code HAVING COUNT(DISTINCT m.tourney_name) = 2; ```
```sql SELECT first_name, country_code  FROM players  ORDER BY birth_date ASC  LIMIT 1; ```
```sql SELECT first_name, country_code FROM players ORDER BY birth_date ASC LIMIT 1; ```
```sql SELECT first_name, last_name FROM players ORDER BY birth_date; ```
```sql SELECT first_name, last_name FROM players ORDER BY birth_date; ```
```sql SELECT first_name, last_name  FROM players  WHERE hand = 'L'  ORDER BY birth_date; ```
```sql SELECT first_name, last_name FROM players WHERE hand = 'L' ORDER BY birth_date; ```
```sql SELECT p.first_name, p.country_code FROM players p JOIN rankings r ON p.player_id = r.player_id GROUP BY p.player_id, p.first_name, p.country_code ORDER BY COUNT(r.tours) DESC LIMIT 1; ```
```sql SELECT p.first_name, p.country_code FROM players p JOIN rankings r ON p.player_id = r.player_id GROUP BY p.player_id, p.first_name, p.country_code ORDER BY SUM(r.tours) DESC LIMIT 1; ```
```sql SELECT year FROM matches GROUP BY year ORDER BY COUNT(*) DESC LIMIT 1; ```
```sql SELECT year, COUNT(*) AS match_count FROM matches GROUP BY year ORDER BY match_count DESC LIMIT 1; ```
```sql SELECT p.first_name, p.last_name, r.ranking_points FROM players p JOIN matches m ON p.player_id = m.winner_id JOIN rankings r ON p.player_id = r.player_id GROUP BY p.player_id ORDER BY COUNT(m.winner_id) DESC LIMIT 1; ```
```sql SELECT p.first_name, p.last_name, SUM(r.ranking_points) AS total_rank_points FROM players p JOIN matches m ON p.player_id = m.winner_id JOIN rankings r ON p.player_id = r.player_id GROUP BY p.player_id ORDER BY COUNT(m.match_num) DESC, total_rank_points DESC LIMIT 1; ```
```sql SELECT p.winner_name FROM players p JOIN matches m ON p.player_id = m.winner_id WHERE m.tourney_name = 'Australian Open' ORDER BY p.winner_rank_points DESC LIMIT 1; ```
```sql SELECT p.first_name, p.last_name FROM players p JOIN matches m ON p.player_id = m.winner_id WHERE m.tourney_name = 'Australian Open' ORDER BY p.ranking_points DESC LIMIT 1; ```
```sql SELECT      p1.first_name AS winner_first_name,      p1.last_name AS winner_last_name,      p2.first_name AS loser_first_name,      p2.last_name AS loser_last_name FROM      matches m JOIN      players p1 ON m.winner_id = p1.player_id JOIN      players p2 ON m.loser_id = p2.player_id WHERE      m.minutes = (SELECT MAX(minutes) FROM matches); ```
```sql SELECT p1.first_name || ' ' || p1.last_name AS winner_name, p2.first_name || ' ' || p2.last_name AS loser_name FROM players p1 JOIN matches m ON p1.player_id = m.winner_id JOIN players p2 ON p2.player_id = m.loser_id ORDER BY m.minutes DESC LIMIT 1; ```
```sql SELECT p.player_id, p.first_name, AVG(r.ranking) AS average_ranking FROM players p JOIN rankings r ON p.player_id = r.player_id GROUP BY p.player_id, p.first_name; ```
```sql SELECT p.first_name, AVG(r.ranking) AS average_ranking FROM players p JOIN rankings r ON p.player_id = r.player_id GROUP BY p.player_id, p.first_name; ```
```sql SELECT p.player_id, p.first_name, SUM(r.ranking_points) AS total_ranking_points FROM players p JOIN rankings r ON p.player_id = r.player_id GROUP BY p.player_id, p.first_name; ```
```sql SELECT p.first_name, SUM(r.ranking_points) AS total_ranking_points FROM players p JOIN rankings r ON p.player_id = r.player_id GROUP BY p.player_id, p.first_name; ```
```sql SELECT country_code, COUNT(player_id) AS number_of_players FROM players GROUP BY country_code; ```
```sql SELECT country_code, COUNT(player_id) AS player_count FROM players GROUP BY country_code; ```
```sql SELECT country_code  FROM players  GROUP BY country_code  ORDER BY COUNT(player_id) DESC  LIMIT 1; ```
```sql SELECT country_code  FROM players  GROUP BY country_code  ORDER BY COUNT(player_id) DESC  LIMIT 1; ```
```sql SELECT country_code FROM players GROUP BY country_code HAVING COUNT(player_id) > 50; ```
```sql SELECT country_code FROM players GROUP BY country_code HAVING COUNT(player_id) > 50; ```
```sql SELECT ranking_date, COUNT(tours) AS total_tours FROM rankings GROUP BY ranking_date; ```
```sql SELECT ranking_date, SUM(tours) AS total_tours FROM rankings GROUP BY ranking_date; ```
```sql SELECT YEAR(tourney_date) AS match_year, COUNT(*) AS number_of_matches FROM matches GROUP BY YEAR(tourney_date) ORDER BY match_year; ```
```sql SELECT year, COUNT(*) AS matches_played FROM matches GROUP BY year; ```
```sql SELECT p.first_name, p.last_name, r.ranking FROM players p JOIN matches m ON p.player_id = m.winner_id JOIN rankings r ON p.player_id = r.player_id ORDER BY p.winner_age ASC LIMIT 3; ```
```sql SELECT p.first_name, p.last_name, m.winner_rank FROM players p JOIN matches m ON p.player_id = m.winner_id ORDER BY m.winner_age ASC LIMIT 3; ```
```sql SELECT COUNT(DISTINCT p.player_id) FROM players p JOIN matches m ON p.player_id = m.winner_id WHERE m.tourney_name = 'WTA Championships' AND p.hand = 'L'; ```
```sql SELECT COUNT(*)  FROM matches  JOIN players ON matches.winner_id = players.player_id  WHERE players.hand = 'L' AND matches.tourney_name = 'WTA Championships'; ```
```sql SELECT p.first_name, p.country_code, p.birth_date FROM players p JOIN matches m ON p.player_id = m.winner_id ORDER BY p.ranking_points DESC LIMIT 1; ```
```sql SELECT p.first_name, p.country_code, p.birth_date FROM players p JOIN matches m ON p.player_id = m.winner_id GROUP BY p.player_id, p.first_name, p.country_code, p.birth_date ORDER BY SUM(m.winner_rank_points) DESC LIMIT 1; ```
```sql SELECT hand, COUNT(player_id) AS number_of_players FROM players GROUP BY hand; ```
```sql SELECT hand, COUNT(*) AS player_count FROM players GROUP BY hand; ```
```sql SELECT COUNT(*) FROM ship WHERE disposition_of_ship = 'Captured'; ```
```sql SELECT name, tonnage  FROM ship  ORDER BY name DESC; ```
```sql SELECT name, date, result FROM battle; ```
```sql SELECT      MAX(killed + injured) AS max_death_toll,      MIN(killed + injured) AS min_death_toll FROM      death; ```
```sql SELECT AVG(injured) AS average_injuries FROM death; ```
```sql SELECT d.note, d.killed, d.injured FROM death d JOIN ship s ON d.caused_by_ship_id = s.id WHERE s.tonnage = 't'; ```
```sql SELECT name, result FROM battle WHERE bulgarian_commander != 'Boril'; ```
```sql SELECT DISTINCT b.id, b.name FROM battle b JOIN ship s ON b.id = s.lost_in_battle WHERE s.ship_type = 'Brig'; ```
```sql SELECT b.id, b.name FROM battle b JOIN ship s ON b.id = s.lost_in_battle JOIN death d ON s.id = d.caused_by_ship_id GROUP BY b.id, b.name HAVING SUM(d.killed) > 10; ```
```sql SELECT s.id, s.name FROM ship s JOIN death d ON s.id = d.caused_by_ship_id GROUP BY s.id, s.name ORDER BY SUM(d.injured) DESC LIMIT 1; ```
```sql SELECT DISTINCT name FROM battle WHERE bulgarian_commander = 'Kaloyan' AND latin_commander = 'Baldwin I'; ```
```sql SELECT COUNT(DISTINCT result) AS distinct_results FROM battle; ```
```sql SELECT COUNT(*)  FROM battle  WHERE id NOT IN (     SELECT lost_in_battle      FROM ship      WHERE tonnage = 225 ); ```
```sql SELECT b.name, b.date FROM battle b JOIN ship s1 ON b.id = s1.lost_in_battle JOIN ship s2 ON b.id = s2.lost_in_battle WHERE s1.name = 'Lettice' AND s2.name = 'HMS Atalanta'; ```
```sql SELECT b.name, b.result, b.bulgarian_commander FROM battle b LEFT JOIN ship s ON b.id = s.lost_in_battle WHERE s.id IS NULL AND b.location = 'English Channel'; ```
```sql SELECT note FROM death WHERE note LIKE '%East%'; ```
```sql SELECT line_1, line_2 FROM Addresses; ```
```sql SELECT line_1, line_2 FROM Addresses; ```
```sql SELECT COUNT(course_id) AS total_courses FROM Courses; ```
```sql SELECT COUNT(course_id) AS total_courses FROM Courses; ```
```sql SELECT course_description  FROM Courses  WHERE course_name = 'Math'; ```
```sql SELECT course_description FROM Courses WHERE course_name LIKE '%Math%'; ```
```sql SELECT zip_postcode  FROM Addresses  WHERE city = 'Port Chelsea'; ```
```sql SELECT zip_postcode  FROM Addresses  WHERE city = 'Port Chelsea'; ```
```sql SELECT dp.department_name, dp.department_id FROM Degree_Programs dp JOIN Departments d ON dp.department_id = d.department_id GROUP BY dp.department_id, dp.department_name ORDER BY COUNT(dp.degree_program_id) DESC LIMIT 1; ```
```sql SELECT department_name, department_id FROM Departments WHERE department_id = (     SELECT department_id     FROM Degree_Programs     GROUP BY department_id     ORDER BY COUNT(degree_program_id) DESC     LIMIT 1 ); ```
```sql SELECT COUNT(DISTINCT department_id) AS department_count FROM Degree_Programs; ```
```sql SELECT COUNT(DISTINCT department_id) AS distinct_departments FROM Degree_Programs; ```
```sql SELECT COUNT(DISTINCT degree_summary_name) AS distinct_degree_names FROM Degree_Programs; ```
```sql SELECT COUNT(DISTINCT degree_summary_name) AS number_of_degrees FROM Degree_Programs; ```
```sql SELECT COUNT(degree_program_id) AS degree_count FROM Degree_Programs JOIN Departments ON Degree_Programs.department_id = Departments.department_id WHERE Departments.department_name = 'Engineering'; ```
```sql SELECT COUNT(degree_program_id) AS degree_count FROM Degree_Programs WHERE department_id = (SELECT department_id FROM Departments WHERE department_name = 'Engineering'); ```
```sql SELECT section_name, section_description  FROM Sections; ```
```sql SELECT section_name, section_description FROM Sections; ```
```sql SELECT c.course_name, c.course_id FROM Courses c JOIN Sections s ON c.course_id = s.course_id GROUP BY c.course_id, c.course_name HAVING COUNT(s.section_id) <= 2; ```
```sql SELECT course_name, course_id FROM Courses WHERE course_id IN (     SELECT course_id     FROM Sections     GROUP BY course_id     HAVING COUNT(section_id) < 2 ); ```
```sql SELECT section_name FROM Sections ORDER BY section_name DESC; ```
```sql SELECT section_name FROM Sections ORDER BY section_name DESC; ```
```sql SELECT semester_id, semester_name FROM Semesters JOIN Student_Enrolment ON Semesters.semester_id = Student_Enrolment.semester_id GROUP BY semester_id, semester_name ORDER BY COUNT(student_id) DESC LIMIT 1; ```
```sql SELECT      s.semester_name,      s.semester_id,      COUNT(e.student_id) AS student_count FROM      Semesters s JOIN      Student_Enrolment e ON s.semester_id = e.semester_id GROUP BY      s.semester_name,      s.semester_id ORDER BY      student_count DESC LIMIT 1; ```
```sql SELECT department_description FROM Departments WHERE department_name LIKE '%computer%'; ```
```sql SELECT department_description FROM Departments WHERE department_name LIKE '%computer%'; ```
```sql SELECT s.first_name, s.middle_name, s.last_name, s.student_id FROM Students s JOIN Student_Enrolment se ON s.student_id = se.student_id GROUP BY s.student_id HAVING COUNT(DISTINCT se.degree_program_id) = 2; ```
```sql SELECT s.first_name, s.middle_name, s.last_name, s.student_id FROM Students s JOIN Student_Enrolment se ON s.student_id = se.student_id GROUP BY s.student_id, s.first_name, s.middle_name, s.last_name HAVING COUNT(DISTINCT se.degree_program_id) = 2; ```
```sql SELECT s.first_name, s.middle_name, s.last_name FROM Students s JOIN Student_Enrolment se ON s.student_id = se.student_id JOIN Degree_Programs dp ON se.degree_program_id = dp.degree_program_id WHERE dp.degree_summary_name = 'Bachelor'; ```
```sql SELECT s.first_name, s.middle_name, s.last_name FROM Students s JOIN Student_Enrolment se ON s.student_id = se.student_id JOIN Degree_Programs dp ON se.degree_program_id = dp.degree_program_id WHERE dp.degree_summary_name = 'Bachelors'; ```
```sql SELECT dp.degree_summary_name FROM Degree_Programs dp JOIN Student_Enrolment se ON dp.degree_program_id = se.degree_program_id GROUP BY dp.degree_summary_name ORDER BY COUNT(se.student_id) DESC LIMIT 1; ```
```sql SELECT dp.degree_summary_name FROM Degree_Programs dp JOIN Student_Enrolment se ON dp.degree_program_id = se.degree_program_id GROUP BY dp.degree_summary_name ORDER BY COUNT(se.student_id) DESC LIMIT 1; ```
```sql SELECT degree_program_id, degree_summary_name FROM Degree_Programs JOIN Student_Enrolment ON Degree_Programs.degree_program_id = Student_Enrolment.degree_program_id GROUP BY degree_program_id, degree_summary_name ORDER BY COUNT(student_id) DESC LIMIT 1; ```
```sql SELECT degree_program_id, degree_summary_name FROM Degree_Programs WHERE degree_program_id IN (     SELECT degree_program_id     FROM Student_Enrolment     GROUP BY degree_program_id     ORDER BY COUNT(student_id) DESC     LIMIT 1 ); ```
```sql SELECT      s.student_id,      s.first_name,      s.middle_name,      s.last_name,      COUNT(se.student_enrolment_id) AS enrollment_count FROM      Students s JOIN      Student_Enrolment se ON s.student_id = se.student_id GROUP BY      s.student_id,      s.first_name,      s.middle_name,      s.last_name ORDER BY      enrollment_count DESC LIMIT 1; ```
```sql SELECT      s.first_name,      s.middle_name,      s.last_name,      s.student_id,      COUNT(se.student_enrolment_id) AS enrollment_count FROM      Students s JOIN      Student_Enrolment se ON s.student_id = se.student_id GROUP BY      s.student_id,      s.first_name,      s.middle_name,      s.last_name ORDER BY      enrollment_count DESC LIMIT 1; ```
```sql SELECT semester_name FROM Semesters WHERE semester_id NOT IN (SELECT semester_id FROM Student_Enrolment); ```
```sql SELECT semester_name FROM Semesters WHERE semester_id NOT IN (SELECT semester_id FROM Student_Enrolment); ```
```sql SELECT DISTINCT c.course_name FROM Courses c JOIN Student_Enrolment_Courses sec ON c.course_id = sec.course_id; ```
```sql SELECT DISTINCT c.course_name FROM Courses c JOIN Student_Enrolment_Courses sec ON c.course_id = sec.course_id; ```
```sql SELECT c.course_name FROM Courses c JOIN Student_Enrolment_Courses sec ON c.course_id = sec.course_id GROUP BY c.course_name ORDER BY COUNT(sec.student_course_id) DESC LIMIT 1; ```
```sql SELECT c.course_name FROM Courses c JOIN Student_Enrolment_Courses sec ON c.course_id = sec.course_id GROUP BY c.course_name ORDER BY COUNT(sec.student_course_id) DESC LIMIT 1; ```
```sql SELECT last_name FROM Students WHERE current_address_id IN (     SELECT address_id     FROM Addresses     WHERE state_province_county = 'North Carolina' ) AND student_id NOT IN (     SELECT student_id     FROM Student_Enrolment ); ```
```sql SELECT s.last_name FROM Students s JOIN Addresses a ON s.permanent_address_id = a.address_id LEFT JOIN Student_Enrolment se ON s.student_id = se.student_id WHERE a.state_province_county = 'North Carolina' AND se.student_id IS NULL; ```
```sql SELECT t.transcript_date, t.transcript_id FROM Transcripts t JOIN Transcript_Contents tc ON t.transcript_id = tc.transcript_id GROUP BY t.transcript_date, t.transcript_id HAVING COUNT(tc.student_course_id) >= 2; ```
```sql SELECT t.transcript_date, t.transcript_id FROM Transcripts t JOIN Transcript_Contents tc ON t.transcript_id = tc.transcript_id GROUP BY t.transcript_date, t.transcript_id HAVING COUNT(tc.student_course_id) >= 2; ```
```sql SELECT cell_mobile_number FROM Students WHERE first_name = 'Timmothy' AND last_name = 'Ward'; ```
```sql SELECT cell_mobile_number  FROM Students  WHERE first_name = 'Timmothy' AND last_name = 'Ward'; ```
```sql SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1; ```
```sql SELECT first_name, middle_name, last_name  FROM Students  ORDER BY date_first_registered ASC  LIMIT 1; ```
```sql SELECT first_name, middle_name, last_name FROM Students WHERE student_id IN (     SELECT student_id     FROM Student_Enrolment     WHERE semester_id IN (         SELECT semester_id         FROM Semesters         WHERE semester_description = 'Graduation'     )     ORDER BY date_left ASC     LIMIT 1 ); ```
```sql SELECT first_name, middle_name, last_name FROM Students WHERE date_left IS NOT NULL ORDER BY date_left ASC LIMIT 1; ```
```sql SELECT first_name FROM Students WHERE permanent_address_id <> current_address_id; ```
```sql SELECT first_name, middle_name, last_name FROM Students WHERE permanent_address_id <> current_address_id; ```
```sql SELECT      a.address_id,      a.line_1,      a.line_2,      a.line_3 FROM      Addresses a JOIN      Students s ON a.address_id = s.current_address_id GROUP BY      a.address_id,      a.line_1,      a.line_2,      a.line_3 ORDER BY      COUNT(s.student_id) DESC LIMIT 1; ```
```sql SELECT a.address_id, a.line_1, a.line_2 FROM Addresses a JOIN Students s ON a.address_id = s.permanent_address_id GROUP BY a.address_id, a.line_1, a.line_2 ORDER BY COUNT(s.student_id) DESC LIMIT 1; ```
```sql SELECT AVG(transcript_date) AS average_transcript_date FROM Transcripts; ```
```sql SELECT AVG(transcript_date) AS average_transcript_date FROM Transcripts; ```
```sql SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date ASC LIMIT 1; ```
```sql SELECT MIN(transcript_date) AS earliest_transcript_date, other_details FROM Transcripts; ```
```sql SELECT COUNT(transcript_id) AS number_of_transcripts FROM Transcripts; ```
```sql SELECT COUNT(transcript_id) AS total_transcripts FROM Transcripts; ```
```sql SELECT MAX(transcript_date) AS last_transcript_release_date FROM Transcripts; ```
```sql SELECT MAX(transcript_date) AS last_transcript_date FROM Transcripts; ```
```sql SELECT student_course_id, COUNT(transcript_id) AS transcript_count FROM Transcript_Contents GROUP BY student_course_id ORDER BY transcript_count DESC LIMIT 1; ```
```sql SELECT course_id, student_enrolment_id, COUNT(transcript_id) AS transcript_count FROM Student_Enrolment_Courses JOIN Transcript_Contents ON Student_Enrolment_Courses.student_course_id = Transcript_Contents.student_course_id GROUP BY course_id, student_enrolment_id ORDER BY transcript_count DESC LIMIT 1; ```
```sql SELECT transcript_date, transcript_id FROM Transcripts WHERE transcript_id IN (     SELECT transcript_id     FROM Transcript_Contents     GROUP BY transcript_id     ORDER BY COUNT(student_course_id) ASC     LIMIT 1 ); ```
```sql SELECT transcript_id, transcript_date FROM Transcripts WHERE transcript_id IN (     SELECT transcript_id     FROM Transcript_Contents     GROUP BY transcript_id     ORDER BY COUNT(*) ASC     LIMIT 1 ); ```
```sql SELECT s.semester_name FROM Semesters s JOIN Student_Enrolment se ON s.semester_id = se.semester_id JOIN Degree_Programs dp ON se.degree_program_id = dp.degree_program_id WHERE dp.degree_summary_name IN ('Master', 'Bachelor') GROUP BY s.semester_id HAVING COUNT(DISTINCT dp.degree_summary_name) = 2; ```
```sql SELECT semester_id FROM Student_Enrolment WHERE degree_program_id IN (     SELECT degree_program_id     FROM Degree_Programs     WHERE degree_summary_name IN ('Masters', 'Bachelors') ) GROUP BY semester_id HAVING COUNT(DISTINCT degree_program_id) = 2; ```
```sql SELECT COUNT(DISTINCT current_address_id) AS number_of_different_addresses FROM Students; ```
```sql SELECT DISTINCT a.address_id, a.line_1, a.line_2, a.line_3, a.city, a.zip_postcode, a.state_province_county, a.country, a.other_address_details FROM Addresses a JOIN Students s ON a.address_id = s.current_address_id OR a.address_id = s.permanent_address_id; ```
```sql SELECT * FROM Students ORDER BY last_name DESC, first_name DESC; ```
```sql SELECT other_student_details  FROM Students  ORDER BY last_name DESC, first_name DESC; ```
```sql SELECT * FROM Sections WHERE section_name = 'h'; ```
```sql SELECT section_description  FROM Sections  WHERE section_name = 'h'; ```
```sql SELECT first_name FROM Students WHERE permanent_address_id IN (     SELECT address_id     FROM Addresses     WHERE country = 'Haiti' ) OR cell_mobile_number = '09700166582'; ```
```sql SELECT first_name FROM Students WHERE permanent_address_id IN (     SELECT address_id     FROM Addresses     WHERE country = 'Haiti' ) OR cell_mobile_number = '09700166582'; ```
```sql SELECT Title FROM Cartoon ORDER BY Title ASC; ```
```sql SELECT Title FROM Cartoon ORDER BY Title ASC; ```
```sql SELECT * FROM Cartoon WHERE Directed_by = 'Ben Jones'; ```
```sql SELECT Title FROM Cartoon WHERE Directed_by = 'Ben Jones'; ```
```sql SELECT COUNT(*) FROM Cartoon WHERE Written_by = 'Joseph Kuhr'; ```
```sql SELECT COUNT(*) FROM Cartoon WHERE Written_by = 'Joseph Kuhr'; ```
```sql SELECT Title, Directed_by  FROM Cartoon  ORDER BY Original_air_date; ```
```sql SELECT Cartoon.Title, Cartoon.Directed_by FROM Cartoon ORDER BY Cartoon.Original_air_date; ```
```sql SELECT Title FROM Cartoon WHERE Directed_by IN ('Ben Jones', 'Brandon Vietti'); ```
```sql SELECT Title FROM Cartoon WHERE Directed_by IN ('Ben Jones', 'Brandon Vietti'); ```
```sql SELECT Country, COUNT(id) AS Number_of_TV_Channels FROM TV_Channel GROUP BY Country ORDER BY Number_of_TV_Channels DESC LIMIT 1; ```
```sql SELECT Country, COUNT(*) AS Number_of_Channels FROM TV_Channel GROUP BY Country ORDER BY Number_of_Channels DESC LIMIT 1; ```
```sql SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT Content) FROM TV_Channel; ```
```sql SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT Content) FROM TV_Channel; ```
```sql SELECT Content FROM TV_Channel WHERE series_name = 'Sky Radio'; ```
```sql SELECT Content  FROM TV_Channel  WHERE series_name = 'Sky Radio'; ```
```sql SELECT Package_Option  FROM TV_Channel  WHERE series_name = 'Sky Radio'; ```
```sql SELECT Package_Option FROM TV_Channel WHERE series_name = 'Sky Radio'; ```
```sql SELECT COUNT(*) FROM TV_Channel WHERE Language = 'English'; ```
```sql SELECT COUNT(*)  FROM TV_Channel  WHERE Language = 'English'; ```
```sql SELECT Language, COUNT(*) AS Number_of_TV_Channels FROM TV_Channel GROUP BY Language ORDER BY Number_of_TV_Channels ASC LIMIT 1; ```
```sql SELECT Language, COUNT(*) AS Channel_Count FROM TV_Channel GROUP BY Language ORDER BY Channel_Count ASC LIMIT 1; ```
```sql SELECT Language, COUNT(*) AS Number_of_TV_Channels FROM TV_Channel GROUP BY Language; ```
```sql SELECT Language, COUNT(id) AS Number_of_TV_Channels FROM TV_Channel GROUP BY Language; ```
```sql SELECT TV_Channel.series_name FROM TV_Channel JOIN Cartoon ON TV_Channel.id = Cartoon.Channel WHERE Cartoon.Title = 'The Rise of the Blue Beetle!'; ```
```sql SELECT TV_Channel.series_name FROM TV_Channel JOIN Cartoon ON TV_Channel.id = Cartoon.Channel WHERE Cartoon.Title = 'The Rise of the Blue Beetle'; ```
```sql SELECT Cartoon.Title FROM Cartoon JOIN TV_Channel ON Cartoon.Channel = TV_Channel.id WHERE TV_Channel.series_name = 'Sky Radio'; ```
```sql SELECT Cartoon.Title FROM Cartoon JOIN TV_Channel ON Cartoon.Channel = TV_Channel.id WHERE TV_Channel.series_name = 'Sky Radio'; ```
```sql SELECT Episode  FROM TV_series  ORDER BY Rating; ```
```sql SELECT Episode FROM TV_series ORDER BY Rating; ```
```sql SELECT Episode, Rating  FROM TV_series  ORDER BY Rating DESC  LIMIT 3; ```
```sql SELECT Episode, Rating  FROM TV_series  ORDER BY Rating DESC  LIMIT 3; ```
```sql SELECT MIN(Share) AS Min_Share, MAX(Share) AS Max_Share FROM TV_series; ```
```sql SELECT MAX(Share), MIN(Share) FROM TV_series; ```
```sql SELECT Air_Date FROM TV_series WHERE Episode = 'A Love of a Lifetime'; ```
```sql SELECT Air_Date FROM TV_series WHERE Episode = 'A Love of a Lifetime'; ```
```sql SELECT Weekly_Rank FROM TV_series WHERE Episode = 'A Love of a Lifetime'; ```
```sql SELECT Weekly_Rank FROM TV_series WHERE Episode = 'A Love of a Lifetime'; ```
```sql SELECT TV_Channel.series_name FROM TV_Channel JOIN TV_series ON TV_Channel.id = TV_series.Channel WHERE TV_series.Episode = 'A Love of a Lifetime'; ```
```sql SELECT T1.series_name  FROM TV_Channel AS T1  JOIN TV_series AS T2 ON T1.id = T2.Channel  WHERE T2.Episode = 'A Love of a Lifetime'; ```
```sql SELECT Episode  FROM TV_series  JOIN TV_Channel ON TV_series.Channel = TV_Channel.id  WHERE TV_Channel.series_name = 'Sky Radio'; ```
```sql SELECT Episode FROM TV_series WHERE series_name = 'Sky Radio'; ```
```sql SELECT Directed_by, COUNT(*) AS Number_of_Cartoons FROM Cartoon WHERE Directed_by IN ('Director1', 'Director2', 'Director3') GROUP BY Directed_by; ```
```sql SELECT Directed_by, COUNT(id) AS Number_of_Cartoons FROM Cartoon GROUP BY Directed_by; ```
```sql SELECT Cartoon.Production_code, TV_Channel.Channel FROM Cartoon JOIN TV_Channel ON Cartoon.Channel = TV_Channel.id ORDER BY Cartoon.Original_air_date DESC LIMIT 1; ```
```sql SELECT Production_code, Channel  FROM Cartoon  ORDER BY Original_air_date DESC  LIMIT 1; ```
```sql SELECT Package_Option, series_name  FROM TV_Channel  WHERE Hight_definition_TV = 'Yes'; ```
```sql SELECT TV_Channel.Package_Option, TV_series.series_name FROM TV_Channel JOIN TV_series ON TV_Channel.id = TV_series.Channel WHERE TV_Channel.Hight_definition_TV = 'Yes'; ```
```sql SELECT TV_Channel.Country FROM TV_Channel JOIN Cartoon ON TV_Channel.id = Cartoon.Channel WHERE Cartoon.Written_by = 'Todd Casey'; ```
```sql SELECT DISTINCT tc.Country FROM TV_Channel tc JOIN Cartoon c ON tc.id = c.Channel WHERE c.Written_by = 'Todd Casey'; ```
```sql SELECT c.Country FROM TV_Channel c WHERE c.id NOT IN (     SELECT ca.Channel     FROM Cartoon ca     WHERE ca.Written_by = 'Todd Casey' ); ```
```sql SELECT DISTINCT Country FROM TV_Channel WHERE id NOT IN (     SELECT Channel     FROM Cartoon     WHERE Written_by = 'Todd Casey' ); ```
```sql SELECT TC.series_name, TC.Country FROM TV_Channel TC JOIN Cartoon C ON TC.id = C.Channel WHERE C.Directed_by IN ('Ben Jones', 'Michael Chang'); ```
```sql SELECT TV_Channel.series_name, TV_Channel.Country FROM TV_Channel JOIN Cartoon ON TV_Channel.id = Cartoon.Channel WHERE Cartoon.Directed_by IN ('Ben Jones', 'Michael Chang'); ```
```sql SELECT Pixel_aspect_ratio_PAR, Country  FROM TV_Channel  WHERE Language != 'English'; ```
```sql SELECT Pixel_aspect_ratio_PAR, Country  FROM TV_Channel  WHERE Language != 'English'; ```
```sql SELECT id FROM TV_Channel WHERE Country IN (     SELECT Country     FROM TV_Channel     GROUP BY Country     HAVING COUNT(id) > 2 ); ```
```sql SELECT id FROM TV_Channel WHERE id IN (     SELECT Channel     FROM TV_series     GROUP BY Channel     HAVING COUNT(*) > 2 ); ```
```sql SELECT id FROM TV_Channel WHERE id NOT IN (     SELECT Channel     FROM Cartoon     WHERE Directed_by = 'Ben Jones' ); ```
```sql SELECT id FROM TV_Channel WHERE id NOT IN (     SELECT Channel     FROM Cartoon     WHERE Directed_by = 'Ben Jones' ); ```
```sql SELECT Package_Option FROM TV_Channel WHERE id NOT IN (     SELECT Channel     FROM Cartoon     WHERE Directed_by = 'Ben Jones' ); ```
```sql SELECT Package_Option FROM TV_Channel WHERE id NOT IN (     SELECT Channel     FROM Cartoon     WHERE Directed_by = 'Ben Jones' ); ```
```sql SELECT COUNT(*) AS Total_Poker_Players FROM poker_player; ```
```sql SELECT COUNT(*) AS NumberOfPokerPlayers FROM poker_player; ```
```sql SELECT Earnings FROM poker_player ORDER BY Earnings DESC; ```
```sql SELECT Earnings FROM poker_player ORDER BY Earnings DESC; ```
```sql SELECT Final_Table_Made, Best_Finish FROM poker_player; ```
```sql SELECT Final_Table_Made, Best_Finish FROM poker_player; ```
```sql SELECT AVG(Earnings) AS Average_Earnings FROM poker_player; ```
```sql SELECT AVG(Earnings) AS Average_Earnings FROM poker_player; ```
```sql SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1; ```
```sql SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1; ```
```sql SELECT MAX(Final_Table_Made) AS Max_Final_Tables FROM poker_player WHERE Earnings < 200000; ```
```sql SELECT MAX(Final_Table_Made) AS Max_Final_Tables_Made FROM poker_player WHERE Earnings < 200000; ```
```sql SELECT p.Name FROM poker_player pp JOIN people p ON pp.People_ID = p.People_ID; ```
```sql SELECT p.Name FROM poker_player pp JOIN people p ON pp.People_ID = p.People_ID; ```
```sql SELECT p.Name FROM poker_player pp JOIN people p ON pp.People_ID = p.People_ID WHERE pp.Earnings > 300000; ```
```sql SELECT p.Name FROM poker_player pp JOIN people p ON pp.People_ID = p.People_ID WHERE pp.Earnings > 300000; ```
```sql SELECT p.Name FROM poker_player pp JOIN people p ON pp.People_ID = p.People_ID ORDER BY pp.Final_Table_Made ASC; ```
```sql SELECT p.Name  FROM poker_player pp  JOIN people p ON pp.People_ID = p.People_ID  ORDER BY pp.Final_Table_Made ASC; ```
```sql SELECT Birth_Date  FROM people  JOIN poker_player ON people.People_ID = poker_player.People_ID  ORDER BY Earnings ASC  LIMIT 1; ```
```sql SELECT p.Birth_Date FROM poker_player pp JOIN people p ON pp.People_ID = p.People_ID ORDER BY pp.Earnings ASC LIMIT 1; ```
```sql SELECT Money_Rank FROM poker_player JOIN people ON poker_player.People_ID = people.People_ID ORDER BY Height DESC LIMIT 1; ```
```sql SELECT p.Money_Rank FROM poker_player p JOIN people pe ON p.People_ID = pe.People_ID ORDER BY pe.Height DESC LIMIT 1; ```
```sql SELECT AVG(p.Earnings) AS Average_Earnings FROM poker_player p JOIN people pp ON p.People_ID = pp.People_ID WHERE pp.Height > 200; ```
```sql SELECT AVG(Earnings) AS Average_Earnings FROM poker_player JOIN people ON poker_player.People_ID = people.People_ID WHERE Height > 200; ```
```sql SELECT people.Name  FROM poker_player  JOIN people ON poker_player.People_ID = people.People_ID  ORDER BY poker_player.Earnings DESC; ```
```sql SELECT p.Name FROM poker_player pp JOIN people p ON pp.People_ID = p.People_ID ORDER BY pp.Earnings DESC; ```
```sql SELECT Nationality, COUNT(*) AS Number_of_People FROM people GROUP BY Nationality; ```
```sql SELECT p.Nationality, COUNT(*) AS Number_of_People FROM poker_player pp JOIN people p ON pp.People_ID = p.People_ID GROUP BY p.Nationality; ```
```sql SELECT Nationality, COUNT(*) AS Nationality_Count FROM people GROUP BY Nationality ORDER BY Nationality_Count DESC LIMIT 1; ```
```sql SELECT Nationality, COUNT(*) AS Nationality_Count FROM people GROUP BY Nationality ORDER BY Nationality_Count DESC LIMIT 1; ```
```sql SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2; ```
```sql SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2; ```
```sql SELECT Name, Birth_Date FROM people ORDER BY Name ASC; ```
```sql SELECT people.Name, people.Birth_Date FROM people ORDER BY people.Name ASC; ```
```sql SELECT Name  FROM people  WHERE Nationality != 'Russia'; ```
```sql SELECT Name FROM people WHERE Nationality != 'Russia'; ```
```sql SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player); ```
```sql SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player); ```
```sql SELECT COUNT(DISTINCT Nationality) FROM people; ```
```sql SELECT COUNT(DISTINCT Nationality) AS Number_of_Different_Nationalities FROM people; ```
```sql SELECT COUNT(DISTINCT state) AS number_of_states FROM AREA_CODE_STATE; ```
```sql SELECT C.contestant_number, C.contestant_name FROM CONTESTANTS C ORDER BY C.contestant_name DESC; ```
```sql SELECT vote_id, phone_number, state FROM VOTES; ```
```sql SELECT MAX(area_code) AS max_area_code, MIN(area_code) AS min_area_code FROM AREA_CODE_STATE; ```
```sql SELECT MAX(created) AS last_vote_date FROM VOTES WHERE state = 'CA'; ```
```sql SELECT contestant_name FROM CONTESTANTS WHERE contestant_name != 'Jessie Alloway'; ```
```sql SELECT DISTINCT state, created FROM VOTES; ```
```sql SELECT c.contestant_number, c.contestant_name FROM CONTESTANTS c JOIN VOTES v ON c.contestant_number = v.contestant_number GROUP BY c.contestant_number, c.contestant_name HAVING COUNT(v.vote_id) >= 2; ```
```sql SELECT c.contestant_number, c.contestant_name FROM CONTESTANTS c JOIN VOTES v ON c.contestant_number = v.contestant_number GROUP BY c.contestant_number, c.contestant_name ORDER BY COUNT(v.vote_id) ASC LIMIT 1; ```
```sql SELECT COUNT(*) FROM VOTES WHERE state IN ('NY', 'CA'); ```
```sql SELECT COUNT(*) AS unvoted_contestants FROM CONTESTANTS WHERE contestant_number NOT IN (SELECT contestant_number FROM VOTES); ```
```sql SELECT a.area_code FROM AREA_CODE_STATE a JOIN VOTES v ON a.state = v.state GROUP BY a.area_code ORDER BY COUNT(v.vote_id) DESC LIMIT 1; ```
```sql SELECT V.created, A.state, V.phone_number FROM VOTES V JOIN CONTESTANTS C ON V.contestant_number = C.contestant_number JOIN AREA_CODE_STATE A ON V.state = A.state WHERE C.contestant_name = 'Tabatha Gehling'; ```
```sql SELECT DISTINCT a.area_code FROM AREA_CODE_STATE a JOIN VOTES v ON a.state = v.state JOIN CONTESTANTS c ON v.contestant_number = c.contestant_number WHERE c.contestant_name = 'Tabatha Gehling' INTERSECT SELECT DISTINCT a.area_code FROM AREA_CODE_STATE a JOIN VOTES v ON a.state = v.state JOIN CONTESTANTS c ON v.contestant_number = c.contestant_number WHERE c.contestant_name = 'Kelly Clauss'; ```
```sql SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'; ```
```sql SELECT Name FROM country WHERE IndepYear > 1950; ```
```sql SELECT Name FROM country WHERE IndepYear > 1950; ```
```sql SELECT COUNT(*) FROM country WHERE GovernmentForm = 'Republic'; ```
```sql SELECT COUNT(*) FROM country WHERE GovernmentForm = 'Republic'; ```
```sql SELECT SUM(SurfaceArea)  FROM country  WHERE Region = 'Caribbean'; ```
```sql SELECT SUM(SurfaceArea) AS TotalSurfaceArea FROM country WHERE Continent = 'Caribbean'; ```
```sql SELECT Continent FROM country WHERE Name = 'Anguilla'; ```
```sql SELECT T2.Continent FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Name = 'Anguilla'; ```
```sql SELECT T2.Region FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Name = 'Kabul'; ```
```sql SELECT T2.Region FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Name = 'Kabul'; ```
```sql SELECT Language, Percentage FROM countrylanguage JOIN country ON countrylanguage.CountryCode = country.Code JOIN city ON country.Code = city.CountryCode WHERE city.Name = 'Aruba' ORDER BY Percentage DESC LIMIT 1; ```
```sql SELECT Language  FROM countrylanguage  JOIN country ON countrylanguage.CountryCode = country.Code  JOIN city ON country.Code = city.CountryCode  WHERE city.Name = 'Aruba' AND IsOfficial = 1; ```
```sql SELECT T1.Population, T1.LifeExpectancy FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'Portuguese' AND T2.IsOfficial = 1; ```
```sql SELECT Population, LifeExpectancy  FROM country  WHERE Name = 'Brazil'; ```
```sql SELECT T1.Region, T1.Population FROM country AS T1 WHERE T1.Name = 'Angola'; ```
```sql SELECT T1.Region, T1.Population  FROM country AS T1  WHERE T1.Name = 'Angola'; ```
```sql SELECT AVG(LifeExpectancy)  FROM country  WHERE Region = 'Central Africa'; ```
```sql SELECT AVG(LifeExpectancy) AS AverageLifeExpectancy FROM country WHERE Continent = 'Central Africa'; ```
```sql SELECT Name  FROM country  WHERE Continent = 'Asia'  ORDER BY LifeExpectancy ASC  LIMIT 1; ```
```sql SELECT Name FROM country WHERE Continent = 'Asia' ORDER BY LifeExpectancy ASC LIMIT 1; ```
```sql SELECT SUM(T1.Population), MAX(T1.GNP)  FROM country AS T1  JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode  WHERE T1.Continent = 'Asia'; ```
```sql SELECT SUM(Population) AS TotalPopulation, MAX(GNP) AS LargestGNP FROM city JOIN country ON city.CountryCode = country.Code WHERE country.Continent = 'Asia'; ```
```sql SELECT AVG(LifeExpectancy)  FROM country  WHERE Continent = 'Africa' AND GovernmentForm = 'Republic'; ```
```sql SELECT AVG(LifeExpectancy)  FROM country  WHERE Continent = 'Africa' AND GovernmentForm = 'Republic'; ```
```sql SELECT SUM(SurfaceArea)  FROM country  WHERE Continent IN ('Asia', 'Europe'); ```
```sql SELECT SUM(SurfaceArea) AS TotalSurfaceArea FROM country WHERE Continent IN ('Asia', 'Europe'); ```
```sql SELECT SUM(Population) AS TotalPopulation FROM city WHERE District = 'Gelderland'; ```
```sql SELECT SUM(Population) AS TotalPopulation FROM city WHERE District = 'Gelderland'; ```
```sql SELECT AVG(GNP), SUM(Population)  FROM country  WHERE GovernmentForm = 'US Territory'; ```
```sql SELECT AVG(T2.GNP), SUM(T2.Population)  FROM country AS T1  JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode  WHERE T2.Language = 'English' AND T2.IsOfficial = 1; ```
```sql SELECT COUNT(DISTINCT Language) AS UniqueLanguages FROM countrylanguage; ```
```sql SELECT COUNT(DISTINCT Language) AS NumberOfDistinctLanguages FROM countrylanguage; ```
```sql SELECT COUNT(DISTINCT GovernmentForm)  FROM country  WHERE Continent = 'Africa'; ```
```sql SELECT COUNT(DISTINCT GovernmentForm)  FROM country  WHERE Continent = 'Africa'; ```
```sql SELECT COUNT(DISTINCT Language) AS TotalLanguages FROM countrylanguage JOIN country ON countrylanguage.CountryCode = country.Code WHERE country.Name = 'Aruba'; ```
```sql SELECT COUNT(*)  FROM countrylanguage  JOIN country ON countrylanguage.CountryCode = country.Code  WHERE country.Name = 'Aruba'; ```
```sql SELECT COUNT(*) AS OfficialLanguages FROM countrylanguage JOIN country ON countrylanguage.CountryCode = country.Code WHERE country.Name = 'Afghanistan' AND countrylanguage.IsOfficial = 'T'; ```
```sql SELECT COUNT(*)  FROM countrylanguage  JOIN country ON countrylanguage.CountryCode = country.Code  WHERE country.Name = 'Afghanistan' AND IsOfficial = 'T'; ```
```sql SELECT c.Name FROM country c JOIN (     SELECT cl.CountryCode     FROM countrylanguage cl     GROUP BY cl.CountryCode     ORDER BY COUNT(cl.Language) DESC     LIMIT 1 ) AS largest_country ON c.Code = largest_country.CountryCode; ```
```sql SELECT T1.Name  FROM country AS T1  JOIN countrylanguage AS T2  ON T1.Code = T2.CountryCode  GROUP BY T1.Name  ORDER BY COUNT(DISTINCT T2.Language) DESC  LIMIT 1; ```
```sql SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(DISTINCT T2.Language) DESC LIMIT 1; ```
```sql SELECT c.Continent, COUNT(DISTINCT cl.Language) AS LanguageCount FROM country c JOIN countrylanguage cl ON c.Code = cl.CountryCode GROUP BY c.Continent ORDER BY LanguageCount DESC LIMIT 1; ```
```sql SELECT COUNT(*)  FROM countrylanguage  WHERE Language = 'English'  INTERSECT  SELECT COUNT(*)  FROM countrylanguage  WHERE Language = 'Dutch'; ```
```sql SELECT COUNT(DISTINCT CountryCode)  FROM countrylanguage  WHERE Language IN ('English', 'Dutch'); ```
```sql SELECT T1.Name FROM country AS T1 WHERE T1.Code IN (     SELECT T2.CountryCode     FROM countrylanguage AS T2     WHERE T2.Language = 'English' ) AND T1.Code IN (     SELECT T2.CountryCode     FROM countrylanguage AS T2     WHERE T2.Language = 'French' ); ```
```sql SELECT c.Name FROM country c JOIN countrylanguage cl ON c.Code = cl.CountryCode WHERE cl.Language IN ('English', 'French') GROUP BY c.Name HAVING COUNT(DISTINCT cl.Language) = 2; ```
```sql SELECT Name FROM country WHERE Code IN (     SELECT CountryCode     FROM countrylanguage     WHERE Language = 'English' AND IsOfficial = 1 ) AND Code IN (     SELECT CountryCode     FROM countrylanguage     WHERE Language = 'French' AND IsOfficial = 1 ); ```
```sql SELECT c.Name FROM country c JOIN countrylanguage cl ON c.Code = cl.CountryCode WHERE cl.Language IN ('English', 'French') AND cl.IsOfficial = 1 GROUP BY c.Name HAVING COUNT(cl.Language) = 2; ```
```sql SELECT COUNT(DISTINCT T1.Continent)  FROM country AS T1  JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode  WHERE T2.Language = 'Chinese'; ```
```sql SELECT COUNT(DISTINCT c.Continent)  FROM country c  JOIN countrylanguage cl ON c.Code = cl.CountryCode  WHERE cl.Language = 'Chinese'; ```
```sql SELECT DISTINCT T2.Region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language IN ('English', 'Dutch'); ```
```sql SELECT DISTINCT T2.Region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language IN ('Dutch', 'English'); ```
```sql SELECT c.Name FROM country c JOIN countrylanguage cl ON c.Code = cl.CountryCode WHERE cl.Language IN ('English', 'Dutch') AND cl.IsOfficial = 1; ```
```sql SELECT c.Name FROM country c JOIN countrylanguage cl ON c.Code = cl.CountryCode WHERE cl.Language IN ('English', 'Dutch') AND cl.IsOfficial = 1; ```
```sql SELECT l.Language, SUM(l.Percentage) AS TotalPercentage FROM country c JOIN countrylanguage l ON c.Code = l.CountryCode WHERE c.Continent = 'Asia' GROUP BY l.Language ORDER BY TotalPercentage DESC LIMIT 1; ```
```sql SELECT Language FROM countrylanguage JOIN country ON countrylanguage.CountryCode = country.Code WHERE Continent = 'Asia' GROUP BY Language ORDER BY SUM(Percentage) DESC LIMIT 1; ```
```sql SELECT Language FROM countrylanguage JOIN country ON countrylanguage.CountryCode = country.Code WHERE GovernmentForm = 'Republic' GROUP BY Language HAVING COUNT(DISTINCT CountryCode) = 1; ```
```sql SELECT c.Language FROM countrylanguage c JOIN country co ON c.CountryCode = co.Code WHERE c.IsOfficial = 'T' AND co.GovernmentForm = 'Republic' AND (     SELECT COUNT(*)      FROM countrylanguage cl      JOIN country co2 ON cl.CountryCode = co2.Code      WHERE cl.Language = c.Language AND co2.GovernmentForm != 'Republic' ) = 0; ```
```sql SELECT c.Name FROM city c JOIN countrylanguage cl ON c.CountryCode = cl.CountryCode WHERE cl.Language = 'English' ORDER BY c.Population DESC LIMIT 1; ```
```sql SELECT c.Name FROM city c JOIN countrylanguage cl ON c.CountryCode = cl.CountryCode WHERE cl.Language = 'English' ORDER BY c.Population DESC LIMIT 1; ```
```sql SELECT Name, Population, LifeExpectancy FROM country WHERE Continent = 'Asia' ORDER BY SurfaceArea DESC LIMIT 1; ```
```sql SELECT Name, Population, LifeExpectancy FROM country WHERE Continent = 'Asia' ORDER BY SurfaceArea DESC LIMIT 1; ```
```sql SELECT AVG(LifeExpectancy)  FROM country  WHERE Code NOT IN (     SELECT CountryCode      FROM countrylanguage      WHERE Language = 'English' AND IsOfficial = 1 ); ```
```sql SELECT AVG(LifeExpectancy) AS MeanLifeExpectancy FROM country JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE Language != 'English' OR IsOfficial = 0; ```
```sql SELECT SUM(Population) AS TotalPopulation FROM country WHERE Code NOT IN (     SELECT CountryCode     FROM countrylanguage     WHERE Language = 'English' ); ```
```sql SELECT SUM(Population)  FROM city  WHERE CountryCode NOT IN (     SELECT CountryCode      FROM countrylanguage      WHERE Language = 'English' ); ```
```sql SELECT T3.Language FROM country AS T1 JOIN countrylanguage AS T3 ON T1.Code = T3.CountryCode WHERE T1.HeadOfState = 'Beatrix' AND T3.IsOfficial = 1; ```
```sql SELECT cl.Language FROM country c JOIN countrylanguage cl ON c.Code = cl.CountryCode JOIN city ci ON c.Code = ci.CountryCode WHERE c.HeadOfState = 'Beatrix' AND cl.IsOfficial = 1; ```
```sql SELECT COUNT(DISTINCT Language) FROM countrylanguage JOIN country ON countrylanguage.CountryCode = country.Code WHERE country.IndepYear < 1930 AND IsOfficial = 'T'; ```
```sql SELECT COUNT(DISTINCT T2.Language) AS TotalDistinctOfficialLanguages FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.IndepYear < 1930 AND T2.IsOfficial = 1; ```
```sql SELECT Name  FROM country  WHERE SurfaceArea > (SELECT MAX(SurfaceArea) FROM country WHERE Continent = 'Europe'); ```
```sql SELECT Name  FROM country  WHERE SurfaceArea > (SELECT MAX(SurfaceArea) FROM country WHERE Continent = 'Europe'); ```
```sql SELECT Name  FROM country  WHERE Continent = 'Africa'    AND Population < (SELECT MIN(Population) FROM country WHERE Continent = 'Asia'); ```
```sql SELECT Name  FROM country  WHERE Continent = 'Africa'  AND Population < (     SELECT MIN(Population)      FROM country      WHERE Continent = 'Asia' ); ```
```sql SELECT c.Name FROM country c WHERE c.Continent = 'Asia' AND c.Population > (     SELECT MAX(c2.Population)     FROM country c2     WHERE c2.Continent = 'Africa' ); ```
```sql SELECT Name  FROM country  WHERE Continent = 'Asia'  AND Population > (     SELECT MAX(Population)      FROM country      WHERE Continent = 'Africa' ); ```
```sql SELECT Code FROM country WHERE Code NOT IN (     SELECT CountryCode     FROM countrylanguage     WHERE Language = 'English' ); ```
```sql SELECT Code FROM country WHERE Code NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English'); ```
```sql SELECT CountryCode FROM countrylanguage WHERE Language != 'English'; ```
```sql SELECT CountryCode FROM countrylanguage WHERE Language != 'English'; ```
```sql SELECT Code  FROM country  WHERE Code NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English')    AND GovernmentForm != 'Republic'; ```
```sql SELECT Code FROM country WHERE Code NOT IN (     SELECT CountryCode     FROM countrylanguage     WHERE Language = 'English' ) AND GovernmentForm != 'Republic'; ```
```sql SELECT c.Name FROM city c JOIN country co ON c.CountryCode = co.Code JOIN countrylanguage cl ON co.Code = cl.CountryCode WHERE co.Continent = 'Europe' AND cl.Language = 'English' AND cl.IsOfficial = 0; ```
```sql SELECT c.Name FROM city c JOIN country co ON c.CountryCode = co.Code JOIN countrylanguage cl ON c.CountryCode = cl.CountryCode WHERE co.Continent = 'Europe' AND cl.Language = 'English' AND cl.IsOfficial = 0; ```
```sql SELECT DISTINCT c.Name FROM city c JOIN country co ON c.CountryCode = co.Code JOIN countrylanguage cl ON co.Code = cl.CountryCode WHERE co.Continent = 'Asia' AND cl.Language = 'Chinese' AND cl.IsOfficial = 'T'; ```
```sql SELECT DISTINCT c.Name FROM city c JOIN country co ON c.CountryCode = co.Code JOIN countrylanguage cl ON co.Code = cl.CountryCode WHERE co.Continent = 'Asia' AND cl.Language = 'Chinese' AND cl.IsOfficial = 1; ```
```sql SELECT Name, IndepYear, SurfaceArea  FROM country  ORDER BY Population ASC  LIMIT 1; ```
```sql SELECT Name, IndepYear, SurfaceArea  FROM country  ORDER BY Population ASC  LIMIT 1; ```
```sql SELECT T1.Population, T1.Name, T1.HeadOfState  FROM country AS T1  ORDER BY T1.SurfaceArea DESC  LIMIT 1; ```
```sql SELECT Name, Population, HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1; ```
```sql SELECT c.Name, COUNT(cl.Language) AS LanguageCount FROM country c JOIN countrylanguage cl ON c.Code = cl.CountryCode GROUP BY c.Name HAVING COUNT(cl.Language) >= 3; ```
```sql SELECT c.Name, COUNT(cl.Language) AS LanguageCount FROM country c JOIN countrylanguage cl ON c.Code = cl.CountryCode GROUP BY c.Name HAVING COUNT(cl.Language) > 2; ```
```sql SELECT District, COUNT(*) AS NumberOfCities FROM city WHERE Population > (SELECT AVG(Population) FROM city) GROUP BY District; ```
```sql SELECT District, COUNT(*) AS CityCount FROM city WHERE Population > (SELECT AVG(Population) FROM city) GROUP BY District; ```
```sql SELECT c.GovernmentForm, SUM(c.Population) AS TotalPopulation FROM country c JOIN city ci ON c.Code = ci.CountryCode GROUP BY c.GovernmentForm HAVING AVG(c.LifeExpectancy) > 72; ```
```sql SELECT c.GovernmentForm, SUM(c.Population) AS TotalPopulation FROM country c JOIN countrylanguage cl ON c.Code = cl.CountryCode GROUP BY c.GovernmentForm HAVING AVG(c.LifeExpectancy) > 72; ```
```sql SELECT c.Continent, AVG(c.LifeExpectancy) AS AvgLifeExpectancy, SUM(c.Population) AS TotalPopulation FROM country c GROUP BY c.Continent HAVING AVG(c.LifeExpectancy) < 72; ```
```sql SELECT Continent, SUM(Population) AS TotalPopulation, AVG(LifeExpectancy) AS AverageLifeExpectancy FROM country GROUP BY Continent HAVING AVG(LifeExpectancy) < 72; ```
```sql SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5; ```
```sql SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5; ```
```sql SELECT Name FROM country ORDER BY Population DESC LIMIT 3; ```
```sql SELECT Name FROM country ORDER BY Population DESC LIMIT 3; ```
```sql SELECT Name FROM country ORDER BY Population ASC LIMIT 3; ```
```sql SELECT Name FROM country ORDER BY Population ASC LIMIT 3; ```
```sql SELECT COUNT(Code) FROM country WHERE Continent = 'Asia'; ```
```sql SELECT COUNT(Code) FROM country WHERE Continent = 'Asia'; ```
```sql SELECT c.Name FROM country c JOIN city ci ON c.Code = ci.CountryCode WHERE c.Continent = 'Europe' AND ci.Population > 80000; ```
```sql SELECT c.Name FROM country c JOIN city ci ON c.Code = ci.CountryCode WHERE c.Continent = 'Europe' AND ci.Population = 80000; ```
```sql SELECT SUM(Population) AS TotalPopulation, AVG(SurfaceArea) AS AverageArea FROM country WHERE Continent = 'North America' AND SurfaceArea > 3000; ```
```sql SELECT SUM(Population) AS TotalPopulation, AVG(SurfaceArea) AS AverageSurfaceArea FROM country WHERE Continent = 'North America' AND SurfaceArea > 3000; ```
```sql SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000; ```
```sql SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000; ```
```sql SELECT Language FROM countrylanguage GROUP BY Language ORDER BY SUM(Percentage) DESC LIMIT 1; ```
```sql SELECT Language  FROM countrylanguage  GROUP BY Language  ORDER BY COUNT(DISTINCT CountryCode) DESC  LIMIT 1; ```
```sql SELECT c.Name AS CountryName, cl.Language, cl.Percentage FROM country c JOIN countrylanguage cl ON c.Code = cl.CountryCode WHERE cl.Percentage = (     SELECT MAX(Percentage)     FROM countrylanguage     WHERE CountryCode = c.Code ); ```
```sql SELECT c.Code, cl.Language, cl.Percentage FROM country c JOIN countrylanguage cl ON c.Code = cl.CountryCode WHERE cl.Percentage = (     SELECT MAX(Percentage)     FROM countrylanguage     WHERE CountryCode = c.Code ); ```
```sql SELECT COUNT(*)  FROM countrylanguage  WHERE Language = 'Spanish' AND Percentage = (SELECT MAX(Percentage) FROM countrylanguage WHERE Language = 'Spanish'); ```
```sql SELECT COUNT(*)  FROM countrylanguage  WHERE Language = 'Spanish' AND IsOfficial = 1; ```
```sql SELECT CountryCode FROM countrylanguage WHERE Language = 'Spanish' ORDER BY Percentage DESC LIMIT 1; ```
```sql SELECT CountryCode FROM countrylanguage WHERE Language = 'Spanish' AND Percentage = (SELECT MAX(Percentage) FROM countrylanguage WHERE Language = 'Spanish'); ```
```sql SELECT COUNT(*) AS NumberOfConductors FROM conductor; ```
```sql SELECT COUNT(*) FROM conductor; ```
```sql SELECT Name FROM conductor ORDER BY Age ASC; ```
```sql SELECT Name FROM conductor ORDER BY Age; ```
```sql SELECT Name FROM conductor WHERE Nationality != 'USA'; ```
```sql SELECT Name FROM conductor WHERE Nationality != 'USA'; ```
```sql SELECT Record_Company  FROM orchestra  ORDER BY Year_of_Founded DESC; ```
```sql SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC; ```
```sql SELECT AVG(Attendance) AS Average_Attendance FROM show; ```
```sql SELECT AVG(Attendance) AS Average_Attendance FROM show; ```
```sql SELECT MAX(Share), MIN(Share)  FROM performance  WHERE Type != 'Live final'; ```
```sql SELECT MAX(Share), MIN(Share) FROM performance WHERE Type != 'Live final'; ```
```sql SELECT COUNT(DISTINCT Nationality) AS Number_of_Nationalities FROM conductor; ```
```sql SELECT COUNT(DISTINCT Nationality) AS Number_of_Different_Nationalities FROM conductor; ```
```sql SELECT Name FROM conductor ORDER BY Year_of_Work DESC; ```
```sql SELECT c.Name, (YEAR(CURDATE()) - c.Year_of_Work) AS Years_Worked FROM conductor c ORDER BY Years_Worked DESC; ```
```sql SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1; ```
```sql SELECT Name  FROM conductor  ORDER BY Year_of_Work DESC  LIMIT 1; ```
```sql SELECT conductor.Name, orchestra.Orchestra FROM conductor JOIN orchestra ON conductor.Conductor_ID = orchestra.Conductor_ID; ```
```sql SELECT conductor.Name, orchestra.Orchestra FROM conductor JOIN orchestra ON conductor.Conductor_ID = orchestra.Conductor_ID; ```
```sql SELECT c.Name FROM conductor c JOIN orchestra o ON c.Conductor_ID = o.Conductor_ID GROUP BY c.Name HAVING COUNT(o.Orchestra_ID) > 1; ```
```sql SELECT c.Name FROM conductor c JOIN orchestra o ON c.Conductor_ID = o.Conductor_ID GROUP BY c.Name HAVING COUNT(o.Orchestra_ID) > 1; ```
```sql SELECT C.Name FROM conductor C JOIN orchestra O ON C.Conductor_ID = O.Conductor_ID GROUP BY C.Conductor_ID, C.Name ORDER BY COUNT(O.Orchestra_ID) DESC LIMIT 1; ```
```sql SELECT C.Name FROM conductor C JOIN orchestra O ON C.Conductor_ID = O.Conductor_ID GROUP BY C.Name ORDER BY COUNT(O.Orchestra_ID) DESC LIMIT 1; ```
```sql SELECT conductor.Name FROM conductor JOIN orchestra ON conductor.Conductor_ID = orchestra.Conductor_ID WHERE orchestra.Year_of_Founded > 2008; ```
```sql SELECT conductor.Name FROM conductor JOIN orchestra ON conductor.Conductor_ID = orchestra.Conductor_ID WHERE orchestra.Year_of_Founded > 2008; ```
```sql SELECT Record_Company, COUNT(*) AS Number_of_Orchestras FROM orchestra GROUP BY Record_Company; ```
```sql SELECT Record_Company, COUNT(Orchestra_ID) AS Number_of_Orchestras FROM orchestra GROUP BY Record_Company; ```
```sql SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) ASC; ```
```sql SELECT Major_Record_Format, COUNT(*) AS Frequency FROM orchestra GROUP BY Major_Record_Format ORDER BY Frequency DESC; ```
```sql SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1; ```
```sql SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1; ```
```sql SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance); ```
```sql SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance); ```
```sql SELECT Record_Company FROM orchestra WHERE Year_of_Founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE Year_of_Founded > 2003; ```
```sql SELECT Record_Company FROM orchestra WHERE Year_of_Founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE Year_of_Founded > 2003; ```
```sql SELECT COUNT(*)  FROM orchestra  WHERE Major_Record_Format IN ('CD', 'DVD'); ```
```sql SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format IN ('CD', 'DVD'); ```
```sql SELECT o.Year_of_Founded FROM orchestra o JOIN performance p ON o.Orchestra_ID = p.Orchestra_ID GROUP BY o.Orchestra_ID, o.Year_of_Founded HAVING COUNT(p.Performance_ID) > 1; ```
```sql SELECT T2.Year_of_Founded FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T2.Orchestra_ID HAVING COUNT(T1.Performance_ID) > 1; ```
```sql SELECT COUNT(*) FROM Highschooler; ```
```sql SELECT COUNT(*) FROM Highschooler; ```
```sql SELECT name, grade FROM Highschooler; ```
```sql SELECT name, grade FROM Highschooler; ```
```sql SELECT DISTINCT grade FROM Highschooler; ```
```sql SELECT name, grade FROM Highschooler; ```
```sql SELECT grade FROM Highschooler WHERE name = 'Kyle'; ```
```sql SELECT grade FROM Highschooler WHERE name = 'Kyle'; ```
```sql SELECT name FROM Highschooler WHERE grade = 10; ```
```sql SELECT name FROM Highschooler WHERE grade = 10; ```
```sql SELECT ID FROM Highschooler WHERE name = 'Kyle'; ```
```sql SELECT ID FROM Highschooler WHERE name = 'Kyle'; ```
```sql SELECT COUNT(*) FROM Highschooler WHERE grade IN (9, 10); ```
```sql SELECT COUNT(*) FROM Highschooler WHERE grade IN (9, 10); ```
```sql SELECT grade, COUNT(*) AS number_of_highschoolers FROM Highschooler GROUP BY grade; ```
```sql SELECT grade, COUNT(*) FROM Highschooler GROUP BY grade; ```
```sql SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1; ```
```sql SELECT grade  FROM Highschooler  GROUP BY grade  ORDER BY COUNT(*) DESC  LIMIT 1; ```
```sql SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(ID) >= 4; ```
```sql SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(ID) >= 4; ```
```sql SELECT student_id, COUNT(friend_id) AS number_of_friends FROM Friend GROUP BY student_id; ```
```sql SELECT Highschooler.name, COUNT(Friend.friend_id) AS num_friends FROM Highschooler JOIN Friend ON Highschooler.ID = Friend.student_id GROUP BY Highschooler.ID; ```
```sql SELECT h1.name, COUNT(f.student_id) AS num_friends FROM Highschooler h1 JOIN Friend f ON h1.id = f.student_id GROUP BY h1.id, h1.name; ```
```sql SELECT h1.name, COUNT(f.student_id) AS num_friends FROM Highschooler h1 JOIN Friend f ON h1.id = f.student_id GROUP BY h1.id, h1.name; ```
```sql SELECT h.name FROM Highschooler h JOIN Friend f ON h.ID = f.student_id GROUP BY h.ID ORDER BY COUNT(f.friend_id) DESC LIMIT 1; ```
```sql SELECT name  FROM Highschooler  WHERE ID = (     SELECT student_id      FROM Friend      GROUP BY student_id      ORDER BY COUNT(friend_id) DESC      LIMIT 1 ); ```
```sql SELECT h1.name FROM Highschooler h1 JOIN Friend f ON h1.id = f.student_id GROUP BY h1.id HAVING COUNT(f.friend_id) >= 3; ```
```sql SELECT h1.name FROM Highschooler h1 JOIN Friend f ON h1.id = f.student_id GROUP BY h1.id HAVING COUNT(f.friend_id) >= 3; ```
```sql SELECT name FROM Highschooler WHERE ID IN (SELECT friend_id FROM Friend WHERE student_id = (SELECT ID FROM Highschooler WHERE name = 'Kyle')) ```
```sql SELECT H2.name FROM Highschooler H1 JOIN Friend F ON H1.ID = F.student_id JOIN Highschooler H2 ON F.friend_id = H2.ID WHERE H1.name = 'Kyle'; ```
```sql SELECT COUNT(*) AS friend_count FROM Friend JOIN Highschooler ON Friend.student_id = Highschooler.ID WHERE Highschooler.name = 'Kyle'; ```
```sql SELECT COUNT(*) AS friend_count FROM Friend JOIN Highschooler ON Friend.student_id = Highschooler.ID WHERE Highschooler.name = 'Kyle'; ```
```sql SELECT ID FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend); ```
```sql SELECT ID FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend); ```
```sql SELECT name FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend); ```
```sql SELECT name FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend); ```
```sql SELECT ID FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend)   AND ID IN (SELECT liked_id FROM Likes); ```
```sql SELECT student_id FROM Friend INTERSECT SELECT student_id FROM Likes; ```
```sql SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend)   AND ID IN (SELECT liked_id FROM Likes); ```
```sql SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend)   AND ID IN (SELECT student_id FROM Likes); ```
```sql SELECT student_id, COUNT(liked_id) AS number_of_likes FROM Likes GROUP BY student_id; ```
```sql SELECT student_id, COUNT(liked_id) AS number_of_likes FROM Likes GROUP BY student_id; ```
```sql SELECT H1.name, COUNT(L.student_id) AS number_of_likes FROM Highschooler H1 JOIN Likes L ON H1.ID = L.student_id GROUP BY H1.name; ```
```sql SELECT h.name, COUNT(l.liked_id) AS like_count FROM Highschooler h JOIN Likes l ON h.ID = l.student_id GROUP BY h.ID, h.name; ```
```sql SELECT H1.name FROM Highschooler H1 JOIN Likes L ON H1.ID = L.student_id GROUP BY H1.ID, H1.name ORDER BY COUNT(L.liked_id) DESC LIMIT 1; ```
```sql SELECT name FROM Highschooler WHERE ID = (SELECT student_id FROM Likes GROUP BY student_id ORDER BY COUNT(*) DESC LIMIT 1); ```
```sql SELECT name FROM Highschooler WHERE ID IN (     SELECT student_id     FROM Likes     GROUP BY student_id     HAVING COUNT(liked_id) >= 2 ); ```
```sql SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Likes GROUP BY student_id HAVING COUNT(liked_id) >= 2); ```
```sql SELECT h1.name FROM Highschooler h1 JOIN Friend f ON h1.ID = f.student_id WHERE h1.grade > 5 GROUP BY h1.ID HAVING COUNT(f.friend_id) >= 2; ```
```sql SELECT name  FROM Highschooler  WHERE grade > 5  AND ID IN (     SELECT student_id      FROM Friend      GROUP BY student_id      HAVING COUNT(friend_id) >= 2 ); ```
```sql SELECT COUNT(*) FROM Likes WHERE student_id = (SELECT ID FROM Highschooler WHERE name = 'Kyle'); ```
```sql SELECT COUNT(*) FROM Likes L JOIN Highschooler H ON L.student_id = H.ID WHERE H.name = 'Kyle'; ```
```sql SELECT AVG(grade) AS average_grade FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend); ```
```sql SELECT AVG(grade)  FROM Highschooler  WHERE ID IN (SELECT student_id FROM Friend); ```
```sql SELECT MIN(grade) AS min_grade FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend); ```
```sql SELECT MIN(grade)  FROM Highschooler  WHERE ID NOT IN (SELECT student_id FROM Friend); ```
```sql SELECT state FROM Owners INTERSECT SELECT state FROM Professionals; ```
```sql SELECT state FROM Owners INTERSECT SELECT state FROM Professionals; ```
```sql SELECT AVG(age) AS average_age FROM Dogs WHERE dog_id IN (SELECT dog_id FROM Treatments); ```
```sql SELECT AVG(dogs.age) AS average_age FROM Dogs dogs JOIN Treatments treatments ON dogs.dog_id = treatments.dog_id; ```
```sql SELECT p.professional_id, p.last_name, p.cell_number FROM Professionals p JOIN Treatments t ON p.professional_id = t.professional_id WHERE p.state = 'IN' GROUP BY p.professional_id, p.last_name, p.cell_number HAVING COUNT(t.treatment_id) > 2; ```
```sql SELECT p.professional_id, p.last_name, p.cell_number FROM Professionals p WHERE p.state = 'IN' UNION SELECT p.professional_id, p.last_name, p.cell_number FROM Professionals p JOIN Treatments t ON p.professional_id = t.professional_id GROUP BY p.professional_id, p.last_name, p.cell_number HAVING COUNT(t.treatment_id) > 2; ```
```sql SELECT d.name FROM Dogs d JOIN Treatments t ON d.dog_id = t.dog_id GROUP BY d.dog_id, d.name HAVING SUM(t.cost_of_treatment) <= 1000; ```
```sql SELECT d.name FROM Dogs d JOIN Owners o ON d.owner_id = o.owner_id JOIN Treatments t ON d.dog_id = t.dog_id GROUP BY d.dog_id, d.name HAVING SUM(t.cost_of_treatment) <= 1000; ```
```sql SELECT first_name FROM Owners UNION SELECT first_name FROM Professionals EXCEPT SELECT name FROM Dogs; ```
```sql SELECT first_name FROM Owners WHERE first_name NOT IN (     SELECT name     FROM Dogs ) UNION SELECT first_name FROM Professionals WHERE first_name NOT IN (     SELECT name     FROM Dogs ); ```
```sql SELECT professional_id, role_code, email_address FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments); ```
```sql SELECT professional_id, role_code, email_address FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments); ```
```sql SELECT o.owner_id, o.first_name, o.last_name FROM Owners o JOIN Dogs d ON o.owner_id = d.owner_id GROUP BY o.owner_id, o.first_name, o.last_name ORDER BY COUNT(d.dog_id) DESC LIMIT 1; ```
```sql SELECT owner_id, first_name, last_name FROM Owners JOIN Dogs ON Owners.owner_id = Dogs.owner_id GROUP BY owner_id, first_name, last_name ORDER BY COUNT(dog_id) DESC LIMIT 1; ```
```sql SELECT p.professional_id, p.role_code, p.first_name FROM Professionals p JOIN Treatments t ON p.professional_id = t.professional_id GROUP BY p.professional_id, p.role_code, p.first_name HAVING COUNT(t.treatment_id) >= 2; ```
```sql SELECT p.professional_id, p.role_code, p.first_name FROM Professionals p JOIN Treatments t ON p.professional_id = t.professional_id GROUP BY p.professional_id, p.role_code, p.first_name HAVING COUNT(t.treatment_id) >= 2; ```
```sql SELECT breed_name  FROM Breeds  JOIN Dogs ON Breeds.breed_code = Dogs.breed_code  GROUP BY breed_name  ORDER BY COUNT(*) DESC  LIMIT 1; ```
```sql SELECT breed_name FROM Breeds JOIN Dogs ON Breeds.breed_code = Dogs.breed_code GROUP BY breed_name ORDER BY COUNT(*) DESC LIMIT 1; ```
```sql SELECT o.owner_id, o.last_name FROM Owners o JOIN Dogs d ON o.owner_id = d.owner_id JOIN Treatments t ON d.dog_id = t.dog_id GROUP BY o.owner_id, o.last_name ORDER BY SUM(t.cost_of_treatment) DESC LIMIT 1; ```
```sql SELECT o.owner_id, o.last_name, SUM(t.cost_of_treatment) AS total_spent FROM Owners o JOIN Dogs d ON o.owner_id = d.owner_id JOIN Treatments t ON d.dog_id = t.dog_id GROUP BY o.owner_id, o.last_name ORDER BY total_spent DESC LIMIT 1; ```
```sql SELECT t2.treatment_type_description FROM Treatments AS t1 JOIN Treatment_Types AS t2 ON t1.treatment_type_code = t2.treatment_type_code GROUP BY t2.treatment_type_description ORDER BY SUM(t1.cost_of_treatment) ASC LIMIT 1; ```
```sql SELECT Treatment_Types.treatment_type_description, SUM(Treatments.cost_of_treatment) AS total_cost FROM Treatment_Types JOIN Treatments ON Treatment_Types.treatment_type_code = Treatments.treatment_type_code GROUP BY Treatment_Types.treatment_type_description ORDER BY total_cost ASC LIMIT 1; ```
```sql SELECT o.owner_id, o.zip_code, SUM(c.charge_amount) AS total_amount_paid FROM Owners o JOIN Dogs d ON o.owner_id = d.owner_id JOIN Treatments t ON d.dog_id = t.dog_id JOIN Charges c ON t.charge_id = c.charge_id GROUP BY o.owner_id, o.zip_code ORDER BY total_amount_paid DESC LIMIT 1; ```
```sql SELECT o.owner_id, o.zip_code, SUM(t.cost_of_treatment) AS total_spent FROM Owners o JOIN Dogs d ON o.owner_id = d.owner_id JOIN Treatments t ON d.dog_id = t.dog_id GROUP BY o.owner_id, o.zip_code ORDER BY total_spent DESC LIMIT 1; ```
```sql SELECT p.professional_id, p.cell_number FROM Professionals p JOIN Treatments t ON p.professional_id = t.professional_id GROUP BY p.professional_id, p.cell_number HAVING COUNT(DISTINCT t.treatment_type_code) >= 2; ```
```sql SELECT p.professional_id, p.cell_number FROM Professionals p JOIN Treatments t ON p.professional_id = t.professional_id GROUP BY p.professional_id, p.cell_number HAVING COUNT(DISTINCT t.treatment_type_code) >= 2; ```
```sql SELECT p.first_name, p.last_name FROM Professionals p JOIN Treatments t ON p.professional_id = t.professional_id WHERE t.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM Treatments); ```
```sql SELECT p.first_name, p.last_name FROM Professionals p JOIN Treatments t ON p.professional_id = t.professional_id WHERE t.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM Treatments); ```
```sql SELECT Treatments.date_of_treatment, Professionals.first_name FROM Treatments JOIN Professionals ON Treatments.professional_id = Professionals.professional_id; ```
```sql SELECT T1.date_of_treatment, P.first_name FROM Treatments AS T1 JOIN Professionals AS P ON T1.professional_id = P.professional_id; ```
```sql SELECT T1.cost_of_treatment, T3.treatment_type_description FROM Treatments AS T1 JOIN Treatment_Types AS T3 ON T1.treatment_type_code = T3.treatment_type_code; ```
```sql SELECT T1.cost_of_treatment, T3.treatment_type_description FROM Treatments AS T1 JOIN Treatment_Types AS T3 ON T1.treatment_type_code = T3.treatment_type_code; ```
```sql SELECT      Owners.first_name,      Owners.last_name,      Sizes.size_description FROM      Owners JOIN      Dogs ON Owners.owner_id = Dogs.owner_id JOIN      Sizes ON Dogs.size_code = Sizes.size_code; ```
```sql SELECT      O.first_name,      O.last_name,      S.size_description FROM      Owners O JOIN      Dogs D ON O.owner_id = D.owner_id JOIN      Sizes S ON D.size_code = S.size_code; ```
```sql SELECT Owners.first_name, Dogs.name FROM Owners JOIN Dogs ON Owners.owner_id = Dogs.owner_id; ```
```sql SELECT Owners.first_name, Dogs.name FROM Owners JOIN Dogs ON Owners.owner_id = Dogs.owner_id; ```
```sql SELECT d.name, t.date_of_treatment FROM Dogs d JOIN Breeds b ON d.breed_code = b.breed_code JOIN Treatments t ON d.dog_id = t.dog_id WHERE b.breed_name = (     SELECT breed_name     FROM Breeds     GROUP BY breed_name     ORDER BY COUNT(*) ASC     LIMIT 1 ); ```
```sql SELECT d.name, t.date_of_treatment FROM Dogs d JOIN Breeds b ON d.breed_code = b.breed_code JOIN Treatments t ON d.dog_id = t.dog_id WHERE b.breed_name = (     SELECT breed_name     FROM Breeds     GROUP BY breed_name     ORDER BY COUNT(*) ASC     LIMIT 1 ); ```
```sql SELECT Owners.first_name, Dogs.name FROM Owners JOIN Dogs ON Owners.owner_id = Dogs.owner_id WHERE Owners.state = 'VA'; ```
```sql SELECT O.first_name, D.name FROM Owners O JOIN Dogs D ON O.owner_id = D.owner_id WHERE O.state = 'VA'; ```
```sql SELECT d.date_arrived, d.date_departed FROM Dogs d JOIN Treatments t ON d.dog_id = t.dog_id; ```
```sql SELECT d.date_arrived, d.date_departed FROM Dogs d JOIN Treatments t ON d.dog_id = t.dog_id; ```
```sql SELECT o.last_name FROM Owners o JOIN Dogs d ON o.owner_id = d.owner_id ORDER BY d.date_of_birth DESC LIMIT 1; ```
```sql SELECT O.last_name FROM Owners O JOIN Dogs D ON O.owner_id = D.owner_id ORDER BY D.date_of_birth DESC LIMIT 1; ```
```sql SELECT email_address FROM Professionals WHERE state IN ('Hawaii', 'Wisconsin'); ```
```sql SELECT email_address FROM Professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'; ```
```sql SELECT date_arrived, date_departed FROM Dogs; ```
```sql SELECT date_arrived, date_departed FROM Dogs; ```
```sql SELECT COUNT(DISTINCT dog_id) AS number_of_dogs_with_treatments FROM Treatments; ```
```sql SELECT COUNT(*) AS number_of_dogs_with_treatment FROM Treatments; ```
```sql SELECT COUNT(DISTINCT professional_id) AS number_of_professionals FROM Treatments; ```
```sql SELECT COUNT(DISTINCT professional_id) AS number_of_professionals FROM Treatments; ```
```sql SELECT role_code, street, city, state FROM Professionals WHERE city LIKE '%West%'; ```
```sql SELECT role_code, street, city, state FROM Professionals WHERE city LIKE '%West%'; ```
```sql SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE '%North%'; ```
```sql SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE '%North%'; ```
```sql SELECT COUNT(*) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs); ```
```sql SELECT COUNT(*)  FROM Dogs  WHERE age < (SELECT AVG(age) FROM Dogs); ```
```sql SELECT MAX(cost_of_treatment) AS most_recent_treatment_cost FROM Treatments; ```
```sql SELECT cost_of_treatment  FROM Treatments  ORDER BY date_of_treatment DESC  LIMIT 1; ```
```sql SELECT COUNT(*) FROM Dogs WHERE dog_id NOT IN (SELECT dog_id FROM Treatments); ```
```sql SELECT COUNT(*)  FROM Dogs  WHERE dog_id NOT IN (SELECT dog_id FROM Treatments); ```
```sql SELECT COUNT(owner_id) AS owners_without_dogs FROM Owners WHERE owner_id NOT IN (SELECT owner_id FROM Dogs WHERE abandoned_yn = 'N'); ```
```sql SELECT COUNT(owner_id)  FROM Owners  WHERE owner_id NOT IN (SELECT owner_id FROM Dogs WHERE date_departed IS NULL); ```
```sql SELECT COUNT(professional_id) AS professionals_without_treatments FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments); ```
```sql SELECT COUNT(professional_id) AS professionals_without_treatments FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments); ```
```sql SELECT name, age, weight  FROM Dogs  WHERE abandoned_yn = 1; ```
```sql SELECT name, age, weight FROM Dogs WHERE abandoned_yn = 1; ```
```sql SELECT AVG(age) AS average_age FROM Dogs; ```
```sql SELECT AVG(age) AS average_age FROM Dogs; ```
```sql SELECT MAX(age) AS oldest_dog_age FROM Dogs; ```
```sql SELECT MAX(age) AS oldest_dog_age FROM Dogs; ```
```sql SELECT charge_type, charge_amount  FROM Charges; ```
```sql SELECT charge_type, charge_amount FROM Charges; ```
```sql SELECT MAX(charge_amount) AS max_charge_amount FROM Charges; ```
```sql SELECT charge_amount  FROM Charges  ORDER BY charge_amount DESC  LIMIT 1; ```
```sql SELECT email_address, cell_number, home_phone FROM Professionals; ```
```sql SELECT email_address, cell_number, home_phone FROM Professionals; ```
```sql SELECT DISTINCT B.breed_name, S.size_description FROM Breeds B JOIN Dogs D ON B.breed_code = D.breed_code JOIN Sizes S ON D.size_code = S.size_code; ```
```sql SELECT DISTINCT breed_code, size_code FROM Dogs; ```
```sql SELECT P.first_name, T.treatment_type_description FROM Professionals P JOIN Treatments TR ON P.professional_id = TR.professional_id JOIN Treatment_Types T ON TR.treatment_type_code = T.treatment_type_code; ```
```sql SELECT P.first_name, T1.treatment_type_description FROM Professionals P JOIN Treatments T ON P.professional_id = T.professional_id JOIN Treatment_Types T1 ON T.treatment_type_code = T1.treatment_type_code; ```
```sql SELECT COUNT(*) FROM singer; ```
```sql SELECT COUNT(*) FROM singer; ```
```sql SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC; ```
```sql SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC; ```
```sql SELECT Birth_Year, Citizenship FROM singer; ```
```sql SELECT Birth_Year, Citizenship FROM singer; ```
```sql SELECT Name FROM singer WHERE Citizenship != 'France'; ```
```sql SELECT Name FROM singer WHERE Citizenship != 'French'; ```
```sql SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949; ```
```sql SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949; ```
```sql SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1; ```
```sql SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1; ```
```sql SELECT Citizenship, COUNT(*) AS Number_of_Singers FROM singer GROUP BY Citizenship; ```
```sql SELECT Citizenship, COUNT(*) AS Number_of_Singers FROM singer GROUP BY Citizenship; ```
```sql SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1; ```
```sql SELECT Citizenship  FROM singer  GROUP BY Citizenship  ORDER BY COUNT(*) DESC  LIMIT 1; ```
```sql SELECT Citizenship, MAX(Net_Worth_Millions) AS Max_Net_Worth FROM singer GROUP BY Citizenship; ```
```sql SELECT Citizenship, MAX(Net_Worth_Millions) AS Max_Net_Worth FROM singer GROUP BY Citizenship; ```
```sql SELECT song.Title, singer.Name FROM song JOIN singer ON song.Singer_ID = singer.Singer_ID; ```
```sql SELECT song.Title, singer.Name FROM song JOIN singer ON song.Singer_ID = singer.Singer_ID; ```
```sql SELECT DISTINCT Name  FROM singer  JOIN song ON singer.Singer_ID = song.Singer_ID  WHERE Sales > 300000; ```
```sql SELECT DISTINCT s.Name FROM singer s JOIN song so ON s.Singer_ID = so.Singer_ID WHERE so.Sales > 300000; ```
```sql SELECT s.Name FROM singer s JOIN song song ON s.Singer_ID = song.Singer_ID GROUP BY s.Singer_ID, s.Name HAVING COUNT(song.Song_ID) > 1; ```
```sql SELECT s.Name FROM singer s JOIN song song ON s.Singer_ID = song.Singer_ID GROUP BY s.Singer_ID, s.Name HAVING COUNT(song.Song_ID) > 1; ```
```sql SELECT s.Name, SUM(so.Sales) AS Total_Sales FROM singer s JOIN song so ON s.Singer_ID = so.Singer_ID GROUP BY s.Name; ```
```sql SELECT s.Name, SUM(so.Sales) AS Total_Sales FROM singer s JOIN song so ON s.Singer_ID = so.Singer_ID GROUP BY s.Name; ```
```sql SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song); ```
```sql SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song); ```
```sql SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955; ```
```sql SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955; ```
```sql SELECT COUNT(feature_id) AS total_available_features FROM Other_Available_Features; ```
```sql SELECT feature_type_name  FROM Ref_Feature_Types  WHERE feature_type_code = (SELECT feature_type_code                             FROM Other_Available_Features                             WHERE feature_name = 'AirCon'); ```
```sql SELECT rpt.property_type_description FROM Ref_Property_Types rpt JOIN Properties p ON rpt.property_type_code = p.property_type_code; ```
```sql SELECT p.property_name FROM Properties p JOIN Ref_Property_Types rpt ON p.property_type_code = rpt.property_type_code WHERE (rpt.property_type_description = 'House' OR rpt.property_type_description = 'Apartment')   AND p.room_count > 1; ```
