SELECT *
FROM ['Covid Deaths$']
ORDER BY 3,4


SELECT location, DATE, total_cases, new_cases, total_deaths, population
FROM ['Covid Deaths$']
ORDER BY 1,2

SELECT location, DATE, total_cases, total_deaths,(cast(total_deaths as float)/cast(total_cases as float))*100 as DeathPercentage
FROM ['Covid Deaths$']
WHERE location LIKE '%INDIA%'
ORDER BY 1,2


SELECT location, DATE, population, total_cases, (cast(total_cases as float)/cast(population as float))*100 as CASEPercentage
FROM ['Covid Deaths$']
WHERE location LIKE '%INDIA%'
ORDER BY 1,2

SELECT LOCATION, population, MAX(total_cases) AS HIGHESTINFECTIONCOUNT, MAX(cast(total_cases as float)/cast(population as float))*100 as INFECTEDPOPULATION
FROM ['Covid Deaths$']
GROUP BY LOCATION, POPULATION
ORDER BY INFECTEDPOPULATION DESC

SELECT LOCATION, population, MAX(total_deaths) AS HIGHESTDEATHCOUNT, MAX(cast(total_deaths as FLOAT)/cast(population as FLOAT))*100 as DEATHCOUNT
FROM ['Covid Deaths$']
GROUP BY LOCATION, POPULATION
ORDER BY DEATHCOUNT DESC

SELECT LOCATION, MAX(total_deaths) AS HIGHESTDEATHCOUNT
FROM ['Covid Deaths$']
WHERE continent IS NULL
GROUP BY LOCATION
ORDER BY HIGHESTDEATHCOUNT DESC
