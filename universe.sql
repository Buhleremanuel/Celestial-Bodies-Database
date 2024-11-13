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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    galaxy_type text NOT NULL,
    distance_from_earth numeric(4,1),
    galaxy_code character varying(10)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_planet integer,
    description text,
    planet_id integer NOT NULL,
    moon_code character varying(10)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_spherical boolean,
    has_life boolean,
    star_id integer NOT NULL,
    planet_code character varying(10)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_moon integer,
    moon_id integer NOT NULL,
    satellite_code character varying(10)
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size numeric(4,1),
    age integer,
    galaxy_id integer NOT NULL,
    star_code character varying(10)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.galaxy (galaxy_id, name, description, galaxy_type, distance_from_earth, galaxy_code) FROM stdin;
1	Milky Way	Our home galaxy, containing our Solar System.	Spiral	0.0	\N
2	Andromeda	The closest spiral galaxy to the Milky Way.	Spiral	2.5	\N
3	Triangulum	A member of the Local Group, smaller than Andromeda and the Milky Way.	Spiral	3.0	\N
4	Whirlpool	A face-on spiral galaxy that is actively interacting with a smaller galaxy.	Spiral	23.0	\N
5	Sombrero	A unique galaxy with a large central bulge that resembles a sombrero hat.	Elliptical	29.3	\N
6	Messier 87	A giant elliptical galaxy with a supermassive black hole at its center.	Elliptical	53.5	\N
\.


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.moon (moon_id, name, distance_planet, description, planet_id, moon_code) FROM stdin;
1	Luna	384400	Earth’s only natural satellite.	3	\N
2	Phobos	9377	One of Mars’ two small moons.	4	\N
3	Deimos	23460	The smaller and farther moon of Mars.	4	\N
4	Io	421700	The most geologically active moon of Jupiter.	6	\N
5	Europa	670900	A moon of Jupiter with a possible subsurface ocean.	6	\N
6	Ganymede	1070400	The largest moon in the Solar System.	6	\N
7	Callisto	1882700	A heavily cratered moon of Jupiter.	6	\N
8	Titan	1221870	A large moon of Saturn with a thick atmosphere.	7	\N
9	Rhea	527040	The second-largest moon of Saturn.	7	\N
10	Iapetus	3561000	A moon of Saturn with a distinctive two-tone color.	7	\N
11	Oberon	583500	The outermost large moon of Uranus.	8	\N
12	Titania	436300	The largest moon of Uranus.	8	\N
13	Umbriel	266000	A dark moon of Uranus with a mysterious bright ring.	8	\N
14	Ariel	191000	A bright moon of Uranus with valleys and cliffs.	8	\N
15	Triton	354800	The largest moon of Neptune, with geysers.	9	\N
16	Nereid	5513400	A distant, irregularly orbiting moon of Neptune.	9	\N
17	Charon	19591	The largest moon of Pluto, half its size.	10	\N
18	Nix	48694	A small moon of Pluto with an irregular shape.	10	\N
19	Hydra	64738	The outermost known moon of Pluto.	10	\N
20	Miranda	129800	An unusual moon of Uranus with giant canyons.	8	\N
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.planet (planet_id, name, is_spherical, has_life, star_id, planet_code) FROM stdin;
1	Mercury	t	f	1	\N
2	Venus	t	f	1	\N
3	Earth	t	t	1	\N
4	Mars	t	f	1	\N
5	Kepler-22b	t	f	2	\N
6	Jupiter	t	f	1	\N
7	Saturn	t	f	1	\N
8	Uranus	t	f	1	\N
9	Neptune	t	f	1	\N
10	Proxima b	t	f	3	\N
11	HD 189733 b	t	f	4	\N
12	Gliese 581d	t	f	3	\N
\.


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.satellite (satellite_id, name, distance_moon, moon_id, satellite_code) FROM stdin;
1	Explorer 1	1000	1	\N
2	Pioneer 10	5000	4	\N
3	Voyager 1	8000	6	\N
4	Voyager 2	8500	6	\N
5	Galileo	2500	6	\N
6	Cassini	3000	8	\N
7	Hubble	700	3	\N
8	New Horizons	55000	17	\N
9	Lunar Orbiter 1	1500	1	\N
10	Chandrayaan-1	200	1	\N
\.


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.star (star_id, name, size, age, galaxy_id, star_code) FROM stdin;
1	Sirius	1.7	240	1	\N
2	Betelgeuse	887.0	10	1	\N
3	Proxima Centauri	0.1	4500	2	\N
4	Rigel	78.9	8	2	\N
5	Vega	2.1	455	3	\N
6	Aldebaran	44.2	100	3	\N
\.


--
-- Name: galaxy galaxy_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: galaxy galaxy_galaxy_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_code_key UNIQUE (galaxy_code);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_code_key UNIQUE (moon_code);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_code_key UNIQUE (planet_code);


--
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


--
-- Name: satellite satellite_satellite_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_satellite_code_key UNIQUE (satellite_code);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_code_key UNIQUE (star_code);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: satellite fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT fk_moon FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

