-- Creates all tables

-- Table: public.attempts

-- DROP TABLE IF EXISTS public.attempts;

CREATE TABLE IF NOT EXISTS public.attempts
(
    id integer NOT NULL,
    task integer NOT NULL,
    task_label character varying COLLATE pg_catalog."default" NOT NULL,
    contestant integer NOT NULL,
    contestanct_label character varying COLLATE pg_catalog."default" NOT NULL,
    "PO" character varying COLLATE pg_catalog."default",
    base double precision,
    adjustment double precision,
    points integer NOT NULL,
    rank character varying COLLATE pg_catalog."default",
    episode double precision,
    series double precision,
    team double precision,
    team_label character varying COLLATE pg_catalog."default",
    location double precision,
    location_model character varying COLLATE pg_catalog."default",
    CONSTRAINT attempts_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.attempts
    OWNER to postgres;
	
-- Table: public.discrepancies

-- DROP TABLE IF EXISTS public.discrepancies;

CREATE TABLE IF NOT EXISTS public.discrepancies
(
    id integer NOT NULL,
    contestant integer NOT NULL,
    contestant_label character varying COLLATE pg_catalog."default" NOT NULL,
    task double precision,
    task_label character varying COLLATE pg_catalog."default",
    episode double precision,
    episode_label character varying COLLATE pg_catalog."default",
    series double precision,
    series_label character varying COLLATE pg_catalog."default",
    observed integer NOT NULL,
    official integer NOT NULL,
    CONSTRAINT discrepancies_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.discrepancies
    OWNER to postgres;
	
-- Table: public.episode_scores

-- DROP TABLE IF EXISTS public.episode_scores;

CREATE TABLE IF NOT EXISTS public.episode_scores
(
    id integer NOT NULL,
    episode integer NOT NULL,
    episode_label character varying COLLATE pg_catalog."default" NOT NULL,
    contestant integer NOT NULL,
    contestant_label character varying COLLATE pg_catalog."default" NOT NULL,
    score integer NOT NULL,
    rank character varying COLLATE pg_catalog."default" NOT NULL,
    series integer NOT NULL,
    srank character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT episodes_scores_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.episode_scores
    OWNER to postgres;
	
-- Table: public.measurements

-- DROP TABLE IF EXISTS public.measurements;

CREATE TABLE IF NOT EXISTS public.measurements
(
    id integer NOT NULL,
    task integer NOT NULL,
    task_label character varying COLLATE pg_catalog."default" NOT NULL,
    contestant integer NOT NULL,
    contestant_label character varying COLLATE pg_catalog."default" NOT NULL,
    measurement character varying COLLATE pg_catalog."default",
    objective integer NOT NULL,
    objective_label character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT measurements_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.measurements
    OWNER to postgres;
	
-- Omitting normalized_scores table from data, couldn't find out why it won't accept data

-- Table: public.objectives

-- DROP TABLE IF EXISTS public.objectives;

CREATE TABLE IF NOT EXISTS public.objectives
(
    id integer NOT NULL,
    unit character varying COLLATE pg_catalog."default" NOT NULL,
    target character varying COLLATE pg_catalog."default" NOT NULL,
    label character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT objectives_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.objectives
    OWNER to postgres;
	
-- Table: public.people

-- DROP TABLE IF EXISTS public.people;

CREATE TABLE IF NOT EXISTS public.people
(
    id integer NOT NULL,
    series integer,
    series_label character varying COLLATE pg_catalog."default",
    seat double precision,
    name character varying COLLATE pg_catalog."default",
    dob character varying COLLATE pg_catalog."default",
    gender character varying COLLATE pg_catalog."default",
    hand character varying COLLATE pg_catalog."default",
    team double precision,
    team_label character varying COLLATE pg_catalog."default",
    champion integer NOT NULL,
    "TMI" integer NOT NULL,
    CONSTRAINT people_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.people
    OWNER to postgres;
	
-- Table: public.podcast

-- DROP TABLE IF EXISTS public.podcast;

CREATE TABLE IF NOT EXISTS public.podcast
(
    id integer NOT NULL,
    episode integer,
    guest integer,
    guest_label character varying COLLATE pg_catalog."default",
    topic integer,
    topic_label character varying COLLATE pg_catalog."default",
    rating double precision,
    CONSTRAINT podcast_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.podcast
    OWNER to postgres;
	
-- Table: public.profanity

-- DROP TABLE IF EXISTS public.profanity;

CREATE TABLE IF NOT EXISTS public.profanity
(
    id integer NOT NULL,
    series integer NOT NULL,
    series_label character varying COLLATE pg_catalog."default" NOT NULL,
    episode integer NOT NULL,
    episode_label character varying COLLATE pg_catalog."default" NOT NULL,
    task double precision,
    task_label character varying COLLATE pg_catalog."default",
    speaker integer NOT NULL,
    speaker_label character varying COLLATE pg_catalog."default" NOT NULL,
    roots character varying COLLATE pg_catalog."default" NOT NULL,
    quote character varying COLLATE pg_catalog."default" NOT NULL,
    studio integer NOT NULL,
    CONSTRAINT profanity_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.profanity
    OWNER to postgres;
	
-- Table: public.series

-- DROP TABLE IF EXISTS public.series;

CREATE TABLE IF NOT EXISTS public.series
(
    id integer NOT NULL,
    name character varying COLLATE pg_catalog."default" NOT NULL,
    episodes integer NOT NULL,
    champion double precision,
    champion_label character varying COLLATE pg_catalog."default",
    air_start character varying COLLATE pg_catalog."default" NOT NULL,
    air_end character varying COLLATE pg_catalog."default" NOT NULL,
    studio_start character varying COLLATE pg_catalog."default",
    studio_end character varying COLLATE pg_catalog."default",
    points double precision,
    tasks double precision,
    special integer NOT NULL,
    "TMI" integer NOT NULL,
    CONSTRAINT series_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.series
    OWNER to postgres;

-- Table: public.series_scores

-- DROP TABLE IF EXISTS public.series_scores;

CREATE TABLE IF NOT EXISTS public.series_scores
(
    id integer NOT NULL,
    series integer NOT NULL,
    series_label character varying COLLATE pg_catalog."default" NOT NULL,
    contestant integer NOT NULL,
    contestant_label character varying COLLATE pg_catalog."default" NOT NULL,
    score integer NOT NULL,
    rank character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT series_scores_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.series_scores
    OWNER to postgres;
	
-- Table: public.special_locations

-- DROP TABLE IF EXISTS public.special_locations;

CREATE TABLE IF NOT EXISTS public.special_locations
(
    id integer NOT NULL,
    name character varying COLLATE pg_catalog."default" NOT NULL,
    latlong character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT special_locations_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.special_locations
    OWNER to postgres;
	
-- Table: public.task_briefs

-- DROP TABLE IF EXISTS public.task_briefs;

CREATE TABLE IF NOT EXISTS public.task_briefs
(
    id integer NOT NULL,
    task integer NOT NULL,
    task_label character varying COLLATE pg_catalog."default" NOT NULL,
    brief character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT task_briefs_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.task_briefs
    OWNER to postgres;
	
-- Table: public.task_readers

-- DROP TABLE IF EXISTS public.task_readers;

CREATE TABLE IF NOT EXISTS public.task_readers
(
    id integer NOT NULL,
    task integer NOT NULL,
    task_label character varying COLLATE pg_catalog."default" NOT NULL,
    reader integer NOT NULL,
    reader_label character varying COLLATE pg_catalog."default" NOT NULL,
    team integer NOT NULL,
    live integer NOT NULL,
    CONSTRAINT task_readers_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.task_readers
    OWNER to postgres;
	
-- Table: public.task_winners

-- DROP TABLE IF EXISTS public.task_winners;

CREATE TABLE IF NOT EXISTS public.task_winners
(
    id integer NOT NULL,
    task integer NOT NULL,
    task_label character varying COLLATE pg_catalog."default" NOT NULL,
    winner integer NOT NULL,
    winner_label character varying COLLATE pg_catalog."default" NOT NULL,
    team integer NOT NULL,
    live integer NOT NULL,
    CONSTRAINT task_winners_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.task_winners
    OWNER to postgres;
	
-- Table: public.tasks_by_objective

-- DROP TABLE IF EXISTS public.tasks_by_objective;

CREATE TABLE IF NOT EXISTS public.tasks_by_objective
(
    id integer NOT NULL,
    task integer NOT NULL,
    task_label character varying COLLATE pg_catalog."default" NOT NULL,
    objective integer NOT NULL,
    objective_label character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT tasks_by_objective_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tasks_by_objective
    OWNER to postgres;
	
-- Table: public.team_tasks

-- DROP TABLE IF EXISTS public.team_tasks;

CREATE TABLE IF NOT EXISTS public.team_tasks
(
    id integer NOT NULL,
    task integer NOT NULL,
    task_label character varying COLLATE pg_catalog."default" NOT NULL,
    team integer NOT NULL,
    team_label character varying COLLATE pg_catalog."default" NOT NULL,
    win integer NOT NULL,
    CONSTRAINT team_tasks_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.team_tasks
    OWNER to postgres;
	
-- Table: public.teams

-- DROP TABLE IF EXISTS public.teams;

CREATE TABLE IF NOT EXISTS public.teams
(
    id integer NOT NULL,
    series integer NOT NULL,
    series_label character varying COLLATE pg_catalog."default" NOT NULL,
    members character varying COLLATE pg_catalog."default" NOT NULL,
    size integer NOT NULL,
    initials character varying COLLATE pg_catalog."default" NOT NULL,
    irregular integer NOT NULL,
    CONSTRAINT teams_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.teams
    OWNER to postgres;
	
-- Table: public.title_coiners

-- DROP TABLE IF EXISTS public.title_coiners;

CREATE TABLE IF NOT EXISTS public.title_coiners
(
    id integer NOT NULL,
    episode integer NOT NULL,
    episode_label character varying COLLATE pg_catalog."default" NOT NULL,
    coiner double precision,
    coiner_label character varying COLLATE pg_catalog."default",
    task integer NOT NULL,
    task_label character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT title_coiners_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.title_coiners
    OWNER to postgres;