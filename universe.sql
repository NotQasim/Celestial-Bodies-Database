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
-- Name: descriptions; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.descriptions (
    name character varying(30) NOT NULL,
    type character varying(20) NOT NULL,
    description text,
    descriptions_id integer NOT NULL
);


ALTER TABLE public.descriptions OWNER TO freecodecamp;

--
-- Name: descriptions_descriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.descriptions_descriptions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.descriptions_descriptions_id_seq OWNER TO freecodecamp;

--
-- Name: descriptions_descriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.descriptions_descriptions_id_seq OWNED BY public.descriptions.descriptions_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    span_in_light_years integer,
    other_name character varying(20),
    number_of_stars_in_trillions numeric(6,3),
    descriptions_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    has_atmosphere boolean,
    orbit_in_earth_days integer,
    planet_id integer NOT NULL,
    descriptions_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    has_life boolean,
    number_of_moons integer,
    star_id integer,
    descriptions_id integer NOT NULL
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planets_that_orbit integer,
    mass_in_solar_masses integer,
    galaxy_id integer NOT NULL,
    descriptions_id integer NOT NULL
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
-- Name: descriptions descriptions_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.descriptions ALTER COLUMN descriptions_id SET DEFAULT nextval('public.descriptions_descriptions_id_seq'::regclass);


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
-- Data for Name: descriptions; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.descriptions VALUES ('Milky Way', 'Galaxy', 'Spiral', 1);
INSERT INTO public.descriptions VALUES ('Andromeda', 'Galaxy', 'Spiral', 2);
INSERT INTO public.descriptions VALUES ('Pinwheel', 'Galaxy', 'Spiral', 3);
INSERT INTO public.descriptions VALUES ('Messier 82', 'Galaxy', 'Starburst', 4);
INSERT INTO public.descriptions VALUES ('ESO 325-G004', 'Galaxy', 'Elliptical', 5);
INSERT INTO public.descriptions VALUES ('NGC 1427A', 'Galaxy', 'Irregular', 6);
INSERT INTO public.descriptions VALUES ('Sun', 'Star', 'G2V', 7);
INSERT INTO public.descriptions VALUES ('Rigel', 'Star', 'B8Ia', 8);
INSERT INTO public.descriptions VALUES ('Betelgeuse', 'Star', 'M1-2', 9);
INSERT INTO public.descriptions VALUES ('Sirius A', 'Star', 'A0mA1 Va', 10);
INSERT INTO public.descriptions VALUES ('Arcturus', 'Star', 'K1.5III', 11);
INSERT INTO public.descriptions VALUES ('Aldebaran', 'Star', 'K5+III', 12);
INSERT INTO public.descriptions VALUES ('Mercury', 'Planet', 'Terrestrial', 13);
INSERT INTO public.descriptions VALUES ('Venus', 'Planet', 'Terrestrial', 14);
INSERT INTO public.descriptions VALUES ('Earth', 'Planet', 'Terrestrial', 15);
INSERT INTO public.descriptions VALUES ('Mars', 'Planet', 'Terrestrial', 16);
INSERT INTO public.descriptions VALUES ('Jupiter', 'Planet', 'Gas Giant', 17);
INSERT INTO public.descriptions VALUES ('Saturn', 'Planet', 'Gas Giant', 18);
INSERT INTO public.descriptions VALUES ('Uranus', 'Planet', 'Ice Giant', 19);
INSERT INTO public.descriptions VALUES ('Neptune', 'Planet', 'Ice Giant', 20);
INSERT INTO public.descriptions VALUES ('TrES-2b', 'Planet', 'Gas Giant', 21);
INSERT INTO public.descriptions VALUES ('WASP-12b', 'Planet', 'Gas Giant', 22);
INSERT INTO public.descriptions VALUES ('HD 189733 b', 'Planet', 'Gas Giant', 23);
INSERT INTO public.descriptions VALUES ('Kepler-186f', 'Planet', NULL, 24);
INSERT INTO public.descriptions VALUES ('Moon', 'Moon', 'Only natural satellite of Earth', 25);
INSERT INTO public.descriptions VALUES ('Phobos', 'Moon', 'One of two moons of Mars', 26);
INSERT INTO public.descriptions VALUES ('Deimos', 'Moon', 'One of two moons of Mars', 27);
INSERT INTO public.descriptions VALUES ('Ganymede', 'Moon', 'Largest moon in the Solar System', 28);
INSERT INTO public.descriptions VALUES ('Io', 'Moon', 'One of the four Galilean Moons', 29);
INSERT INTO public.descriptions VALUES ('Europa', 'Moon', 'One of the four Galilean Moons', 30);
INSERT INTO public.descriptions VALUES ('Callisto', 'Moon', 'As large as Mercury', 31);
INSERT INTO public.descriptions VALUES ('Titan', 'Moon', 'Only moon with a dense atmosphere', 32);
INSERT INTO public.descriptions VALUES ('Atlas', 'Moon', 'One of the moons of Saturn', 33);
INSERT INTO public.descriptions VALUES ('Janus', 'Moon', 'One of the moons of Saturn', 34);
INSERT INTO public.descriptions VALUES ('Telesto', 'Moon', 'One of the moons of Saturn', 35);
INSERT INTO public.descriptions VALUES ('Miranda', 'Moon', 'One of the five major moons of Uranus', 36);
INSERT INTO public.descriptions VALUES ('Ariel', 'Moon', 'One of the five major moons of Uranus', 37);
INSERT INTO public.descriptions VALUES ('Umbriel', 'Moon', 'One of the five major moons of Uranus', 38);
INSERT INTO public.descriptions VALUES ('Titania', 'Moon', 'One of the five major moons of Uranus', 39);
INSERT INTO public.descriptions VALUES ('Oberon', 'Moon', 'One of the five major moons of Uranus', 40);
INSERT INTO public.descriptions VALUES ('Triton', 'Moon', 'Largest moon of Neptune', 41);
INSERT INTO public.descriptions VALUES ('Thalassa', 'Moon', 'One of the moons of Neptune', 42);
INSERT INTO public.descriptions VALUES ('Galatea', 'Moon', 'One of the moons of Neptune', 43);
INSERT INTO public.descriptions VALUES ('Proteus', 'Moon', 'One of the moons of Neptune', 44);
INSERT INTO public.descriptions VALUES ('TrES-2 A', 'Star', 'G0V', 45);
INSERT INTO public.descriptions VALUES ('WASP-12', 'Star', 'G0V', 46);
INSERT INTO public.descriptions VALUES ('HD 189733', 'Star', 'K1.5V', 47);
INSERT INTO public.descriptions VALUES ('Kepler-186', 'Star', 'M1V', 48);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 87400, NULL, 0.250, 1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 152000, 'Messier 31', 1.000, 2);
INSERT INTO public.galaxy VALUES (3, 'Pinwheel Galaxy', 170000, 'Messier 101', 1.000, 3);
INSERT INTO public.galaxy VALUES (4, 'Messier 82', 40800, 'Cigar Galaxy', 0.030, 4);
INSERT INTO public.galaxy VALUES (5, 'ESO 325-G004', 545170, NULL, NULL, 5);
INSERT INTO public.galaxy VALUES (6, 'NGC 1427A', 20000, 'PGC 13500', NULL, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', false, 27, 3, 25);
INSERT INTO public.moon VALUES (2, 'Phobos', false, 0, 4, 26);
INSERT INTO public.moon VALUES (3, 'Deimos', false, 1, 4, 27);
INSERT INTO public.moon VALUES (4, 'Ganymede', false, 7, 5, 28);
INSERT INTO public.moon VALUES (5, 'Io', false, 1, 5, 29);
INSERT INTO public.moon VALUES (6, 'Europa', false, 4, 5, 30);
INSERT INTO public.moon VALUES (7, 'Callisto', false, 17, 5, 31);
INSERT INTO public.moon VALUES (8, 'Titan', true, 16, 6, 32);
INSERT INTO public.moon VALUES (9, 'Atlas', false, 1, 6, 33);
INSERT INTO public.moon VALUES (10, 'Janus', false, 1, 6, 34);
INSERT INTO public.moon VALUES (11, 'Telesto', false, 2, 6, 35);
INSERT INTO public.moon VALUES (12, 'Miranda', false, 1, 7, 36);
INSERT INTO public.moon VALUES (13, 'Ariel', false, 3, 7, 37);
INSERT INTO public.moon VALUES (14, 'Umbriel', false, 4, 7, 38);
INSERT INTO public.moon VALUES (15, 'Titania', false, 9, 7, 39);
INSERT INTO public.moon VALUES (16, 'Oberon', false, 13, 7, 40);
INSERT INTO public.moon VALUES (17, 'Triton', false, 6, 8, 41);
INSERT INTO public.moon VALUES (18, 'Thalassa', false, 0, 8, 42);
INSERT INTO public.moon VALUES (19, 'Galatea', false, 0, 8, 43);
INSERT INTO public.moon VALUES (20, 'Proteus', false, 1, 8, 44);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 0, 1, 13);
INSERT INTO public.planet VALUES (2, 'Venus', false, 0, 1, 14);
INSERT INTO public.planet VALUES (3, 'Earth', true, 1, 1, 15);
INSERT INTO public.planet VALUES (4, 'Mars', false, 2, 1, 16);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 95, 1, 17);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 146, 1, 18);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 27, 1, 19);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 14, 1, 20);
INSERT INTO public.planet VALUES (9, 'TrES-2b', false, NULL, 7, 21);
INSERT INTO public.planet VALUES (10, 'WASP-12b', false, NULL, 8, 22);
INSERT INTO public.planet VALUES (11, 'HD 189733b', false, NULL, 9, 23);
INSERT INTO public.planet VALUES (12, 'Kepler-186f', NULL, NULL, 10, 24);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 8, 1, 1, 7);
INSERT INTO public.star VALUES (2, 'Rigel', 14, 21, 1, 8);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 0, 19, 1, 9);
INSERT INTO public.star VALUES (4, 'Sirius A', 0, 2, 1, 10);
INSERT INTO public.star VALUES (5, 'Arcturus', 0, 1, 1, 11);
INSERT INTO public.star VALUES (6, 'Aldebaran', 1, 1, 1, 12);
INSERT INTO public.star VALUES (7, 'TrES-2 A', 1, 1, 1, 45);
INSERT INTO public.star VALUES (8, 'WASP-12', 1, 1, 1, 46);
INSERT INTO public.star VALUES (9, 'HD 189733', 1, 1, 1, 47);
INSERT INTO public.star VALUES (10, 'Kepler-186', 5, 1, 1, 48);


--
-- Name: descriptions_descriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.descriptions_descriptions_id_seq', 48, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: descriptions descriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.descriptions
    ADD CONSTRAINT descriptions_pkey PRIMARY KEY (descriptions_id);


--
-- Name: galaxy galaxy_descriptions_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_descriptions_id_key UNIQUE (descriptions_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_descriptions_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_descriptions_id_key UNIQUE (descriptions_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_descriptions_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_descriptions_id_key UNIQUE (descriptions_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_descriptions_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_descriptions_id_key UNIQUE (descriptions_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: descriptions unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.descriptions
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: galaxy galaxy_descriptions_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_descriptions_id_fkey FOREIGN KEY (descriptions_id) REFERENCES public.descriptions(descriptions_id);


--
-- Name: moon moon_descriptions_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_descriptions_id_fkey FOREIGN KEY (descriptions_id) REFERENCES public.descriptions(descriptions_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_descriptions_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_descriptions_id_fkey FOREIGN KEY (descriptions_id) REFERENCES public.descriptions(descriptions_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_descriptions_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_descriptions_id_fkey FOREIGN KEY (descriptions_id) REFERENCES public.descriptions(descriptions_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

