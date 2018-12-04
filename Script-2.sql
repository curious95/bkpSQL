-- Checking Deadlocked process
USE Master
GO
EXEC sp_who2
GO

--
--
--
-- Checking filled records
 SELECT
	COUNT(webshopchecker),
	webshopchecker
from
	(
	SELECT
		*
	from
		[Prestashop.V3.production3]
	WHERE
		IsNull(WebshopCheck,
		'') = '') as a
GROUP BY
	webshopchecker;

--
--
--
-- Production table data check
 SELECT
	domain,
	webshopchecker,
	webshopcheck,
	WebshopCheckNotes,
	linkedinNotes
FROM
	[Prestashop.V3.production3];

SELECT
	COUNT(*)
FROM
	[Prestashop.V3.production3];
	

--
--
-- Inserting into production
/*SELECT
	* INTO
		[Prestashop.V3.production3]
	FROM
		[Prestashop.V3.production]
	where
		overallvisits BETWEEN 50000 and 9999999999;

CREATE
	INDEX idx_domain ON
	[Prestashop.V3.production3] (domain);*/

--
--
-- Nullifying webshop check
/*UPDATE [Prestashop.V3.production3] set webshopcheck = '', webshopchecker='', webshopchecknotes='';
UPDATE [Prestashop.V3.production3] set linkedinNotes = '', linkedinvalidator='', qualityCheck='', country='';
UPDATE [Prestashop.V3.production3] set linkedinAPI = '', companyName='', qualityCheck='', linkedinCompanyPage='',linkedinCompanyParentPage='';
UPDATE [Prestashop.V3.production3] set linkedinNotes = '';*/
---

---UPDATE [Prestashop.V3.production3] set linkedinNotes = '', linkedinvalidator='', country='', linkedinAPI = '', companyName='', qualityCheck='', linkedinCompanyPage='',linkedinCompanyParentPage='';


SELECT domain, companyname, country from [Prestashop.V3.production3];





--
--
-- Aggregators
SELECT
	webshopchecker,	
	COUNT(webshopchecker) as record_updated
from
	(
	SELECT
		*
	from
		[Prestashop.V3.production4]
	WHERE
		IsNull(WebshopCheck,
		'') <> '') as a
GROUP BY
	webshopchecker;


SELECT
	COUNT(webshopchecker),
	webshopchecker
from
	[Prestashop.V3.production4]
GROUP BY
	webshopchecker;

--- LinkedIN sheet checkup

SELECT
	COUNT(linkedinvalidator),
	linkedinvalidator
from
	[Prestashop.V3.production3]
GROUP BY
	linkedinvalidator;	


SELECT
	COUNT(linkedinvalidator),
	linkedinvalidator
from
	(
	SELECT
		*
	from
		[Prestashop.V3.production3]
	WHERE
		IsNull(country,
		'') <> '' OR 
		IsNull(companyName,
		'') <> '' ) as a
GROUP BY
	linkedinvalidator;

--
--
-- Yes checker aryton.pl

SELECT
	COUNT(webshopchecker)
from
	[Prestashop.V3.production3]
WHERE
	webshopcheck = 'Yes';

-- 
--
-- Row checker

SELECT domain, webshopchecker, webshopcheck, webshopchecknotes, domain from [Prestashop.V3.production3] where domain = '1001coques.fr';	

SELECT
	domain,
	linkedinvalidator,
	webshopcheck,
	country,
	companyName,
	linkedinCompanyPage,
	linkedinCompanyParentPage,
	linkedinNotes
from
	[Prestashop.V3.production3]
where
	IsNull(country,
	'') <> ''
	OR IsNull(companyName,
	'') <> '';





--
--
-- Shopify Data
select COUNT(*) from [shopify.V1.production];
select COUNT(*) from  [shopify.V1.production] WHERE IsNull(overallvisits,0) <> 0;
SELECT DISTINCT overallvisits from [shopify.V1.production];
SELECT  COUNT(domain) from [prestashop.V3.production] where overallvisits = 0;
SELECT COUNT([trafficcountry.countryName_1]), [trafficcountry.countryName_1] from [shopify.V1.production] GROUP BY [trafficcountry.countryName_1];
SELECT top(200) domain, overallvisits from  [shopify.V1.production] order by overallvisits DESC;

SELECT COUNT(DISTINCT youtube) from [shopify.V1.production];
SELECT * from [shopify.V1.production];


--TRUNCATE table [shopify.V1.production];
--
--
-- Logged in user check
sp_who;

SELECT 
    DB_NAME(dbid) as DBName, 
    COUNT(dbid) as NumberOfConnections,
    loginame as LoginName
FROM
    sys.sysprocesses
WHERE 
    dbid > 0
GROUP BY 
    dbid, loginame;	

