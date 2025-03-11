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
    distance_from_earth_in_ly integer,
    galaxy_type_id integer
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
    description text
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
    description text,
    planet_id integer,
    has_life boolean,
    diameter_km numeric(38,1)
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
    description text,
    star_id integer,
    has_life boolean,
    diameter_km numeric(38,1)
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
    description text,
    temperature_in_kelvin integer,
    galaxy_id integer,
    diameter_km numeric(38,1)
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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.galaxy (galaxy_id, name, description, distance_from_earth_in_ly, galaxy_type_id) FROM stdin;
1	Milky Way	Our home galaxy is called the Milky Way. It's a spiral galaxy with a disk of stars spanning more than 100,000 light-years. Earth is located along one of the galaxy's spiral arms, about halfway from the center. Our solar system takes about 240 million years to orbit the Milky Way just once.	0	1
2	Andromeda	The Andromeda Galaxy is a barred spiral galaxy and is the nearest major galaxy to the Milky Way. It was originally named the Andromeda Nebula and is cataloged as Messier 31, M31, and NGC 224.	765	1
3	Triangulum	The Triangulum Galaxy is a spiral galaxy 2.73 million light-years (ly) from Earth in the constellation Triangulum. It is catalogued as Messier 33 or NGC 598.	970	1
4	Cadewell 21	NGC 4449, also known as Caldwell 21, is an irregular Magellanic type galaxy in the constellation Canes Venatici, being located about 13 million light-years away.	4010	4
5	Dwingeloo 1	Dwingeloo 1 is a barred spiral galaxy about 10 million light-years away from the Earth, in the constellation Cassiopeia. It lies in the Zone of Avoidance and is heavily obscured by the Milky Way. The size and mass of Dwingeloo 1 are comparable to those of Triangulum Galaxy.	3000	1
6	Dwingeloo 2	Dwingeloo 2 is a small irregular galaxy discovered in 1996 and located about 10 million light-years away from the Earth. Its discovery was a result of the Dwingeloo Obscured Galaxy Survey (DOGS) of the Zone of Avoidance using the Dwingeloo Radio Observatory. Dwingeloo 2 is a companion galaxy of Dwingeloo 1.	3000	4
7	Maffei 1	Maffei 1 is a massive elliptical galaxy in the constellation Cassiopeia. Once believed to be a member of the Local Group of galaxies, it is now known to belong to a separate group, the IC 342/Maffei Group. It was named after Paolo Maffei, who discovered it and the neighboring Maffei 2 in 1967 via their infrared emissions.	4400	2
8	Maffei 2	Maffei 2 is an intermediate spiral galaxy about 10 million light-years away in the constellation Cassiopeia. Maffei 2 and Maffei 1 were both discovered by Paolo Maffei in 1968 from their infrared emission. Maffei 2 lies in the Zone of Avoidance and is about 99.5% obscured by the Milky Way's foreground dust clouds, and as a result is barely detectable at optical wavelengths. It had been suggested soon after its discovery that Maffei 2 may be a member of the Local Group, but it is now thought to be a member of another nearby group, the IC 342/Maffei Group, the galaxy group that is the closest to the Local Group.	3059	1
9	Donatiello I	Donatiello I, also known as Mirachs Goblin, is a dwarf spheroidal galaxy in the constellation Andromeda, located between 8.1 and 11.4 million light-years from Earth. It is a possible satellite galaxy of the dwarf lenticular galaxy NGC 404, Mirachs Ghost, which is situated 60 arcminutes away. It is otherwise one of the most isolated dwarf spheroidal galaxies known, being separated from NGC 404 by around 211,000 light-years. The galaxy is named after its discoverer, amateur astronomer and astrophotographer Giuseppe Donatiello, who sighted the galaxy in a 2016 review of his archival long exposures from 2010 and 2013. Follow-up observations with the Roque de los Muchachos Observatory led to a scientific paper on its discovery being published in December 2018.	3500	3
\.


