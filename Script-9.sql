SELECT user_id, first_name, last_name, user_name, password, status, date_registered, term_id, last_login, user_guid, readnews, terms_agree_date, password_lastupdate, passhashed, oldpassword
FROM luxyachts.dbo.tbl_users;


CREATE LOGIN tableau2   
    WITH PASSWORD = '340$Uuxwp7Mcxo7Khy'
GO

USE ecommercedb;



ALTER LOGIN Niels WITH PASSWORD = '3219012ak212QAw$4$$';



CREATE USER tableau2 FOR LOGIN tableau2 
GO
    

CREATE LOGIN niels   
    WITH PASSWORD = '3219012ak212QAw$4$$'
GO

CREATE USER Niels FOR LOGIN Niels 
GO 

select * FROM sys.sql_logins;

DROP LOGIN niels;


ALTER SERVER ROLE sysadmin ADD MEMBER [niels];  
GO 





SELECT sys.server_role_members.role_principal_id, role.name AS RoleName,   
    sys.server_role_members.member_principal_id, member.name AS MemberName  
FROM sys.server_role_members  
JOIN sys.server_principals AS role  
    ON sys.server_role_members.role_principal_id = role.principal_id  
JOIN sys.server_principals AS member  
    ON sys.server_role_members.member_principal_id = member.principal_id;	  