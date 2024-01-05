-- public.stocks definition

-- Drop table

-- DROP TABLE public.stocks;

CREATE TABLE public.stocks (
	symbol text NOT NULL,
	uuid text NULL,
	ts text NULL,
	dt text NULL,
	datetime text NULL,
	open text NULL,
	close text NULL,
	high text NULL,
	volume text NULL,
  low text NULL,
	CONSTRAINT stocks_pkey PRIMARY KEY (uuid)
);

/**
  "symbol" : "IBM",
  "uuid" : "4eca7a56-ffd0-43f1-b1d4-972330d1c0a0",
  "ts" : 1704482684553,
  "dt" : 1704482580000,
  "datetime" : "2024/01/05 14:23:00",
  "open" : "159.45000",
  "close" : "159.44009",
  "high" : "159.47000",
  "volume" : "3690",
  "low" : "159.44009"

**/
