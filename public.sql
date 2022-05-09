/*
 Navicat Premium Data Transfer

 Source Server         : db2022
 Source Server Type    : PostgreSQL
 Source Server Version : 90204
 Source Host           : localhost:15432
 Source Catalog        : dbproject
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 90204
 File Encoding         : 65001

 Date: 09/05/2022 16:23:37
*/


-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS "public"."admin";
CREATE TABLE "public"."admin" (
  "username" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO "public"."admin" VALUES ('10195101529', '1');

-- ----------------------------
-- Table structure for namebasics
-- ----------------------------
DROP TABLE IF EXISTS "public"."namebasics";
CREATE TABLE "public"."namebasics" (
  "nconst" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "primaryname" varchar(50) COLLATE "pg_catalog"."default",
  "birthyear" numeric(10),
  "deathyear" varchar(4) COLLATE "pg_catalog"."default" DEFAULT '\N'::character varying,
  "primaryprofession" varchar(50) COLLATE "pg_catalog"."default",
  "knownfortitles" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of namebasics
-- ----------------------------
INSERT INTO "public"."namebasics" VALUES ('001', 'zhang', 1969, '2009', 'a', 'a');
INSERT INTO "public"."namebasics" VALUES ('002', 'li', 1999, '\N', NULL, NULL);
INSERT INTO "public"."namebasics" VALUES ('003', 'wang', 1988, '2021', NULL, NULL);

-- ----------------------------
-- Table structure for principals
-- ----------------------------
DROP TABLE IF EXISTS "public"."principals";
CREATE TABLE "public"."principals" (
  "tconst" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "orderings" numeric(100),
  "nconst" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "category" varchar(50) COLLATE "pg_catalog"."default",
  "job" varchar(50) COLLATE "pg_catalog"."default" DEFAULT '\N'::character varying,
  "characters" varchar(50) COLLATE "pg_catalog"."default" DEFAULT '\N'::character varying
)
;

-- ----------------------------
-- Records of principals
-- ----------------------------
INSERT INTO "public"."principals" VALUES ('1', 1, '001', '1000', '\N', 'a');
INSERT INTO "public"."principals" VALUES ('2', 1, '002', '2000', '\N', 'b');
INSERT INTO "public"."principals" VALUES ('3', 1, '003', '3000', '\N', '\N');

-- ----------------------------
-- Table structure for ratings
-- ----------------------------
DROP TABLE IF EXISTS "public"."ratings";
CREATE TABLE "public"."ratings" (
  "tconst" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "averagerating" numeric(2,1),
  "numvotes" numeric(100)
)
;

-- ----------------------------
-- Records of ratings
-- ----------------------------
INSERT INTO "public"."ratings" VALUES ('2', 8.8, 100);
INSERT INTO "public"."ratings" VALUES ('1', 9.8, 99);
INSERT INTO "public"."ratings" VALUES ('3', 9.9, 10);

-- ----------------------------
-- Table structure for titleakas
-- ----------------------------
DROP TABLE IF EXISTS "public"."titleakas";
CREATE TABLE "public"."titleakas" (
  "titleid" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "ordering" int8 NOT NULL,
  "title" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "region" varchar(50) COLLATE "pg_catalog"."default",
  "language" varchar(30) COLLATE "pg_catalog"."default",
  "types" varchar(50) COLLATE "pg_catalog"."default",
  "attributes" varchar(50) COLLATE "pg_catalog"."default",
  "isOriginalTitle" bit(1)
)
;

-- ----------------------------
-- Records of titleakas
-- ----------------------------
INSERT INTO "public"."titleakas" VALUES ('3', 3, 'movie3', 'EU', 'Engilsh', 'C', NULL, NULL);
INSERT INTO "public"."titleakas" VALUES ('2', 2, 'movie2', 'RU', 'Russion', 'A', NULL, '0');
INSERT INTO "public"."titleakas" VALUES ('1', 1, 'movie1', 'CN', 'Chinese', 'B', NULL, '1');

-- ----------------------------
-- Table structure for titlebasics
-- ----------------------------
DROP TABLE IF EXISTS "public"."titlebasics";
CREATE TABLE "public"."titlebasics" (
  "tconst" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "titleType" varchar(50) COLLATE "pg_catalog"."default",
  "primaryTitle" varchar(50) COLLATE "pg_catalog"."default",
  "originalTitle" varchar(50) COLLATE "pg_catalog"."default",
  "isAdult" bit(1),
  "startYear" int2,
  "endYear" int2,
  "runtimeMinutes" int2,
  "genres" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of titlebasics
-- ----------------------------
INSERT INTO "public"."titlebasics" VALUES ('1', '1', 'movie1', 'mv1', '1', 1999, 2000, 20, 'movie');
INSERT INTO "public"."titlebasics" VALUES ('3', '3', 'movie3', 'mv3', '1', 2000, 2011, 999, 'movie');
INSERT INTO "public"."titlebasics" VALUES ('2', '2', 'movie2', 'mv2', '0', 1999, 2000, 100, 'TVshow');

-- ----------------------------
-- Table structure for titlecrew
-- ----------------------------
DROP TABLE IF EXISTS "public"."titlecrew";
CREATE TABLE "public"."titlecrew" (
  "tconst" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "directors" varchar(50) COLLATE "pg_catalog"."default",
  "writers" varchar(50) COLLATE "pg_catalog"."default",
  "nconst" varchar(50) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of titlecrew
-- ----------------------------
INSERT INTO "public"."titlecrew" VALUES ('1', 'zhang', 'b', '001');

-- ----------------------------
-- Table structure for titleepisode
-- ----------------------------
DROP TABLE IF EXISTS "public"."titleepisode";
CREATE TABLE "public"."titleepisode" (
  "tconst" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "parenttconst" varchar(50) COLLATE "pg_catalog"."default",
  "seasonnumber" numeric(20),
  "episodenumber" numeric(100)
)
;

-- ----------------------------
-- Records of titleepisode
-- ----------------------------
INSERT INTO "public"."titleepisode" VALUES ('1', '1', 1, 1);

-- ----------------------------
-- Primary Key structure for table admin
-- ----------------------------
ALTER TABLE "public"."admin" ADD CONSTRAINT "admin_pkey" PRIMARY KEY ("username");

-- ----------------------------
-- Primary Key structure for table namebasics
-- ----------------------------
ALTER TABLE "public"."namebasics" ADD CONSTRAINT "namebasics_pkey" PRIMARY KEY ("nconst");

-- ----------------------------
-- Primary Key structure for table principals
-- ----------------------------
ALTER TABLE "public"."principals" ADD CONSTRAINT "principals_pkey" PRIMARY KEY ("nconst");

-- ----------------------------
-- Uniques structure for table titleakas
-- ----------------------------
ALTER TABLE "public"."titleakas" ADD CONSTRAINT "titleakas_titleid_key" UNIQUE ("titleid");

-- ----------------------------
-- Primary Key structure for table titleakas
-- ----------------------------
ALTER TABLE "public"."titleakas" ADD CONSTRAINT "titleakas_pkey" PRIMARY KEY ("titleid");

-- ----------------------------
-- Uniques structure for table titlebasics
-- ----------------------------
ALTER TABLE "public"."titlebasics" ADD CONSTRAINT "titlebasics_tconst_key" UNIQUE ("tconst");

-- ----------------------------
-- Primary Key structure for table titlebasics
-- ----------------------------
ALTER TABLE "public"."titlebasics" ADD CONSTRAINT "titlebasics_pkey" PRIMARY KEY ("tconst");

-- ----------------------------
-- Primary Key structure for table titleepisode
-- ----------------------------
ALTER TABLE "public"."titleepisode" ADD CONSTRAINT "titleepisode_pkey" PRIMARY KEY ("tconst");

-- ----------------------------
-- Foreign Keys structure for table principals
-- ----------------------------
ALTER TABLE "public"."principals" ADD CONSTRAINT "principals_nconst_fkey" FOREIGN KEY ("nconst") REFERENCES "public"."namebasics" ("nconst") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."principals" ADD CONSTRAINT "principals_tconst_fkey" FOREIGN KEY ("tconst") REFERENCES "public"."titlebasics" ("tconst") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table ratings
-- ----------------------------
ALTER TABLE "public"."ratings" ADD CONSTRAINT "ratings_tconst_fkey" FOREIGN KEY ("tconst") REFERENCES "public"."titlebasics" ("tconst") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table titleakas
-- ----------------------------
ALTER TABLE "public"."titleakas" ADD CONSTRAINT "titleakas_titleid_fkey" FOREIGN KEY ("titleid") REFERENCES "public"."titlebasics" ("tconst") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table titlecrew
-- ----------------------------
ALTER TABLE "public"."titlecrew" ADD CONSTRAINT "titlecrew_nconst_fkey" FOREIGN KEY ("nconst") REFERENCES "public"."namebasics" ("nconst") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."titlecrew" ADD CONSTRAINT "titlecrew_tconst_fkey" FOREIGN KEY ("tconst") REFERENCES "public"."titlebasics" ("tconst") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table titleepisode
-- ----------------------------
ALTER TABLE "public"."titleepisode" ADD CONSTRAINT "titleepisode_tconst_fkey" FOREIGN KEY ("tconst") REFERENCES "public"."titlebasics" ("tconst") ON DELETE NO ACTION ON UPDATE NO ACTION;
