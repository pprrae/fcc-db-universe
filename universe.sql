--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(30) NOT NULL,
    galaxy_type_id integer NOT NULL,
    distance_from_earth_mly numeric NOT NULL,
    age_in_billions_of_years numeric NOT NULL,
    has_supermassive_black_hole boolean NOT NULL
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
-- Name: galaxy_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_type (
    galaxy_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    has_spiral_arms boolean NOT NULL
);


ALTER TABLE public.galaxy_type OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_type_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_type_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_type_galaxy_type_id_seq OWNED BY public.galaxy_type.galaxy_type_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    diameter_km integer NOT NULL,
    orbital_period_days numeric NOT NULL,
    is_spherical boolean NOT NULL,
    has_atmosphere boolean NOT NULL
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
    star_id integer NOT NULL,
    planet_type_id integer NOT NULL,
    distance_from_earth_au integer NOT NULL,
    orbital_period_days numeric NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL
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
-- Name: planet_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_type (
    planet_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    is_rocky boolean NOT NULL
);


ALTER TABLE public.planet_type OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_type_planet_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_type_planet_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_type_planet_type_id_seq OWNED BY public.planet_type.planet_type_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    spectral_class text NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth_ly numeric NOT NULL,
    has_planets boolean NOT NULL
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
-- Name: galaxy_type galaxy_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type ALTER COLUMN galaxy_type_id SET DEFAULT nextval('public.galaxy_type_galaxy_type_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_type planet_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type ALTER COLUMN planet_type_id SET DEFAULT nextval('public.planet_type_planet_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 2, 0, 13.6, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 1, 2.5, 10, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 1, 2.7, 10, false);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 3, 53.5, 13, true);
INSERT INTO public.galaxy VALUES (5, 'Large Magellanic Cloud', 4, 0.16, 13, false);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 1, 29.3, 13, true);


--
-- Data for Name: galaxy_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_type VALUES (1, 'Spiral', 'Flat rotating disc with spiral arms and a central bulge', true);
INSERT INTO public.galaxy_type VALUES (2, 'Barred Spiral', 'Spiral galaxy with a bar-shaped central structure', true);
INSERT INTO public.galaxy_type VALUES (3, 'Elliptical', 'Smooth, featureless ellipsoid of mostly old stars', false);
INSERT INTO public.galaxy_type VALUES (4, 'Irregular', 'No distinct shape, often rich in gas and young stars', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, 3475, 27.322, true, false);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 22, 0.319, false, false);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 12, 1.263, false, false);
INSERT INTO public.moon VALUES (4, 'Io', 5, 3643, 1.769, true, true);
INSERT INTO public.moon VALUES (5, 'Europa', 5, 3122, 3.551, true, false);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 5268, 7.155, true, false);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 4821, 16.689, true, false);
INSERT INTO public.moon VALUES (8, 'Amalthea', 5, 167, 0.498, false, false);
INSERT INTO public.moon VALUES (9, 'Titan', 6, 5150, 15.945, true, true);
INSERT INTO public.moon VALUES (10, 'Enceladus', 6, 504, 1.370, true, false);
INSERT INTO public.moon VALUES (11, 'Mimas', 6, 396, 0.942, true, false);
INSERT INTO public.moon VALUES (12, 'Rhea', 6, 1527, 4.518, true, false);
INSERT INTO public.moon VALUES (13, 'Iapetus', 6, 1469, 79.33, true, false);
INSERT INTO public.moon VALUES (14, 'Dione', 6, 1123, 2.737, true, false);
INSERT INTO public.moon VALUES (15, 'Tethys', 6, 1062, 1.888, true, false);
INSERT INTO public.moon VALUES (16, 'Titania', 7, 1577, 8.706, true, false);
INSERT INTO public.moon VALUES (17, 'Oberon', 7, 1523, 13.463, true, false);
INSERT INTO public.moon VALUES (18, 'Miranda', 7, 472, 1.4113, true, false);
INSERT INTO public.moon VALUES (19, 'Ariel', 7, 1158, 2.520, true, false);
INSERT INTO public.moon VALUES (20, 'Triton', 8, 2707, 5.877, true, true);
INSERT INTO public.moon VALUES (21, 'Nereid', 8, 340, 360.13, false, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 1, 1, 88, false, true);
INSERT INTO public.planet VALUES (2, 'VENUS', 1, 1, 0, 224.7, false, true);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 1, 0, 365.25, true, true);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 1, 0, 687, false, true);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 2, 4, 4333, false, true);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 2, 8, 10759, false, true);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 3, 17, 30687, false, true);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 3, 29, 60190, false, true);
INSERT INTO public.planet VALUES (9, 'Proxima b', 2, 1, 268000, 11.2, false, true);
INSERT INTO public.planet VALUES (10, '51 Pegasi b', 7, 5, 3219000, 4.23, false, true);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1e', 8, 1, 2574000, 6.1, false, true);
INSERT INTO public.planet VALUES (12, 'Kepler-452b', 9, 4, 88666000, 384.8, false, true);


--
-- Data for Name: planet_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_type VALUES (1, 'Terrestrial', 'Rocky planet with a solid surface', true);
INSERT INTO public.planet_type VALUES (2, 'Gas Giant', 'Mostly hydrogen and helium', false);
INSERT INTO public.planet_type VALUES (3, 'Ice Giant', 'Rich in water, ammonia and methane ices', false);
INSERT INTO public.planet_type VALUES (4, 'Super-Earth', 'Rocky planet more massive than Earth', true);
INSERT INTO public.planet_type VALUES (5, 'Hot Jupiter', 'Gas giant orbiting extremely close to its star', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'G2V', 4600, 0.000016, true);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 1, 'M5.5Ve', 4850, 8.6, false);
INSERT INTO public.star VALUES (3, 'Sirius', 1, 'A1V', 242, 8.6, false);
INSERT INTO public.star VALUES (5, 'Rigel', 1, 'B8la', 8, 863, false);
INSERT INTO public.star VALUES (6, 'R136a1', 5, 'WN5h', 1, 163000, false);
INSERT INTO public.star VALUES (7, '51 Pegasi', 1, 'G2IV', 4800, 50.9, true);
INSERT INTO public.star VALUES (8, 'TRAPPIST-1', 1, 'M8V', 7600, 40.7, true);
INSERT INTO public.star VALUES (9, 'Kepler-452', 1, 'G2V', 6000, 1402, true);
INSERT INTO public.star VALUES (4, 'Betalgeuse', 1, 'M1-2la', 10, 548, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_type_galaxy_type_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_type_planet_type_id_seq', 5, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


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
-- Name: galaxy_type galaxy_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_name_key UNIQUE (name);


--
-- Name: galaxy_type galaxy_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_pkey PRIMARY KEY (galaxy_type_id);


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
-- Name: planet_type planet_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_name_key UNIQUE (name);


--
-- Name: planet_type planet_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_pkey PRIMARY KEY (planet_type_id);


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
-- Name: galaxy galaxy_galaxy_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_type_id_fkey FOREIGN KEY (galaxy_type_id) REFERENCES public.galaxy_type(galaxy_type_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_planet_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_type_id_fkey FOREIGN KEY (planet_type_id) REFERENCES public.planet_type(planet_type_id);


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

