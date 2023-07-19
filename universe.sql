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
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer,
    asteroids integer,
    distance_from_earth numeric(15,2),
    description text,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer,
    asteroids integer,
    distance_from_earth numeric(15,2),
    description text,
    has_life boolean,
    moon_id integer NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer,
    asteroids integer,
    distance_from_earth numeric(15,2),
    description text,
    has_life boolean,
    star_id integer,
    planet_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: space_missions; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_missions (
    space_missions_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_km integer
);


ALTER TABLE public.space_missions OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer,
    asteroids integer,
    distance_from_earth numeric(15,2),
    description text,
    has_life boolean,
    galaxy_id integer,
    star_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Corvus', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Centaurus', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Coma Berenices', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Ursa Major', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Virgo', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Proxima Centauri', NULL, NULL, NULL, NULL, NULL, 1, 1);
INSERT INTO public.moon VALUES ('Epsilon Eridani', NULL, NULL, NULL, NULL, NULL, 2, 1);
INSERT INTO public.moon VALUES ('Lecaille 9352', NULL, NULL, NULL, NULL, NULL, 3, 1);
INSERT INTO public.moon VALUES ('Ross 128', NULL, NULL, NULL, NULL, NULL, 4, 1);
INSERT INTO public.moon VALUES ('Groombridge 34', NULL, NULL, NULL, NULL, NULL, 5, 1);
INSERT INTO public.moon VALUES ('Epsilon Indi A', NULL, NULL, NULL, NULL, NULL, 6, 1);
INSERT INTO public.moon VALUES ('Tau Ceti', NULL, NULL, NULL, NULL, NULL, 7, 1);
INSERT INTO public.moon VALUES ('Gliese 1061', NULL, NULL, NULL, NULL, NULL, 8, 1);
INSERT INTO public.moon VALUES ('YZ Ceti', NULL, NULL, NULL, NULL, NULL, 9, 1);
INSERT INTO public.moon VALUES ('Luytens Star', NULL, NULL, NULL, NULL, NULL, 10, 1);
INSERT INTO public.moon VALUES ('Teegardens Star', NULL, NULL, NULL, NULL, NULL, 11, 3);
INSERT INTO public.moon VALUES ('Wolf 1061', NULL, NULL, NULL, NULL, NULL, 12, 3);
INSERT INTO public.moon VALUES ('Moon', NULL, NULL, NULL, NULL, NULL, 13, 3);
INSERT INTO public.moon VALUES ('Deimos', NULL, NULL, NULL, NULL, NULL, 14, 3);
INSERT INTO public.moon VALUES ('Phobos', NULL, NULL, NULL, NULL, NULL, 15, 3);
INSERT INTO public.moon VALUES ('Amalthea', NULL, NULL, NULL, NULL, NULL, 16, 3);
INSERT INTO public.moon VALUES ('Callisto', NULL, NULL, NULL, NULL, NULL, 17, 3);
INSERT INTO public.moon VALUES ('Europa', NULL, NULL, NULL, NULL, NULL, 18, 3);
INSERT INTO public.moon VALUES ('Ganymede', NULL, NULL, NULL, NULL, NULL, 19, 3);
INSERT INTO public.moon VALUES ('Io', NULL, NULL, NULL, NULL, NULL, 20, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Wolf 1061', NULL, NULL, NULL, NULL, NULL, 1, 12);
INSERT INTO public.planet VALUES ('Teegardens Star', NULL, NULL, NULL, NULL, NULL, 1, 11);
INSERT INTO public.planet VALUES ('Luytens Star', NULL, NULL, NULL, NULL, NULL, 1, 10);
INSERT INTO public.planet VALUES ('YZ Ceti', NULL, NULL, NULL, NULL, NULL, 1, 9);
INSERT INTO public.planet VALUES ('Gliese 1061', NULL, NULL, NULL, NULL, NULL, 1, 8);
INSERT INTO public.planet VALUES ('Tau Ceti', NULL, NULL, NULL, NULL, NULL, 1, 7);
INSERT INTO public.planet VALUES ('Epsilon Indi A', NULL, NULL, NULL, NULL, NULL, 1, 6);
INSERT INTO public.planet VALUES ('Groombridge 34', NULL, NULL, NULL, NULL, NULL, 2, 5);
INSERT INTO public.planet VALUES ('Ross 128', NULL, NULL, NULL, NULL, NULL, 2, 4);
INSERT INTO public.planet VALUES ('Lecaille 9352', NULL, NULL, NULL, NULL, NULL, 2, 3);
INSERT INTO public.planet VALUES ('Epsilon Eridani', NULL, NULL, NULL, NULL, NULL, 2, 2);
INSERT INTO public.planet VALUES ('Proxima Centauri', NULL, NULL, NULL, NULL, NULL, 2, 1);


--
-- Data for Name: space_missions; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_missions VALUES (1, 'Apollo 1', NULL);
INSERT INTO public.space_missions VALUES (2, 'Apollo 2', NULL);
INSERT INTO public.space_missions VALUES (3, 'Apollo 3', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Gliese 784', NULL, NULL, NULL, NULL, NULL, 1, 1);
INSERT INTO public.star VALUES ('WISE j2209+2711', NULL, NULL, NULL, NULL, NULL, 2, 2);
INSERT INTO public.star VALUES ('G240', NULL, NULL, NULL, NULL, NULL, 3, 3);
INSERT INTO public.star VALUES ('Gliese 555', NULL, NULL, NULL, NULL, NULL, 4, 4);
INSERT INTO public.star VALUES ('EQ Pegasi', NULL, NULL, NULL, NULL, NULL, 5, 5);
INSERT INTO public.star VALUES ('Gliese 581', NULL, NULL, NULL, NULL, NULL, 6, 6);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_unique UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_unique UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: space_missions space_missions_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_missions
    ADD CONSTRAINT space_missions_id PRIMARY KEY (space_missions_id);


--
-- Name: space_missions space_missions_mission_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_missions
    ADD CONSTRAINT space_missions_mission_id_key UNIQUE (space_missions_id);


--
-- Name: star star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_key UNIQUE (star_id);


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
-- Name: star star_galaxy_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_name_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

