--- woocommerce SCHEMA

CREATE TABLE [dbo].[woocommerce.V1.raw]
(
 [domain]                       VARCHAR(100) NOT NULL ,
 [location_on_site]             TEXT NULL ,
 [tech_spend_usd]               VARCHAR(100) NULL ,
 [company]		                VARCHAR(100) NULL ,
 [vertical]                     VARCHAR(100) NULL ,
 [quantcast]                    VARCHAR(100) NULL ,
 [alexa]                        VARCHAR(100) NULL ,
 [majestic]                     VARCHAR(100) NULL ,
 [umbrella]                     VARCHAR(100) NULL ,
 [telephones]                   TEXT NULL ,
 [emails]                       TEXT NULL ,
 [twitter]                      VARCHAR(200) NULL ,
 [facebook]                     VARCHAR(200) NULL ,
 [linkedin]                     VARCHAR(200) NULL ,
 [google]                     	VARCHAR(200) NULL ,
 [pinterest]                    VARCHAR(200) NULL ,
 [github]                       VARCHAR(200) NULL ,
 [instagram]                    VARCHAR(200) NULL ,
 [vk]                       	VARCHAR(200) NULL ,
 [vimeo]                       	VARCHAR(200) NULL ,
 [youtube]                      VARCHAR(200) NULL ,
 [people]                       TEXT NULL ,
 [city]                       	TEXT NULL ,
 [state]                       	TEXT NULL ,
 [zip]                       	TEXT NULL ,
 [country]                      TEXT NULL ,
 [first_detected]               VARCHAR(100) NULL ,
 [last_found]                   VARCHAR(100) NULL ,
 [first_indexed]                VARCHAR(100) NULL ,
 [last_indexed]                 VARCHAR(100) NULL ,
 [exclusion]                    VARCHAR(100) NULL ,
 [gdpr]                       	VARCHAR(100) NULL ,
 [total_versions]               DECIMAL(18,8) NULL, 
 [versions]                     TEXT NULL 
 );

SELECT TOP(100) * FROM [woocommerce.V1.raw];
SELECT COUNT(*) FROM [woocommerce.V1.raw];

SELECT TOP(10) * FROM [woocommerce.V1.raw] where total_versions >= 2.0; 


UPDATE [magento.V1.raw] set versions  = REPLACE(cast(versions as varchar(8000)), '.csv', '');


CREATE TABLE [dbo].[woocommerce.V1.production]
(
	[domain]							VARCHAR(150) NOT NULL,
	[overallvisits]						NUMERIC(10,0) NULL,
	[timeonsite]						VARCHAR(50) NULL,
	[pagesperVisit]						DECIMAL(18,8) NULL,
	[bouncerate]						NUMERIC(10,0) NULL,
	[world_rank]						NUMERIC(10,0) NULL,
	[country_rank]						NUMERIC(10,0) NULL,
	[country_top]						VARCHAR(30) NULL ,
	[category_rank]						NUMERIC(10,0) NULL,
	[category_top]						VARCHAR(100) NULL ,
	[trafficsources.Social]				DECIMAL(18,8) NULL,
	[trafficsources.DisplayAds] 		DECIMAL(18,8) NULL,
	[trafficsources.Mail]				DECIMAL(18,8) NULL,
	[trafficsources.PaidSearch] 		DECIMAL(18,8) NULL,
	[trafficsources.Referrals]			DECIMAL(18,8) NULL,
	[trafficsources.OrganicSearch] 		DECIMAL(18,8) NULL,
	[trafficsources.Direct]				DECIMAL(18,8) NULL,
	[trafficcountry.countryName_1] 		VARCHAR(30) NULL ,
	[trafficcountry.countryName_2] 		VARCHAR(30) NULL ,
	[trafficcountry.countryName_3]		VARCHAR(30) NULL ,
	[trafficcountry.countryName_4]		VARCHAR(30) NULL ,
	[trafficcountry.countryName_5]		VARCHAR(30) NULL ,
	[trafficcountry.value_1]			DECIMAL(18,8) NULL,
	[trafficcountry.value_2]			DECIMAL(18,8) NULL,
	[trafficcountry.value_3]			DECIMAL(18,8) NULL,
	[trafficcountry.value_4]			DECIMAL(18,8) NULL,
	[trafficcountry.value_5]			DECIMAL(18,8) NULL,
	[visitData.date_1]					VARCHAR(30) NULL ,
	[visitData.date_2]					VARCHAR(30) NULL ,
	[visitData.date_3]					VARCHAR(30) NULL ,
	[visitData.count_1]					NUMERIC(10,0) NULL,
	[visitData.count_2]					NUMERIC(10,0) NULL,
	[visitData.count_3]					NUMERIC(10,0) NULL,
	[facebook]							DECIMAL(18,8) NULL ,
	[youtube]							DECIMAL(18,8) NULL ,
	[reddit]							DECIMAL(18,8) NULL ,
	[pinterest]							DECIMAL(18,8) NULL ,
	[instagram]							DECIMAL(18,8) NULL ,
	[quora]								DECIMAL(18,8) NULL ,
	[others]							DECIMAL(18,8) NULL ,
	[vk]								DECIMAL(18,8) NULL ,
	[whatsapp]							DECIMAL(18,8) NULL ,
	[linkedin]							DECIMAL(18,8) NULL ,
	[referring_domains]					TEXT NULL,
	PRIMARY KEY CLUSTERED ([domain] ASC)
);

