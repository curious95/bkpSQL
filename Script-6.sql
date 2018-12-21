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


UPDATE [woocommerce.V1.raw] set versions  = REPLACE(cast(versions as varchar(8000)), '.csv', '');

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

