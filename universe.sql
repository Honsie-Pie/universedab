--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: debris; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.debris (
    debris_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.debris OWNER TO freecodecamp;

--
-- Name: debris_debris_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.debris_debris_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.debris_debris_id_seq OWNER TO freecodecamp;

--
-- Name: debris_debris_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.debris_debris_id_seq OWNED BY public.debris.debris_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    is_spherical boolean,
    galaxy_type character varying(15),
    description text,
    name character varying(30) NOT NULL,
    age_my integer,
    distance_mly numeric(5,2)
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
    age_my integer,
    distance_mly numeric(5,2),
    is_spherical boolean,
    description text,
    planet_id integer,
    name character varying(30) NOT NULL
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
    age_my integer,
    distance_mly numeric(5,2),
    is_spherical boolean,
    has_life boolean,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_spherical boolean,
    description text,
    galaxy_id integer,
    age_my integer,
    distance_mly numeric(5,2)
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
-- Name: debris debris_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.debris ALTER COLUMN debris_id SET DEFAULT nextval('public.debris_debris_id_seq'::regclass);


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
-- Data for Name: debris; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.debris VALUES (1, 'Musk', 'The filthiest stuff');
INSERT INTO public.debris VALUES (2, 'Oumuamua', 'mysterious object');
INSERT INTO public.debris VALUES (3, 'Debri', 'Poster child of debri');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, false, 'Spiral', 'Our home galaxy, named after a candy bar.', 'Milky way', 13000, 0.25);
INSERT INTO public.galaxy VALUES (2, false, 'Spiral', 'Runner up for most popular galaxy.', 'Andromeda', 4500, 2.54);
INSERT INTO public.galaxy VALUES (3, false, 'Spiral', 'Also known as NGC 598.', 'M33', NULL, 3.00);
INSERT INTO public.galaxy VALUES (4, false, 'Elliptical', 'This galaxy can be seen from Earth', 'Messier 87', NULL, 53.00);
INSERT INTO public.galaxy VALUES (5, false, 'Spiral', 'Also known as M104', 'Sombrero', 5000, 29.00);
INSERT INTO public.galaxy VALUES (6, false, 'Spiral', 'A grand design spiral', 'Pinwheel', 5000, 21.00);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 5000, 0.01, true, 'The good old moon.', 3, 'Moon');
INSERT INTO public.moon VALUES (2, 5000, 0.01, true, 'This moon orbits the red planet.', 4, 'Phobos');
INSERT INTO public.moon VALUES (3, 5000, 0.01, true, 'This moon orbits the red planet.', 4, 'Deimos');
INSERT INTO public.moon VALUES (4, NULL, NULL, true, 'One of the many moons of Jupiter', 5, 'Io');
INSERT INTO public.moon VALUES (5, NULL, NULL, true, 'One of the many moons of Jupiter', 5, 'Europa');
INSERT INTO public.moon VALUES (6, NULL, NULL, true, 'One of the many moons of Jupiter', 5, 'Ganymede');
INSERT INTO public.moon VALUES (7, NULL, NULL, true, 'One of the many moons of Jupiter', 5, 'Calisto');
INSERT INTO public.moon VALUES (8, NULL, NULL, true, 'One of the many moons of Jupiter', 5, 'Amalthea');
INSERT INTO public.moon VALUES (9, NULL, NULL, false, 'One of the many moons of Jupiter', 5, 'Thebe');
INSERT INTO public.moon VALUES (10, NULL, NULL, true, 'One of the many moons of Jupiter', 5, 'Aedea');
INSERT INTO public.moon VALUES (11, NULL, NULL, true, 'One of the many moons of Jupiter', 5, 'Mnemea');
INSERT INTO public.moon VALUES (12, NULL, NULL, true, 'One of the many moons of Jupiter', 5, 'Himalia');
INSERT INTO public.moon VALUES (13, NULL, NULL, true, 'One of the many moons of Jupiter', 5, 'Leda');
INSERT INTO public.moon VALUES (14, NULL, NULL, true, 'One of the many moons of Jupiter', 5, 'Themisto');
INSERT INTO public.moon VALUES (15, NULL, NULL, true, 'One of the many moons of Jupiter', 5, 'Sinope');
INSERT INTO public.moon VALUES (16, NULL, NULL, true, 'One of the many moons of Jupiter', 5, 'Metis');
INSERT INTO public.moon VALUES (17, NULL, NULL, true, 'One of the many moons of Jupiter', 5, 'Cale');
INSERT INTO public.moon VALUES (18, NULL, NULL, true, 'One of the many moons of Jupiter', 5, 'Kore');
INSERT INTO public.moon VALUES (19, NULL, NULL, true, 'One of the many moons of Jupiter', 5, 'Yocasta');
INSERT INTO public.moon VALUES (20, NULL, NULL, true, 'One of the many moons of Jupiter', 5, 'Herse');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', NULL, NULL, true, false, 'A planet in our solar system.', 1);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, NULL, true, false, 'A planet in our solar system.', 1);
INSERT INTO public.planet VALUES (3, 'Earth', NULL, NULL, true, true, 'This planet houses all known life in the universe', 1);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, NULL, true, false, 'A planet in our solar system.', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, NULL, true, false, 'The largest planet on earth. Has many moons.', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, NULL, true, false, 'A planet in our solar system.', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, NULL, true, false, 'A planet in our solar system.', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, NULL, true, false, 'A planet in our solar system.', 1);
INSERT INTO public.planet VALUES (9, 'Kepler-186b', NULL, NULL, true, false, 'A planet in the Kepler-186 system.', 2);
INSERT INTO public.planet VALUES (10, 'Kepler-186c', NULL, NULL, true, false, 'A planet in the Kepler-186 system.', 2);
INSERT INTO public.planet VALUES (11, 'Kepler-186d', NULL, NULL, true, false, 'A planet in the Kepler-186 system.', 2);
INSERT INTO public.planet VALUES (12, 'Kepler-186e', NULL, NULL, true, false, 'A planet in the Kepler-186 system.', 2);
INSERT INTO public.planet VALUES (13, 'Kepler-186f', NULL, NULL, true, false, 'A planet in the Kepler-186 system.', 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', true, 'Our home star', 1, 4600, 0.01);
INSERT INTO public.star VALUES (2, 'Kepler-186', true, 'A star that houses the only habitable planet besides ours.', 1, NULL, 0.58);
INSERT INTO public.star VALUES (3, 'Antares', true, 'Another star in our galaxy', 1, NULL, 550.00);
INSERT INTO public.star VALUES (4, 'Canopus', true, 'Shares name with a Lego alien.', 1, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Sirius', true, 'Part of the Canis Major constellation', 1, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Aldebaran', true, 'I once mispronounced its name when I was 11.', 1, NULL, NULL);


--
-- Name: debris_debris_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.debris_debris_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: debris debris_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.debris
    ADD CONSTRAINT debris_name_key UNIQUE (name);


--
-- Name: debris debris_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.debris
    ADD CONSTRAINT debris_pkey PRIMARY KEY (debris_id);


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

