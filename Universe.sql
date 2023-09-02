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
    description character varying(100),
    has_life boolean,
    age_in_millions_of_years integer,
    name character varying(20),
    nickname character varying(10) NOT NULL
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
    name character varying(20),
    has_life boolean,
    is_the_only_moon boolean,
    distance_from_earth numeric(5,1),
    planet_id integer NOT NULL,
    nickname character varying(10)
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
    description text,
    has_life boolean,
    name character varying(20),
    galaxy_id integer NOT NULL,
    star_id integer,
    nickname character varying(10)
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
-- Name: random; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.random (
    random_id integer NOT NULL,
    name character varying(20) NOT NULL,
    nickname character varying(10)
);


ALTER TABLE public.random OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    desccription character varying(100),
    is_spherical boolean,
    has_life boolean,
    distance_from_earth integer,
    name character varying(20),
    galaxy_id integer,
    nickname character varying(10) NOT NULL
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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'kinda big', true, NULL, 'milky way', 'juicy milk');
INSERT INTO public.galaxy VALUES (2, NULL, NULL, NULL, 'chocolate way', 'chocky');
INSERT INTO public.galaxy VALUES (4, NULL, NULL, NULL, 'salty way', 'sssalty');
INSERT INTO public.galaxy VALUES (5, NULL, NULL, NULL, 'OMEGA88', 'OMG');
INSERT INTO public.galaxy VALUES (6, NULL, NULL, NULL, 'idk', 'idek');
INSERT INTO public.galaxy VALUES (3, NULL, false, NULL, 'Giancarlo', 'sweettooshy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, NULL, NULL, NULL, 1, 'amba');
INSERT INTO public.moon VALUES (2, NULL, NULL, NULL, NULL, 5, 'nph');
INSERT INTO public.moon VALUES (3, NULL, NULL, NULL, NULL, 1, 'adfr');
INSERT INTO public.moon VALUES (4, NULL, NULL, NULL, NULL, 2, 'eee');
INSERT INTO public.moon VALUES (5, NULL, NULL, NULL, NULL, 3, 'ert');
INSERT INTO public.moon VALUES (6, NULL, NULL, NULL, NULL, 3, 'rttt');
INSERT INTO public.moon VALUES (7, NULL, NULL, NULL, NULL, 2, 'aaa');
INSERT INTO public.moon VALUES (8, NULL, NULL, NULL, NULL, 5, 'treee');
INSERT INTO public.moon VALUES (9, NULL, NULL, NULL, NULL, 6, 'vf');
INSERT INTO public.moon VALUES (10, NULL, NULL, NULL, NULL, 1, 'dfg');
INSERT INTO public.moon VALUES (11, NULL, NULL, NULL, NULL, 6, 'qwert');
INSERT INTO public.moon VALUES (12, NULL, NULL, NULL, NULL, 3, 'cvb');
INSERT INTO public.moon VALUES (13, NULL, NULL, NULL, NULL, 6, 'mnb');
INSERT INTO public.moon VALUES (14, NULL, NULL, NULL, NULL, 6, 'dnqw');
INSERT INTO public.moon VALUES (15, NULL, NULL, NULL, NULL, 1, 'tghui');
INSERT INTO public.moon VALUES (16, NULL, NULL, NULL, NULL, 4, 'almalo');
INSERT INTO public.moon VALUES (17, NULL, NULL, NULL, NULL, 3, 'poo');
INSERT INTO public.moon VALUES (18, NULL, NULL, NULL, NULL, 5, 'erttyyu');
INSERT INTO public.moon VALUES (19, NULL, NULL, NULL, NULL, 2, 'lmao');
INSERT INTO public.moon VALUES (20, NULL, NULL, NULL, NULL, 4, 'poiuy');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, NULL, NULL, 5, 1, 'amba');
INSERT INTO public.planet VALUES (2, NULL, NULL, NULL, 5, 2, 'nph');
INSERT INTO public.planet VALUES (3, NULL, NULL, NULL, 1, 4, 'adfr');
INSERT INTO public.planet VALUES (4, NULL, NULL, NULL, 1, 2, 'eee');
INSERT INTO public.planet VALUES (5, NULL, NULL, NULL, 2, 3, 'ert');
INSERT INTO public.planet VALUES (6, NULL, NULL, NULL, 3, 2, 'rttt');
INSERT INTO public.planet VALUES (7, NULL, NULL, NULL, 2, 2, 'aaa');
INSERT INTO public.planet VALUES (8, NULL, NULL, NULL, 5, 4, 'treee');
INSERT INTO public.planet VALUES (9, NULL, NULL, NULL, 4, 6, 'vf');
INSERT INTO public.planet VALUES (10, NULL, NULL, NULL, 1, 1, 'dfg');
INSERT INTO public.planet VALUES (11, NULL, NULL, NULL, 6, 6, 'qwert');
INSERT INTO public.planet VALUES (12, NULL, NULL, NULL, 3, 1, 'cvb');
INSERT INTO public.planet VALUES (13, NULL, NULL, NULL, 6, 6, 'mnb');
INSERT INTO public.planet VALUES (14, NULL, NULL, NULL, 6, 2, 'dnqw');
INSERT INTO public.planet VALUES (15, NULL, NULL, NULL, 6, 1, 'tghui');


--
-- Data for Name: random; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.random VALUES (1, 'aaa', 'a');
INSERT INTO public.random VALUES (2, 'bbb', 'b');
INSERT INTO public.random VALUES (3, 'ccc', 'c');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, NULL, NULL, NULL, NULL, 'alpha', 1, 'A');
INSERT INTO public.star VALUES (2, NULL, NULL, NULL, NULL, 'beta', 1, 'B');
INSERT INTO public.star VALUES (3, NULL, NULL, NULL, NULL, 'gamma', 2, 'G');
INSERT INTO public.star VALUES (4, NULL, NULL, NULL, NULL, 'delta', 6, 'D');
INSERT INTO public.star VALUES (5, NULL, NULL, NULL, NULL, 'epsilon', 6, 'E');
INSERT INTO public.star VALUES (6, NULL, NULL, NULL, NULL, 'zeta', 6, 'Z');
INSERT INTO public.star VALUES (7, NULL, NULL, NULL, NULL, 'eta', 4, 'ET');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_nickname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_nickname_key UNIQUE (nickname);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_nickname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_nickname_key UNIQUE (nickname);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_nickname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_nickname_key UNIQUE (nickname);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: random random_nickname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.random
    ADD CONSTRAINT random_nickname_key UNIQUE (nickname);


--
-- Name: random random_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.random
    ADD CONSTRAINT random_pkey PRIMARY KEY (random_id);


--
-- Name: star star_nickname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_nickname_key UNIQUE (nickname);


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
