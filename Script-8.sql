--- 21 platforms SCHEMA

CREATE TABLE [dbo].[platforms_21.V1.raw]
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
 

SELECT COUNT(*) FROM [platforms_21.V1.raw];

