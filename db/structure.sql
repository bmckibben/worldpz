--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.1
-- Dumped by pg_dump version 9.6.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: recipe_categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE recipe_categories (
    id integer NOT NULL,
    category_name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: recipe_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE recipe_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: recipe_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE recipe_categories_id_seq OWNED BY recipe_categories.id;


--
-- Name: recipe_images; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE recipe_images (
    id integer NOT NULL,
    recipe_id integer,
    image_url character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: recipe_images_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE recipe_images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: recipe_images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE recipe_images_id_seq OWNED BY recipe_images.id;


--
-- Name: recipe_ingredients; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE recipe_ingredients (
    id integer NOT NULL,
    ingredient_name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: recipe_ingredients_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE recipe_ingredients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: recipe_ingredients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE recipe_ingredients_id_seq OWNED BY recipe_ingredients.id;


--
-- Name: recipe_ingredients_units; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE recipe_ingredients_units (
    id integer NOT NULL,
    ingredient_unit_name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: recipe_ingredients_units_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE recipe_ingredients_units_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: recipe_ingredients_units_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE recipe_ingredients_units_id_seq OWNED BY recipe_ingredients_units.id;


--
-- Name: recipe_steps; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE recipe_steps (
    id integer NOT NULL,
    recipe_id integer,
    step_id integer,
    step_order integer,
    step_instruction character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: recipe_steps_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE recipe_steps_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: recipe_steps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE recipe_steps_id_seq OWNED BY recipe_steps.id;


--
-- Name: recipe_steps_ingredients; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE recipe_steps_ingredients (
    id integer NOT NULL,
    step_id integer,
    ingredient_id integer,
    step_ingredient_quantity numeric,
    ingredient_units_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: recipe_steps_ingredients_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE recipe_steps_ingredients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: recipe_steps_ingredients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE recipe_steps_ingredients_id_seq OWNED BY recipe_steps_ingredients.id;


--
-- Name: recipes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE recipes (
    id integer NOT NULL,
    category_id integer,
    recipe_name character varying,
    recipe_description character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    sort_order integer,
    prep_minutes integer,
    cook_minutes integer
);


--
-- Name: recipes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE recipes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: recipes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE recipes_id_seq OWNED BY recipes.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE users (
    id integer NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    role_cd integer DEFAULT 0 NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: recipe_categories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY recipe_categories ALTER COLUMN id SET DEFAULT nextval('recipe_categories_id_seq'::regclass);


--
-- Name: recipe_images id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY recipe_images ALTER COLUMN id SET DEFAULT nextval('recipe_images_id_seq'::regclass);


--
-- Name: recipe_ingredients id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY recipe_ingredients ALTER COLUMN id SET DEFAULT nextval('recipe_ingredients_id_seq'::regclass);


--
-- Name: recipe_ingredients_units id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY recipe_ingredients_units ALTER COLUMN id SET DEFAULT nextval('recipe_ingredients_units_id_seq'::regclass);


--
-- Name: recipe_steps id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY recipe_steps ALTER COLUMN id SET DEFAULT nextval('recipe_steps_id_seq'::regclass);


--
-- Name: recipe_steps_ingredients id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY recipe_steps_ingredients ALTER COLUMN id SET DEFAULT nextval('recipe_steps_ingredients_id_seq'::regclass);


--
-- Name: recipes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY recipes ALTER COLUMN id SET DEFAULT nextval('recipes_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: recipe_categories recipe_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY recipe_categories
    ADD CONSTRAINT recipe_categories_pkey PRIMARY KEY (id);


--
-- Name: recipe_images recipe_images_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY recipe_images
    ADD CONSTRAINT recipe_images_pkey PRIMARY KEY (id);


--
-- Name: recipe_ingredients recipe_ingredients_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY recipe_ingredients
    ADD CONSTRAINT recipe_ingredients_pkey PRIMARY KEY (id);


--
-- Name: recipe_ingredients_units recipe_ingredients_units_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY recipe_ingredients_units
    ADD CONSTRAINT recipe_ingredients_units_pkey PRIMARY KEY (id);


--
-- Name: recipe_steps_ingredients recipe_steps_ingredients_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY recipe_steps_ingredients
    ADD CONSTRAINT recipe_steps_ingredients_pkey PRIMARY KEY (id);


--
-- Name: recipe_steps recipe_steps_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY recipe_steps
    ADD CONSTRAINT recipe_steps_pkey PRIMARY KEY (id);


--
-- Name: recipes recipes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY recipes
    ADD CONSTRAINT recipes_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- PostgreSQL database dump complete
--

SET search_path TO "$user", public;

INSERT INTO schema_migrations (version) VALUES ('20170208013647');

INSERT INTO schema_migrations (version) VALUES ('20170208195858');

INSERT INTO schema_migrations (version) VALUES ('20170208195920');

INSERT INTO schema_migrations (version) VALUES ('20170208195936');

INSERT INTO schema_migrations (version) VALUES ('20170208195949');

INSERT INTO schema_migrations (version) VALUES ('20170208200011');

INSERT INTO schema_migrations (version) VALUES ('20170208200025');

INSERT INTO schema_migrations (version) VALUES ('20170208200041');

INSERT INTO schema_migrations (version) VALUES ('20170209085900');

