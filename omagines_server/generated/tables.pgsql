--
-- Class CategoryModel as table categorymodel
--

CREATE TABLE categorymodel (
  "id" serial,
  "title" text NOT NULL
);

ALTER TABLE ONLY categorymodel
  ADD CONSTRAINT categorymodel_pkey PRIMARY KEY (id);


--
-- Class UserModel as table usermodel
--

CREATE TABLE usermodel (
  "id" serial,
  "name" text NOT NULL,
  "email" text NOT NULL,
  "uid" text NOT NULL,
  "isAdmin" boolean NOT NULL,
  "isLifetime" boolean NOT NULL,
  "isVip" boolean NOT NULL,
  "purchasedAt" timestamp without time zone,
  "trials" integer NOT NULL,
  "validUntil" timestamp without time zone
);

ALTER TABLE ONLY usermodel
  ADD CONSTRAINT usermodel_pkey PRIMARY KEY (id);


--
-- Class WallpaperModel as table wallpapermodel
--

CREATE TABLE wallpapermodel (
  "id" serial,
  "publisher" text NOT NULL,
  "publisherUid" text NOT NULL,
  "uid" text NOT NULL,
  "title" text NOT NULL,
  "url" text NOT NULL,
  "isVip" boolean NOT NULL,
  "categories" json NOT NULL,
  "data" text NOT NULL
);

ALTER TABLE ONLY wallpapermodel
  ADD CONSTRAINT wallpapermodel_pkey PRIMARY KEY (id);