ALTER TABLE ecommercedb.dbo.[woocommerce.V1.production] ADD WebshopCheck varchar(10) go
ALTER TABLE ecommercedb.dbo.[woocommerce.V1.production] ADD WebshopCheckNotes varchar(200) go	
ALTER TABLE ecommercedb.dbo.[woocommerce.V1.production] ADD companyName varchar(100) go
ALTER TABLE ecommercedb.dbo.[woocommerce.V1.production] ADD linkedinAPI varchar(100) go
ALTER TABLE ecommercedb.dbo.[woocommerce.V1.production] ADD linkedinCompanyPage varchar(100) go
ALTER TABLE ecommercedb.dbo.[woocommerce.V1.production] ADD linkedinCompanyParentPage varchar(100) go
ALTER TABLE ecommercedb.dbo.[woocommerce.V1.production] ADD linkedinNotes varchar(200) go
ALTER TABLE ecommercedb.dbo.[woocommerce.V1.production] ADD country varchar(50) go
ALTER TABLE ecommercedb.dbo.[woocommerce.V1.production] ADD qualityCheck varchar(50) go
ALTER TABLE ecommercedb.dbo.[woocommerce.V1.production] ADD lock varchar(10) go

ALTER TABLE ecommercedb.dbo.[woocommerce.V1.production] ADD [visitData.date_4]	VARCHAR(30) go
ALTER TABLE ecommercedb.dbo.[woocommerce.V1.production] ADD [visitData.date_5]	VARCHAR(30) go
ALTER TABLE ecommercedb.dbo.[woocommerce.V1.production] ADD [visitData.date_6]	VARCHAR(30) go
ALTER TABLE ecommercedb.dbo.[woocommerce.V1.production] ADD [visitData.count_4] NUMERIC(10,0) go
ALTER TABLE ecommercedb.dbo.[woocommerce.V1.production] ADD [visitData.count_5] NUMERIC(10,0)go
ALTER TABLE ecommercedb.dbo.[woocommerce.V1.production] ADD [visitData.count_6] NUMERIC(10,0)go
ALTER TABLE ecommercedb.dbo.[woocommerce.V1.production] ADD [webshopchecker]	VARCHAR(50) go
ALTER TABLE ecommercedb.dbo.[woocommerce.V1.production] ADD [linkedinvalidator]	VARCHAR(50) go


GRANT INSERT, UPDATE, SELECT ON [dbo].[woocommerce.V1.raw]TO "datajar";
GRANT INSERT, UPDATE, SELECT ON [dbo].[woocommerce.V1.production] TO "datajar";




-- Alter table to add version column
ALTER TABLE ecommercedb.dbo.[Prestashop.V3.production3] ADD [platform]	VARCHAR(50) go
ALTER TABLE ecommercedb.dbo.[Prestashop.V3.production4] ADD [platform]	VARCHAR(50) go
ALTER TABLE ecommercedb.dbo.[bigcommerce.V1.production] ADD [platform]	VARCHAR(50) go
ALTER TABLE ecommercedb.dbo.[magento.V1.production] ADD [platform]	VARCHAR(50) go
ALTER TABLE ecommercedb.dbo.[platforms_21.V1.production2] ADD [platform]	VARCHAR(50) go
ALTER TABLE ecommercedb.dbo.[shopify.V1.production] ADD [platform]	VARCHAR(50) go
ALTER TABLE ecommercedb.dbo.[thirtybees.V1.production] ADD [platform]	VARCHAR(50) go
ALTER TABLE ecommercedb.dbo.[woocommerce.V1.production] ADD [platform]	VARCHAR(50) go