--
-- Data for Name: galaxy_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.galaxy_type (galaxy_type_id, name, description) FROM stdin;
1	Spiral Galaxy	Spiral galaxies are surrounded by halos, mixtures of old stars, star clusters, and dark matter – invisible material that does not emit or reflect light but still has a gravitational pull on other matter. The youngest stars form in gas-rich arms, while older stars can be found throughout the disk and within the bulge and halo.
2	Elliptical Galaxy	Elliptical galaxies have shapes that range from completely round to oval. They are less common than spiral galaxies.Unlike spirals, elliptical galaxies usually contain little gas and dust and show very little organization or structure. The stars orbit around the core in random directions and are generally older than those in spiral galaxies since little of the gas needed to form new stars remains. Scientists think elliptical galaxies originate from collisions and mergers with spirals.
3	Lenticular Galaxy	Lenticular galaxies are a kind of cross between spirals and ellipticals. They have the central bulge and disk common to spiral galaxies but no arms. But like ellipticals, lenticular galaxies have older stellar populations and little ongoing star formation. Scientists have a few theories about how lenticular galaxies evolved. One idea suggests these galaxies are older spirals whose arms have faded. Another proposes that lenticulars formed from mergers of spiral galaxies.
4	Irregular Galaxy	Irregular galaxies have unusual shapes, like toothpicks, rings, or even little groupings of stars. They range from dwarf irregular galaxies with 100 million times the Sun’s mass to large ones weighing 10 billion solar masses. Astronomers think these galaxies’ odd shapes are sometimes the result of interactions with others. For example, one spiral galaxy passing another with a stronger gravitational pull could lose some of its material, become distorted, and morph into a new shape. Some, like gas-rich dwarf galaxies, may be new, formed by material pulled from such encounters. Or perhaps when galaxies collide, they create a larger, oddly shaped mashup. Some scientists theorize that some large irregular galaxies could represent an intermediate step between spiral and elliptical galaxies.Irregular galaxies born from galaxy interactions or collisions typically host a mix of older and younger stars, depending on the characteristics and composition of the original galaxies. Irregular galaxies may also hold significant amounts of gas and dust – essential ingredients for making new stars.
\.


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.moon (moon_id, name, description, planet_id, has_life, diameter_km) FROM stdin;
1	moon 1	moon 1 description	1	f	1565.5
2	moon 2	moon 2 description	2	f	8765.5
3	moon 3	moon 3 description	3	t	11465.5
4	moon 4	moon 4 description	4	f	648.5
5	moon 5	moon 5 description	5	t	89745.5
6	moon 6	moon 6 description	6	f	15968.9
7	moon 7	moon 7 description	7	t	35987.6
8	moon 8	moon 8 description	8	f	1566.9
9	moon 9	moon 9 description	9	f	1565.2
10	moon 10	moon 10 description	10	t	6879.3
11	moon 11	moon 11 description	11	f	16987.1
12	moon 12	moon 12 description	1	t	1565.5
13	moon 13	moon 13 description	12	f	8975.6
14	moon 14	moon 14 description	6	f	1569.2
15	moon 15	moon 15 description	6	f	1558.5
16	moon 16	moon 16 description	4	f	1786.5
17	moon 17	moon 17 description	12	f	1565.5
18	moon 18	moon 18 description	9	t	2569.5
19	moon 19	moon 19 description	8	f	2365.5
20	moon 20	moon 20 description	3	f	8565.2
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.planet (planet_id, name, description, star_id, has_life, diameter_km) FROM stdin;
1	Mercury	Mercury is the first planet from the Sun and the smallest in the Solar System. In English, it is named after the ancient Roman god Mercurius (Mercury), god of commerce and communication, and the messenger of the gods. Mercury is classified as a terrestrial planet, with roughly the same surface gravity as Mars. The surface of Mercury is heavily cratered, as a result of countless impact events that have accumulated over billions of years. Its largest crater, Caloris Planitia, has a diameter of 1,550 km (960 mi), which is about one-third the diameter of the planet (4,880 km or 3,030 mi). Similarly to the Earths Moon, Mercurys surface displays an expansive rupes system generated from thrust faults and bright ray systems formed by impact event remnants.	1	f	4879.4
2	Venus	Venus is the second planet from the Sun. It is a terrestrial planet and is the closest in mass and size to its orbital neighbour Earth. Venus has by far the densest atmosphere of the terrestrial planets, composed mostly of carbon dioxide with a thick, global sulfuric acid cloud cover. At the surface it has a mean temperature of 737 K (464 °C; 867 °F) and a pressure 92 times that of Earth's at sea level. These extreme conditions compress carbon dioxide into a supercritical state at Venus's surface.	1	f	12103.6
3	Earth	Earth is the third planet from the Sun and the only astronomical object known to harbor life. This is enabled by Earth being an ocean world, the only one in the Solar System sustaining liquid surface water. Almost all of Earth's water is contained in its global ocean, covering 70.8% of Earth's crust. The remaining 29.2% of Earth's crust is land, most of which is located in the form of continental landmasses within Earth's land hemisphere. Most of Earth's land is at least somewhat humid and covered by vegetation, while large sheets of ice at Earth's polar deserts retain more water than Earth's groundwater, lakes, rivers, and atmospheric water combined. Earth's crust consists of slowly moving tectonic plates, which interact to produce mountain ranges, volcanoes, and earthquakes. Earth has a liquid outer core that generates a magnetosphere capable of deflecting most of the destructive solar winds and cosmic radiation.	1	t	12742.0
4	Mars	Mars is the fourth planet from the Sun. The surface of Mars is orange-red because it is covered in iron(III) oxide dust, giving it the nickname "the Red Planet". Mars is among the brightest objects in Earth's sky, and its high-contrast albedo features have made it a common subject for telescope viewing. It is classified as a terrestrial planet and is the second smallest of the Solar System's planets with a diameter of 6,779 km (4,212 mi). In terms of orbital motion, a Martian solar day (sol) is equal to 24.6 hours, and a Martian solar year is equal to 1.88 Earth years (687 Earth days). Mars has two natural satellites that are small and irregular in shape: Phobos and Deimos.	1	f	6799.0
5	Jupiter	Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a gas giant with a mass more than 2.5 times that of all the other planets in the Solar System combined and slightly less than one-thousandth the mass of the Sun. Its diameter is eleven times that of Earth, and a tenth that of the Sun. Jupiter orbits the Sun at a distance of 5.20 AU (778.5 Gm), with an orbital period of 11.86 years. It is the third-brightest natural object in the Earth's night sky, after the Moon and Venus, and has been observed since prehistoric times. It's name derives from that of Jupiter, the chief deity of ancient Roman religion.	1	f	139822.0
6	Saturn	Saturn is the sixth planet from the Sun and the second largest in the Solar System, after Jupiter. It is a gas giant, with an average radius of about nine times that of Earth. It has an eighth the average density of Earth, but is over 95 times more massive. Even though Saturn is almost as big as Jupiter, Saturn has less than a third its mass. Saturn orbits the Sun at a distance of 9.59 AU (1,434 million km), with an orbital period of 29.45 years.	1	f	116464.0
7	Uranus	Uranus is the seventh planet from the Sun. It is a gaseous cyan-coloured ice giant. Most of the planet is made of water, ammonia, and methane in a supercritical phase of matter, which astronomy calls "ice" or volatiles. The planet's atmosphere has a complex layered cloud structure and has the lowest minimum temperature (49 K (−224 °C; −371 °F)) of all the Solar System's planets. It has a marked axial tilt of 82.23° with a retrograde rotation period of 17 hours and 14 minutes. This means that in an 84-Earth-year orbital period around the Sun, its poles get around 42 years of continuous sunlight, followed by 42 years of continuous darkness.	1	f	50724.0
8	Neptune	Neptune is the eighth and farthest known planet from the Sun. It is the fourth-largest planet in the Solar System by diameter, the third-most-massive planet, and the densest giant planet. It is 17 times the mass of Earth. Compared to its fellow ice giant Uranus, Neptune is slightly more massive, but denser and smaller. Being composed primarily of gases and liquids, it has no well-defined solid surface, and orbits the Sun once every 164.8 years at an orbital distance of 30.1 astronomical units (4.5 billion kilometres; 2.8 billion miles). It is named after the Roman god of the sea and has the astronomical symbol ♆, representing Neptune's trident.	1	f	49244.0
9	Ceres	Ceres (minor-planet designation: 1 Ceres) is a dwarf planet in the middle main asteroid belt between the orbits of Mars and Jupiter. It was the first known asteroid, discovered on 1 January 1801 by Giuseppe Piazzi at Palermo Astronomical Observatory in Sicily, and announced as a new planet. Ceres was later classified as an asteroid and then a dwarf planet, the only one not beyond Neptune's orbit.	1	f	939.4
10	Orcus	Orcus (minor-planet designation: 90482 Orcus) is a dwarf planet located in the Kuiper belt, with one large moon, Vanth. It has an estimated diameter of 870 to 960 km (540 to 600 mi), comparable to the Inner Solar System dwarf planet Ceres. The surface of Orcus is relatively bright with albedo reaching 23 percent, neutral in color, and rich in water ice. The ice is predominantly in crystalline form, which may be related to past cryovolcanic activity. Other compounds like methane or ammonia may also be present on its surface. Orcus was discovered by American astronomers Michael Brown, Chad Trujillo, and David Rabinowitz on 17 February 2004.	1	f	917.5
11	Pluto	Pluto (minor-planet designation: 134340 Pluto) is a dwarf planet in the Kuiper belt, a ring of bodies beyond the orbit of Neptune. It is the ninth-largest and tenth-most-massive known object to directly orbit the Sun. It is the largest known trans-Neptunian object by volume by a small margin, but is less massive than Eris. Like other Kuiper belt objects, Pluto is made primarily of ice and rock and is much smaller than the inner planets. Pluto has roughly one-sixth the mass of the Moon, and one-third its volume. Originally considered a planet, its status was changed when a new definition of the word was adopted by astronomers.	1	f	2376.6
12	Fake Planet 1	this is a fake planet, because i had to make one	3	t	15646.9
13	Fake Planet 2	this is a fake planet, because i had to make one	4	f	15966.9
\.


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.star (star_id, name, description, temperature_in_kelvin, galaxy_id, diameter_km) FROM stdin;
1	Sun	The Sun is the star at the center of the Solar System. It is a massive, nearly perfect sphere of hot plasma, heated to incandescence by nuclear fusion reactions in its core, radiating the energy from its surface mainly as visible light and infrared radiation with 10% at ultraviolet energies. It is by far the most important source of energy for life on Earth. The Sun has been an object of veneration in many cultures. It has been a central subject for astronomical research since antiquity.	15700000	1	1391401.0
2	Star 2	some random bullshit about a fake start goes here	36470000	2	2456473.0
3	Star 3	some more gibbirish	349649813	3	3614654.0
4	Star 4	Why does it have to have 6 rows!	321565816	4	56131358163.5
5	Star 5	WHYYYY!	6541654	5	123456789.9
6	Star 6	give me premade data already	554543418	2	51651357.6
\.


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_type_galaxy_type_id_seq', 4, true);


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
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_type galaxy_type_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_name_unique UNIQUE (name);


--
-- Name: galaxy_type galaxy_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_pkey PRIMARY KEY (galaxy_type_id);


--
-- Name: moon moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


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

