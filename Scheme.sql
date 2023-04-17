-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/kaqBW4
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "industry" (
    "id" int   NOT NULL,
    "industry_name" varchar(30)   NOT NULL,
    CONSTRAINT "pk_industry" PRIMARY KEY (
        "industry_name"
     )
);

CREATE TABLE "industry_types" (
    "industry_type" varchar(30)   NOT NULL,
    "stocks" varchar(30)  NOT NULL
);

ALTER TABLE "industry_types" ADD CONSTRAINT "fk_industry_types_industry_type" FOREIGN KEY("industry_type")
REFERENCES "industry" ("industry_name");