-- Alter table to add timestamp column
ALTER TABLE ecommercedb.dbo.[Prestashop.V3.production3] ADD [timestamp]	NUMERIC(20,0) go
ALTER TABLE ecommercedb.dbo.[Prestashop.V3.production4] ADD [timestamp]	NUMERIC(20,0) go
ALTER TABLE ecommercedb.dbo.[bigcommerce.V1.production] ADD [timestamp]	NUMERIC(20,0) go
ALTER TABLE ecommercedb.dbo.[magento.V1.production] ADD [timestamp]	NUMERIC(20,0) go
ALTER TABLE ecommercedb.dbo.[platforms_21.V1.production2] ADD [timestamp]	NUMERIC(20,0) go
ALTER TABLE ecommercedb.dbo.[shopify.V1.production] ADD [timestamp]	NUMERIC(20,0) go
ALTER TABLE ecommercedb.dbo.[thirtybees.V1.production] ADD [timestamp]	NUMERIC(20,0) go
ALTER TABLE ecommercedb.dbo.[woocommerce.V1.production] ADD [timestamp]	NUMERIC(20,0) go





-- Update table
UPDATE ecommercedb.dbo.[Prestashop.V3.production3] SET [platform] = 'Prestashop';
UPDATE ecommercedb.dbo.[Prestashop.V3.production4] SET [platform] = 'Prestashop';
UPDATE ecommercedb.dbo.[bigcommerce.V1.production] SET [platform] = 'BigCommerce';
UPDATE ecommercedb.dbo.[magento.V1.production] SET [platform] = 'Magento';
UPDATE ecommercedb.dbo.[platforms_21.V1.production2] SET [platform] = [versions];
UPDATE ecommercedb.dbo.[shopify.V1.production] SET [platform] = 'Shopify';
UPDATE ecommercedb.dbo.[thirtybees.V1.production] SET [platform] = 'Thirtybees';
UPDATE ecommercedb.dbo.[woocommerce.V1.production] SET [platform] = 'Woocommerce';


-- Platform_21 

SELECT COUNT(*) from ecommercedb.dbo.[eComTableau];


SELECT a.*, b.[versions]
from ecommercedb.dbo.[platforms_21.V1.production] as a
LEFT JOIN ecommercedb.dbo.[platforms_21.V1.raw] as b
ON a.[domain] = b.[domain];

 
SELECT * INTO [platforms_21.V1.production2]
FROM (
SELECT a.*, b.[versions]
from ecommercedb.dbo.[platforms_21.V1.production] as a
LEFT JOIN ecommercedb.dbo.[platforms_21.V1.raw] as b
ON a.[domain] = b.[domain]
) as table2;


UPDATE [platforms_21.V1.production2] set platform  = [versions];


UPDATE [platforms_21.V1.production2] set platform  = REPLACE(cast(platform as varchar(8000)), '| ', '');

UPDATE [platforms_21.V1.production2] set platform  = SUBSTRING(platform,CHARINDEX('|',platform),LEN(platform)+1);


select SUBSTRING(platform,CHARINDEX('|',platform),LEN(platform)) from [platforms_21.V1.production2];


-- Merging tables
SELECT * INTO [eComTableau]
FROM (
SELECT * FROM [Prestashop.V3.production3]
UNION ALL
SELECT * FROM [Prestashop.V3.production4]
UNION ALL
SELECT * FROM [bigcommerce.V1.production]
UNION ALL
SELECT * FROM [magento.V1.production]
UNION ALL
SELECT * FROM [platforms_21.V1.production2]
UNION ALL
SELECT * FROM [thirtybees.V1.production]
UNION ALL
SELECT * FROM [woocommerce.V1.production]
) as mergedTable;



SELECT * FROM [platforms_21.V1.production2]
UNION ALL
SELECT * FROM [shopify.V1.production];

SELECT TOP(10) * FROM [Prestashop.V3.production3]
UNION ALL
SELECT * FROM [Prestashop.V3.production4]
UNION ALL
SELECT TOP(10) * FROM [bigcommerce.V1.production]
UNION ALL
SELECT TOP(10) * FROM [magento.V1.production]
UNION ALL
SELECT TOP(10) * FROM [platforms_21.V1.production2];

-- Renaming cols
EXEC sp_rename '[shopify.V1.production].facebook_', 'facebook', 'COLUMN';
EXEC sp_rename '[shopify.V1.production].linkedin_', 'linkedin', 'COLUMN';
EXEC sp_rename '[shopify.V1.production].reddit_', 'reddit', 'COLUMN';
EXEC sp_rename '[shopify.V1.production].whatsapp_', 'whatsapp', 'COLUMN';
EXEC sp_rename '[shopify.V1.production].vk_', 'vk', 'COLUMN';
EXEC sp_rename '[shopify.V1.production].quora_', 'quora', 'COLUMN';
EXEC sp_rename '[shopify.V1.production].youtube_', 'youtube', 'COLUMN';
EXEC sp_rename '[shopify.V1.production].pinterest_', 'pinterest', 'COLUMN';



SELECT DISTINCT platform from ecommercedb.dbo.[eComTableau];





