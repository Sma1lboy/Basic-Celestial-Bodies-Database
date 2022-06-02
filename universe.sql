--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    has_life boolean NOT NULL,
    description text,
    age_in_millions_of_years numeric(5,1),
    galaxy_types character varying(40),
    name character varying(40),
    distance_from_earth_in_lightyear integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    is_spherical boolean,
    planet_id integer NOT NULL,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    is_spherical boolean,
    description text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: rockets; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.rockets (
    rockets_id integer NOT NULL,
    name character varying(50) NOT NULL,
    note text
);


ALTER TABLE public.rockets OWNER TO freecodecamp;

--
-- Name: rockets_rocket_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.rockets_rocket_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rockets_rocket_id_seq OWNER TO freecodecamp;

--
-- Name: rockets_rocket_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.rockets_rocket_id_seq OWNED BY public.rockets.rockets_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer,
    description text,
    name character varying(40) NOT NULL,
    distance_from_earth integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: rockets rockets_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rockets ALTER COLUMN rockets_id SET DEFAULT nextval('public.rockets_rocket_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, true, 'something', 800.1, 'spiral', 'Milky', 5000);
INSERT INTO public.galaxy VALUES (2, true, 'something', 800.1, 'spiral', 'MilkyIII', 5000);
INSERT INTO public.galaxy VALUES (3, true, 'something', 800.1, 'spiral', 'MilkyII', 5000);
INSERT INTO public.galaxy VALUES (4, true, 'something', 800.1, 'spiral', 'Needle', 5000);
INSERT INTO public.galaxy VALUES (5, true, 'something', 800.1, 'spiral', 'NeedleI', 5000);
INSERT INTO public.galaxy VALUES (6, true, 'something', 800.1, 'spiral', 'NeedleII', 5000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', true, 1, 'somethig111');
INSERT INTO public.moon VALUES (2, 'moon2', true, 1, 'somethig111');
INSERT INTO public.moon VALUES (3, 'moon3', true, 1, 'somethig111');
INSERT INTO public.moon VALUES (4, 'moon4', true, 2, 'somethig111');
INSERT INTO public.moon VALUES (5, 'moon5', true, 2, 'somethig111');
INSERT INTO public.moon VALUES (6, 'moon6', true, 2, 'somethig111');
INSERT INTO public.moon VALUES (8, 'moon7', false, 3, 'somethig111');
INSERT INTO public.moon VALUES (9, 'moon8', false, 3, 'somethig111');
INSERT INTO public.moon VALUES (10, 'moon9', false, 3, 'somethig111');
INSERT INTO public.moon VALUES (11, 'moon10', true, 4, 'somethig111');
INSERT INTO public.moon VALUES (12, 'moon11', true, 4, 'somethig111');
INSERT INTO public.moon VALUES (13, 'moon12', true, 4, 'somethig111');
INSERT INTO public.moon VALUES (14, 'moon13', true, 5, 'somethig111');
INSERT INTO public.moon VALUES (15, 'moon14', true, 5, 'somethig111');
INSERT INTO public.moon VALUES (16, 'moon15', true, 5, 'somethig111');
INSERT INTO public.moon VALUES (17, 'moon16', true, 5, 'somethig111');
INSERT INTO public.moon VALUES (18, 'moon117', true, 5, 'somethig111');
INSERT INTO public.moon VALUES (19, 'moon18', true, 5, 'somethig111');
INSERT INTO public.moon VALUES (20, 'moon119', true, 5, 'somethig111');
INSERT INTO public.moon VALUES (21, 'moon20', true, 5, 'somethig111');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 'ahah', 1);
INSERT INTO public.planet VALUES (2, 'Jupiter', true, 'ahah', 1);
INSERT INTO public.planet VALUES (3, 'Saturn', true, 'ahah', 3);
INSERT INTO public.planet VALUES (4, 'Mercury', true, 'ahah', 3);
INSERT INTO public.planet VALUES (5, 'Neptune', true, 'ahah', 4);
INSERT INTO public.planet VALUES (6, 'Neptune1', true, 'ahah', 4);
INSERT INTO public.planet VALUES (7, 'Pluto', true, 'ahah', 5);
INSERT INTO public.planet VALUES (8, 'Mars', true, 'ahah', 5);
INSERT INTO public.planet VALUES (9, 'Venus', false, 'ahah', 6);
INSERT INTO public.planet VALUES (10, 'Ceres', false, 'ahah', 6);
INSERT INTO public.planet VALUES (11, 'Charons', true, 'ahah', 7);
INSERT INTO public.planet VALUES (12, 'Uranus', true, 'ahah', 7);


--
-- Data for Name: rockets; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.rockets VALUES (1, 'r1', 'something');
INSERT INTO public.rockets VALUES (2, 'r2', 'something');
INSERT INTO public.rockets VALUES (3, 'r3', 'something');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'something happen', 'ALPHA', 2456);
INSERT INTO public.star VALUES (3, 1, 'something happen', 'BETA', 2456);
INSERT INTO public.star VALUES (4, 2, 'something happen', 'Sirius', 5432);
INSERT INTO public.star VALUES (5, 3, 'something happen', 'Arcturus', 5432);
INSERT INTO public.star VALUES (6, 4, 'something happen', 'Capella', 3432);
INSERT INTO public.star VALUES (7, 5, 'something happen', 'Spica', 1432);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: rockets_rocket_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.rockets_rocket_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: rockets rockets_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rockets
    ADD CONSTRAINT rockets_name_key UNIQUE (name);


--
-- Name: rockets rockets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rockets
    ADD CONSTRAINT rockets_pkey PRIMARY KEY (rockets_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

