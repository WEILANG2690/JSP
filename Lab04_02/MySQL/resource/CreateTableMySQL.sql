-- 本檔案必須用UTF-8編碼存檔
--
-- 執行本Script的步驟： 
-- 1. 將本檔案複製到 C:\_JSP
-- 2. cd C:\_JSP\mysql\bin>
-- 3. C:\_JSP\mysql\bin>在此目錄下輸入下列命令：
--     mysql -u root < c:\\_JSP\\CreateMemberTableMySQL.sql
-- 
-- 
-- 刪除資料庫jspdb，如果它已存在
DROP DATABASE IF EXISTS jspdb;

-- 建立資料庫
CREATE DATABASE IF NOT EXISTS jspdb;

-- 挑選資料庫
USE  jspdb;
-- 
DROP TABLE if EXISTS  Member42;

CREATE TABLE  Member42 (
  memberId   	    VARCHAR(32) PRIMARY KEY NOT NULL,
  password   	    VARCHAR(32) NOT NULL,  
  NAME            VARCHAR(32) NOT NULL,
  address         VARCHAR(64),
  phone           VARCHAR(15),
  birthday        DATETIME,
  registerdate 	  DATETIME NOT NULL DEFAULT NOW(),
  picture         MEDIUMBLOB,
  weight          FLOAT  
) ENGINE=InnoDB DEFAULT CHARSET=utf8 DEFAULT COLLATE utf8_unicode_ci;

INSERT INTO Member42 (memberId, password, name, address, phone, birthday,  registerdate, weight)
values ('micky', '123', '米小薯', '台中市文心南路三段５８巷２２０號', '04-67891234', '1975-02-17', now(), 60);
