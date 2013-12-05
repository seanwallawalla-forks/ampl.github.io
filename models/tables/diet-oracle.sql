--
-- Table structure for table "Amounts"
--

BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE "Amounts"';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

CREATE TABLE "Amounts" (
  "NUTR" varchar(4) DEFAULT NULL,
  "FOOD" varchar(5) DEFAULT NULL,
  "amt" FLOAT DEFAULT NULL
);

--
-- Dumping data for table "Amounts"
--

INSERT INTO "Amounts" VALUES ('A','BEEF',60);
INSERT INTO "Amounts" VALUES ('C','BEEF',20);
INSERT INTO "Amounts" VALUES ('B1','BEEF',10);
INSERT INTO "Amounts" VALUES ('B2','BEEF',15);
INSERT INTO "Amounts" VALUES ('NA','BEEF',938);
INSERT INTO "Amounts" VALUES ('CAL','BEEF',295);
INSERT INTO "Amounts" VALUES ('A','CHK',8);
INSERT INTO "Amounts" VALUES ('C','CHK',0);
INSERT INTO "Amounts" VALUES ('B1','CHK',20);
INSERT INTO "Amounts" VALUES ('B2','CHK',20);
INSERT INTO "Amounts" VALUES ('NA','CHK',2180);
INSERT INTO "Amounts" VALUES ('CAL','CHK',770);
INSERT INTO "Amounts" VALUES ('A','FISH',8);
INSERT INTO "Amounts" VALUES ('C','FISH',10);
INSERT INTO "Amounts" VALUES ('B1','FISH',15);
INSERT INTO "Amounts" VALUES ('B2','FISH',10);
INSERT INTO "Amounts" VALUES ('NA','FISH',945);
INSERT INTO "Amounts" VALUES ('CAL','FISH',440);
INSERT INTO "Amounts" VALUES ('A','HAM',40);
INSERT INTO "Amounts" VALUES ('C','HAM',40);
INSERT INTO "Amounts" VALUES ('B1','HAM',35);
INSERT INTO "Amounts" VALUES ('B2','HAM',10);
INSERT INTO "Amounts" VALUES ('NA','HAM',278);
INSERT INTO "Amounts" VALUES ('CAL','HAM',430);
INSERT INTO "Amounts" VALUES ('A','MCH',15);
INSERT INTO "Amounts" VALUES ('C','MCH',35);
INSERT INTO "Amounts" VALUES ('B1','MCH',15);
INSERT INTO "Amounts" VALUES ('B2','MCH',15);
INSERT INTO "Amounts" VALUES ('NA','MCH',1182);
INSERT INTO "Amounts" VALUES ('CAL','MCH',315);
INSERT INTO "Amounts" VALUES ('A','MTL',70);
INSERT INTO "Amounts" VALUES ('C','MTL',30);
INSERT INTO "Amounts" VALUES ('B1','MTL',15);
INSERT INTO "Amounts" VALUES ('B2','MTL',15);
INSERT INTO "Amounts" VALUES ('NA','MTL',896);
INSERT INTO "Amounts" VALUES ('CAL','MTL',400);
INSERT INTO "Amounts" VALUES ('A','SPG',25);
INSERT INTO "Amounts" VALUES ('C','SPG',50);
INSERT INTO "Amounts" VALUES ('B1','SPG',25);
INSERT INTO "Amounts" VALUES ('B2','SPG',15);
INSERT INTO "Amounts" VALUES ('NA','SPG',1329);
INSERT INTO "Amounts" VALUES ('CAL','SPG',370);
INSERT INTO "Amounts" VALUES ('A','TUR',60);
INSERT INTO "Amounts" VALUES ('C','TUR',20);
INSERT INTO "Amounts" VALUES ('B1','TUR',15);
INSERT INTO "Amounts" VALUES ('B2','TUR',10);
INSERT INTO "Amounts" VALUES ('NA','TUR',1397);
INSERT INTO "Amounts" VALUES ('CAL','TUR',450);

--
-- Table structure for table "Foods"
--

BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE "Foods"';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

CREATE TABLE "Foods" (
  "FOOD" varchar(5) DEFAULT NULL,
  "cost" FLOAT DEFAULT NULL,
  "f_min" FLOAT DEFAULT NULL,
  "f_max" FLOAT DEFAULT NULL
);

INSERT INTO "Foods" VALUES ('BEEF',3.19,2,10);
INSERT INTO "Foods" VALUES ('CHK',2.59,2,10);
INSERT INTO "Foods" VALUES ('FISH',2.29,2,10);
INSERT INTO "Foods" VALUES ('HAM',2.89,2,10);
INSERT INTO "Foods" VALUES ('MCH',1.89,2,10);
INSERT INTO "Foods" VALUES ('MTL',1.99,2,10);
INSERT INTO "Foods" VALUES ('SPG',1.99,2,10);
INSERT INTO "Foods" VALUES ('TUR',2.49,2,10);

--
-- Table structure for table "Nutrients"
--

BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE "Nutrients"';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

CREATE TABLE "Nutrients" (
  "NUTR" varchar(4) DEFAULT NULL,
  "n_min" FLOAT DEFAULT NULL,
  "n_max" FLOAT DEFAULT NULL
);

INSERT INTO "Nutrients" VALUES ('A',700,20000);
INSERT INTO "Nutrients" VALUES ('C',700,20000);
INSERT INTO "Nutrients" VALUES ('B1',700,20000);
INSERT INTO "Nutrients" VALUES ('B2',700,20000);
INSERT INTO "Nutrients" VALUES ('NA',0,50000);
INSERT INTO "Nutrients" VALUES ('CAL',16000,24000);

