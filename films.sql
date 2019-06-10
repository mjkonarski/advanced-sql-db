--
-- PostgreSQL database dump mentioned in my articles about advanced SQL features
-- https://github.com/mjkonarski/advanced-sql-db
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 196 (class 1259 OID 16729)
-- Name: actors_id_seq; Type: SEQUENCE; Schema: public; Owner: michal
--

CREATE SEQUENCE public.actors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 197 (class 1259 OID 16731)
-- Name: actors; Type: TABLE; Schema: public; Owner: michal
--

CREATE TABLE public.actors (
    id integer DEFAULT nextval('public.actors_id_seq'::regclass) NOT NULL,
    first_name character varying(45) NOT NULL,
    last_name character varying(45) NOT NULL
);

CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


CREATE TABLE public.categories (
    id integer DEFAULT nextval('public.categories_id_seq'::regclass) NOT NULL,
    name character varying(25) NOT NULL
);

CREATE SEQUENCE public.films_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE public.films (
    id integer DEFAULT nextval('public.films_id_seq'::regclass) NOT NULL,
    title character varying(255) NOT NULL,
    release_year integer,
    category_id integer,
    rating numeric,
    prequel_id integer,
    sequel_id integer
);

CREATE TABLE public.films_actors (
    actor_id smallint NOT NULL,
    film_id smallint NOT NULL
);

COPY public.actors (id, first_name, last_name) FROM stdin;
1	Penelope	Guiness
2	Nick	Wahlberg
3	Ed	Chase
4	Jennifer	Davis
5	Johnny	Lollobrigida
6	Bette	Nicholson
7	Grace	Mostel
8	Matthew	Johansson
9	Joe	Swank
10	Christian	Gable
11	Zero	Cage
12	Karl	Berry
13	Uma	Wood
14	Vivien	Bergen
15	Cuba	Olivier
16	Fred	Costner
17	Helen	Voight
18	Dan	Torn
19	Bob	Fawcett
20	Lucille	Tracy
21	Kirsten	Paltrow
22	Elvis	Marx
23	Sandra	Kilmer
24	Cameron	Streep
25	Kevin	Bloom
26	Rip	Crawford
27	Julia	Mcqueen
28	Woody	Hoffman
29	Alec	Wayne
30	Sandra	Peck
31	Sissy	Sobieski
32	Tim	Hackman
33	Milla	Peck
34	Audrey	Olivier
35	Judy	Dean
36	Burt	Dukakis
37	Val	Bolger
38	Tom	Mckellen
39	Goldie	Brody
40	Johnny	Cage
41	Jodie	Degeneres
42	Tom	Miranda
43	Kirk	Jovovich
44	Nick	Stallone
45	Reese	Kilmer
46	Parker	Goldberg
47	Julia	Barrymore
48	Frances	Day-Lewis
49	Anne	Cronyn
50	Natalie	Hopkins
51	Gary	Phoenix
52	Carmen	Hunt
53	Mena	Temple
54	Penelope	Pinkett
55	Fay	Kilmer
56	Dan	Harris
57	Jude	Cruise
58	Christian	Akroyd
59	Dustin	Tautou
60	Henry	Berry
61	Christian	Neeson
62	Jayne	Neeson
63	Cameron	Wray
64	Ray	Johansson
65	Angela	Hudson
66	Mary	Tandy
67	Jessica	Bailey
68	Rip	Winslet
69	Kenneth	Paltrow
70	Michelle	Mcconaughey
71	Adam	Grant
72	Sean	Williams
73	Gary	Penn
74	Milla	Keitel
75	Burt	Posey
76	Angelina	Astaire
77	Cary	Mcconaughey
78	Groucho	Sinatra
79	Mae	Hoffman
80	Ralph	Cruz
81	Scarlett	Damon
82	Woody	Jolie
83	Ben	Willis
84	James	Pitt
85	Minnie	Zellweger
143	River	Dean
86	Greg	Chaplin
87	Spencer	Peck
88	Kenneth	Pesci
89	Charlize	Dench
90	Sean	Guiness
91	Christopher	Berry
92	Kirsten	Akroyd
93	Ellen	Presley
94	Kenneth	Torn
95	Daryl	Wahlberg
96	Gene	Willis
97	Meg	Hawke
98	Chris	Bridges
99	Jim	Mostel
100	Spencer	Depp
101	Susan	Davis
102	Walter	Torn
103	Matthew	Leigh
104	Penelope	Cronyn
105	Sidney	Crowe
106	Groucho	Dunst
107	Gina	Degeneres
108	Warren	Nolte
109	Sylvester	Dern
110	Susan	Davis
111	Cameron	Zellweger
112	Russell	Bacall
113	Morgan	Hopkins
114	Morgan	Mcdormand
115	Harrison	Bale
116	Dan	Streep
117	Renee	Tracy
118	Cuba	Allen
119	Warren	Jackman
120	Penelope	Monroe
121	Liza	Bergman
122	Salma	Nolte
123	Julianne	Dench
124	Scarlett	Bening
125	Albert	Nolte
126	Frances	Tomei
127	Kevin	Garland
128	Cate	Mcqueen
129	Daryl	Crawford
130	Greta	Keitel
131	Jane	Jackman
132	Adam	Hopper
133	Richard	Penn
134	Gene	Hopkins
135	Rita	Reynolds
136	Ed	Mansfield
137	Morgan	Williams
138	Lucille	Dee
139	Ewan	Gooding
140	Whoopi	Hurt
141	Cate	Harris
142	Jada	Ryder
144	Angela	Witherspoon
145	Kim	Allen
146	Albert	Johansson
147	Fay	Winslet
148	Emily	Dee
149	Russell	Temple
150	Jayne	Nolte
151	Geoffrey	Heston
152	Ben	Harris
153	Minnie	Kilmer
154	Meryl	Gibson
155	Ian	Tandy
156	Fay	Wood
157	Greta	Malden
158	Vivien	Basinger
159	Laura	Brody
160	Chris	Depp
161	Harvey	Hope
162	Oprah	Kilmer
163	Christopher	West
164	Humphrey	Willis
165	Al	Garland
166	Nick	Degeneres
167	Laurence	Bullock
168	Will	Wilson
169	Kenneth	Hoffman
170	Mena	Hopper
171	Olympia	Pfeiffer
172	Groucho	Williams
173	Alan	Dreyfuss
174	Michael	Bening
175	William	Hackman
176	Jon	Chase
177	Gene	Mckellen
178	Lisa	Monroe
179	Ed	Guiness
180	Jeff	Silverstone
181	Matthew	Carrey
182	Debbie	Akroyd
183	Russell	Close
184	Humphrey	Garland
185	Michael	Bolger
186	Julia	Zellweger
187	Renee	Ball
188	Rock	Dukakis
189	Cuba	Birch
190	Audrey	Bailey
191	Gregory	Gooding
192	John	Suvari
193	Burt	Temple
194	Meryl	Allen
195	Jayne	Silverstone
196	Bela	Walken
197	Reese	West
198	Mary	Keitel
199	Julia	Fawcett
200	Thora	Temple
\.

COPY public.categories (id, name) FROM stdin;
1	Action
2	Animation
3	Children
4	Classics
5	Comedy
6	Documentary
7	Drama
8	Family
9	Foreign
10	Games
11	Horror
12	Music
13	New
14	Sci-Fi
15	Sports
16	Travel
\.

COPY public.films (id, title, release_year, category_id, rating, prequel_id, sequel_id) FROM stdin;
85	Bonnie Holocaust	2004	6	5.63	\N	\N
102	Bubble Grosse	2001	15	5.90	\N	493
493	Kane Exorcist	2013	9	5.73	102	\N
160	Club Graffiti	2015	2	3.64	\N	591
591	Monsoon Cause	2017	10	4.37	160	565
565	Matrix Snowman	2012	9	5.56	591	\N
501	Kissing Dolls	2012	1	5.68	\N	965
965	Watership Frontier	2015	11	4.19	501	786
786	Shepherd Midsummer	2012	3	4.44	965	299
299	Factory Dragon	2001	16	4.59	786	974
974	Wild Apollo	2008	13	5.86	299	856
856	Streetcar Intentions	2004	11	4.87	974	320
320	Flamingos Connecticut	2014	13	4.34	856	124
124	Casper Dragonfly	2010	3	4.77	320	436
436	Hours Rage	2014	13	5.31	124	775
775	Seattle Expecations	2006	7	6.57	436	\N
395	Handicap Boondock	2001	1	5.70	\N	\N
335	Freedom Cleopatra	2014	5	6.67	\N	840
840	Stampede Disturbing	2009	10	5.94	335	427
427	Homeward Cider	2017	6	5.29	840	981
981	Wolves Desire	2009	16	6.79	427	781
781	Seven Swarm	2007	10	4.68	981	525
525	Loathing Legally	2015	4	4.31	781	\N
540	Lucky Flying	2011	12	3.56	\N	567
567	Meet Chocolate	2007	9	4.64	540	718
718	Rebel Airport	2003	12	6.15	567	\N
605	Mulholland Beast	2000	9	5.18	\N	865
865	Sunrise League	2013	2	4.44	605	721
721	Reds Pocus	2016	12	5.65	865	176
176	Congeniality Quest	2014	15	5.69	721	577
577	Mile Mulan	2004	15	4.99	176	233
233	Disciple Mother	2009	16	6.19	577	793
793	Shrunk Divine	2005	1	5.45	233	\N
114	Camelot Vacation	2014	14	3.78	\N	69
69	Beverly Outlaw	2012	14	5.35	114	589
589	Modern Dorado	2004	6	4.81	69	\N
624	Nightmare Chill	2004	10	3.92	\N	187
187	Cranes Reservoir	2008	15	4.48	624	\N
992	Wrath Mile	2011	6	6.11	\N	325
325	Floats Garden	2011	2	5.21	992	841
841	Star Operation	2004	15	4.77	325	679
679	Pilot Hoosiers	2001	8	5.18	841	\N
454	Impact Aladdin	2001	12	3.38	\N	23
23	Anaconda Confessions	2009	2	4.39	454	465
465	Interview Liaisons	2004	13	5.78	23	808
808	Sling Luke	2007	4	4.77	465	748
748	Rugrats Shakespeare	2006	1	5.07	808	10
10	Aladdin Calendar	2000	15	6.08	748	\N
340	Frontier Cabin	2006	13	4.78	\N	391
391	Half Outfield	2003	8	6.86	340	372
372	Graceland Dynamite	2008	15	3.32	391	584
584	Mixed Doors	2006	9	4.07	372	689
689	Pollock Deliverance	2015	9	5.99	584	659
659	Park Citizen	2000	1	3.32	689	101
101	Brotherhood Blanket	2009	6	3.70	659	\N
61	Beauty Grease	2013	7	4.90	\N	260
260	Dude Blindness	2014	15	6.41	61	503
503	Kramer Chocolate	2002	15	6.38	260	767
767	Scalawag Duck	2011	12	5.33	503	770
770	Scissorhands Slums	2016	9	6.48	767	993
993	Wrong Behavior	2013	3	4.58	770	210
210	Darko Dorado	2016	1	6.01	993	811
811	Smile Earring	2006	16	5.06	210	56
56	Barefoot Manchurian	2001	1	4.82	811	\N
939	Vertigo Northwest	2011	5	4.95	\N	352
352	Gathering Calendar	2002	10	5.53	939	\N
220	Deer Virginian	2008	12	4.72	\N	691
691	Poseidon Forever	2016	15	3.80	220	599
599	Mother Oleander	2004	15	4.59	691	698
698	Princess Giant	2013	6	4.86	599	422
422	Hollow Jeopardy	2010	14	4.29	698	\N
722	Reef Salute	2006	11	5.25	\N	\N
779	Sense Greek	2013	15	6.18	\N	\N
921	Uncut Suicides	2006	12	3.98	\N	\N
520	License Weekend	2012	14	5.31	\N	\N
399	Happiness United	2007	9	5.33	\N	\N
889	Ties Hunger	2017	3	5.28	\N	256
256	Drop Waterfront	2002	15	3.77	889	\N
386	Gump Date	2015	16	4.74	\N	152
152	Circus Youth	2009	3	5.28	386	147
147	Chocolat Harry	2011	8	6.07	152	\N
443	Hurricane Affair	2009	5	4.89	\N	\N
295	Expendable Stallion	2002	6	5.85	\N	\N
643	Orient Closer	2010	7	3.72	\N	824
824	Spartacus Cheaper	2013	8	5.19	643	\N
970	Westward Seabiscuit	2010	4	6.16	\N	\N
212	Darn Forrester	2008	1	4.89	\N	960
960	Wars Pluto	2001	6	7.25	212	355
355	Ghostbusters Elf	2008	2	5.74	960	\N
592	Monster Spartacus	2000	12	6.71	\N	82
82	Blood Argonauts	2014	8	3.40	592	595
595	Moon Bunch	2011	9	4.75	82	696
696	Pride Alamo	2011	2	5.56	595	505
505	Labyrinth League	2004	3	5.03	696	459
459	Informer Double	2012	9	4.70	505	527
527	Lola Agent	2017	11	5.30	459	952
952	Wagon Jaws	2003	6	2.69	527	607
607	Muppet Mile	2012	9	5.80	952	132
132	Chainsaw Uptown	2014	14	6.36	607	\N
247	Downhill Enough	2002	5	3.94	\N	4
4	Affair Prejudice	2002	11	5.57	247	\N
917	Tuxedo Mile	2005	15	6.20	\N	392
392	Hall Cassidy	2005	3	5.83	917	855
855	Streak Ridgemont	2000	6	4.15	392	879
879	Telegraph Voyage	2005	12	2.74	855	204
204	Dalmations Sweden	2008	7	3.47	879	144
144	Chinatown Gladiator	2009	13	3.70	204	857
857	Strictly Scarface	2014	5	5.63	144	\N
463	Instinct Airport	2015	15	5.05	\N	864
864	Sundance Invasion	2004	3	5.36	463	226
226	Destiny Saturday	2014	13	5.64	864	477
477	Jawbreaker Brooklyn	2017	12	4.16	226	323
323	Flight Lies	2011	15	5.58	477	\N
949	Volcano Texas	2015	10	4.32	\N	\N
958	Wardrobe Phantom	2011	7	5.54	\N	245
245	Double Wrath	2006	2	5.04	958	461
461	Insects Stone	2007	2	3.25	245	913
913	Troopers Metal	2008	13	4.93	461	110
110	Cabin Flash	2002	3	6.62	913	716
716	Reap Unfaithful	2006	11	4.44	110	35
35	Arachnophobia Rollercoaster	2006	11	5.02	716	950
950	Volume House	2002	4	4.89	35	172
172	Coneheads Smoochy	2010	7	4.19	950	742
742	Roof Champion	2005	10	5.35	172	\N
626	Noon Papi	2013	3	6.23	\N	421
421	Holiday Games	2001	9	5.84	626	585
585	Mob Duffel	2012	7	4.16	421	\N
895	Tomorrow Hustler	2011	4	5.27	\N	161
161	Clue Grail	2002	12	5.95	895	317
317	Fireball Philadelphia	2006	5	4.78	161	777
777	Secretary Rouge	2017	15	4.25	317	\N
750	Run Pacific	2009	13	4.44	\N	206
206	Dancing Fever	2017	6	4.38	750	467
467	Intrigue Worst	2011	9	4.22	206	\N
116	Candidate Perdition	2010	4	3.90	\N	\N
449	Identity Lover	2001	14	4.78	479	593
446	Hysterical Grail	2017	15	4.51	\N	196
196	Cruelty Unforgiven	2005	4	4.47	446	169
169	Comforts Rush	2005	16	2.94	196	700
700	Prix Undefeated	2017	8	5.01	169	883
883	Tequila Past	2014	3	6.41	700	784
784	Shanghai Tycoon	2002	16	4.18	883	\N
389	Gunfighter Mussolini	2011	15	6.07	672	\N
648	Outlaw Hanky	2007	16	7.07	\N	464
464	Intentions Empire	2009	2	3.09	648	430
430	Hook Chariots	2012	2	5.09	464	\N
429	Honey Ties	2011	15	4.24	\N	751
751	Runaway Tenenbaums	2009	13	5.16	429	136
136	Chaplin License	2017	13	5.03	751	\N
271	Easy Gladiator	2007	1	4.81	\N	\N
366	Goldfinger Sensibility	2002	7	4.35	\N	\N
156	Clerks Angels	2014	6	6.41	\N	\N
216	Day Unfaithful	2004	13	4.48	\N	652
652	Pajama Jawbreaker	2000	4	4.62	216	\N
93	Brannigan Sunrise	2007	13	4.34	\N	\N
594	Montezuma Command	2013	1	4.83	\N	780
780	Sensibility Rear	2016	8	5.07	594	157
157	Clockwork Paradise	2001	3	4.58	780	131
131	Center Dinosaur	2002	4	3.95	157	909
909	Treasure Command	2009	11	5.84	131	\N
925	United Pilot	2005	6	3.99	\N	495
495	Kentuckian Giant	2003	11	5.13	925	703
703	Punk Divorce	2000	2	4.45	495	809
21	American Circus	2017	1	5.42	809	218
218	Deceiver Betrayed	2017	7	4.50	21	29
29	Antitrust Tomatoes	2006	1	6.54	218	\N
711	Raging Airplane	2002	14	4.54	\N	\N
342	Fugitive Maguire	2007	16	4.22	\N	724
242	Doom Dancing	2011	5	6.18	724	208
208	Dares Pluto	2009	2	4.11	242	569
569	Menagerie Rushmore	2005	2	3.85	208	\N
68	Betrayed Rear	2016	3	5.33	\N	306
306	Feathers Metal	2012	10	4.18	68	638
638	Operation Operation	2002	5	4.83	306	887
887	Thief Pelican	2003	2	6.57	638	\N
863	Sun Confessions	2009	14	4.87	\N	602
602	Mourning Purple	2016	14	6.01	863	\N
314	Fight Jawbreaker	2016	2	4.59	\N	\N
332	Frankenstein Stranger	2010	5	5.81	\N	528
528	Lolita World	2000	8	4.32	332	\N
977	Window Side	2006	16	4.07	\N	813
813	Smoochy Control	2004	15	4.90	977	16
16	Alley Evolution	2014	9	5.04	813	\N
481	Jekyll Frogmen	2012	13	4.10	\N	\N
231	Dinosaur Secretary	2004	8	5.09	\N	250
250	Dragon Squad	2000	1	5.05	231	367
367	Goldmine Tycoon	2008	14	5.06	250	476
476	Jason Trap	2013	8	6.07	367	660
660	Party Knock	2000	5	3.81	476	986
986	Wonka Sea	2012	2	5.03	660	\N
606	Mummy Creatures	2007	15	3.64	\N	678
678	Pickup Driving	2012	15	5.14	606	\N
319	Fish Opus	2010	14	4.59	\N	699
699	Private Drop	2001	10	6.17	319	\N
303	Fantasy Troopers	2008	1	4.29	\N	344
344	Fury Murder	2017	3	4.03	303	\N
688	Polish Brooklyn	2008	3	6.46	\N	\N
170	Command Darling	2011	9	4.89	\N	239
239	Dogma Family	2004	2	5.83	170	\N
590	Money Harold	2015	13	4.81	\N	533
533	Lost Bird	2003	9	4.57	590	933
933	Vampire Whale	2013	13	6.51	533	\N
656	Papi Necklace	2003	16	5.28	\N	304
304	Fargo Gandhi	2016	3	4.48	656	\N
996	Young Language	2002	6	6.19	\N	\N
95	Breakfast Goldfinger	2012	13	4.79	\N	\N
868	Superfly Trip	2002	16	4.90	\N	311
311	Fiction Christmas	2015	9	3.75	868	919
919	Tycoon Gathering	2008	10	4.06	311	213
213	Date Speed	2009	8	5.40	919	681
681	Pirates Roxanne	2005	15	6.74	213	\N
871	Sweden Shining	2010	5	5.76	\N	\N
165	Coldblooded Darling	2012	14	3.78	\N	920
920	Unbreakable Karate	2013	13	4.34	165	\N
725	Requiem Tycoon	2017	4	4.47	\N	\N
301	Family Sweet	2005	11	4.14	\N	486
486	Jet Neighbors	2013	9	4.82	301	923
923	Unfaithful Kill	2016	7	5.08	486	460
460	Innocent Usual	2006	9	4.70	923	\N
838	Stagecoach Armageddon	2006	1	4.51	\N	\N
25	Angels Life	2003	13	5.08	\N	225
225	Destination Jerk	2006	7	5.39	25	876
876	Tarzan Videotape	2015	11	5.14	225	\N
544	Madison Trap	2017	6	4.73	\N	\N
705	Purple Movie	2007	9	3.39	\N	420
420	Holes Brannigan	2006	15	4.45	705	300
300	Falcon Volume	2017	2	4.30	420	\N
882	Tenenbaums Command	2001	7	5.17	\N	\N
261	Duffel Apocalypse	2004	6	4.09	\N	237
237	Divorce Shining	2003	15	5.54	261	675
675	Phantom Glory	2014	13	5.51	237	13
13	Ali Forever	2007	11	5.92	675	108
108	Butch Panther	2003	13	5.78	13	345
345	Gables Metropolis	2006	8	6.15	108	9
9	Alabama Devil	2007	11	5.13	345	999
999	Zoolander Fiction	2009	3	6.24	9	424
424	Holocaust Highball	2005	3	3.79	999	851
851	Straight Hours	2008	15	3.57	424	359
359	Gladiator Westward	2017	8	4.78	851	411
411	Heavenly Gun	2004	12	4.50	359	164
164	Coast Rainbow	2013	6	6.90	411	\N
419	Hocus Frida	2006	8	6.01	\N	\N
445	Hyde Doctor	2016	4	3.17	\N	120
120	Caribbean Liberty	2004	15	5.27	445	\N
104	Bugsy Song	2001	9	6.02	\N	455
455	Impossible Prejudice	2013	9	4.81	104	823
823	South Wait	2000	1	5.15	455	586
586	Mockingbird Hollywood	2014	1	5.57	823	787
787	Shining Roses	2016	16	4.31	586	282
282	Encounters Curtain	2015	7	4.72	787	343
343	Full Flatliners	2008	3	3.49	282	84
84	Boiled Dares	2011	16	4.97	343	529
529	Lonely Elephant	2015	5	4.98	84	833
833	Splendor Patton	2011	3	4.19	529	\N
772	Sea Virgin	2004	7	4.28	\N	664
664	Patriot Roman	2011	1	6.39	772	539
539	Luck Opus	2016	7	4.83	664	\N
846	Sting Personal	2006	13	3.00	\N	22
22	Amistad Midsummer	2000	13	6.71	846	570
570	Mermaid Insects	2009	15	4.78	22	7
7	Airplane Sierra	2015	5	5.59	570	27
27	Anonymous Human	2015	15	5.17	7	403
403	Harry Idaho	2005	7	4.55	27	397
397	Hanky October	2016	14	4.92	403	687
687	Pocus Pulp	2000	6	5.07	397	621
621	Network Peak	2000	8	3.75	687	232
232	Dirty Ace	2017	10	4.84	621	\N
773	Seabiscuit Punk	2005	15	4.42	\N	488
488	Joon Northwest	2000	15	4.60	773	673
673	Personal Ladybugs	2016	12	3.81	488	\N
506	Lady Stage	2014	11	5.79	\N	837
837	Stage World	2001	5	4.32	506	759
759	Salute Apollo	2000	13	4.73	837	512
512	League Hellfighters	2017	4	5.84	759	765
765	Saturn Name	2012	5	5.39	512	803
803	Slacker Liaisons	2015	7	5.48	765	184
184	Core Suit	2015	4	5.59	803	504
504	Kwai Homeward	2004	7	4.72	184	807
807	Sleuth Orient	2013	10	6.17	504	738
738	Rocketeer Mother	2007	9	5.29	807	766
766	Savannah Town	2013	7	5.13	738	\N
901	Tracy Cider	2008	2	6.23	\N	\N
15	Alien Center	2010	9	5.01	\N	191
191	Crooked Frogmen	2001	3	4.14	15	964
964	Waterfront Deliverance	2013	1	4.86	191	\N
364	Godfather Diary	2006	13	4.33	\N	494
494	Karate Moon	2010	11	5.51	364	\N
802	Sky Miracle	2006	1	3.53	\N	221
221	Deliverance Mulholland	2008	6	2.82	802	511
511	Lawrence Love	2005	1	4.76	221	133
133	Chamber Italian	2001	12	3.30	511	854
854	Strangers Graffiti	2013	11	4.40	133	62
40	Army Flintstones	2004	6	4.83	62	954
954	Wake Jaws	2011	13	4.69	40	241
241	Donnie Alley	2002	2	5.90	954	518
518	Liaisons Sweet	2003	16	5.18	241	\N
458	Indian Love	2000	8	6.45	\N	988
988	Worker Tarzan	2002	16	5.42	458	482
482	Jeopardy Encino	2015	4	4.77	988	\N
39	Armageddon Lost	2017	14	5.42	\N	978
978	Wisdom Worker	2002	5	4.19	39	428
428	Homicide Peach	2004	8	5.24	978	884
884	Terminator Club	2013	12	4.16	428	\N
613	Mystic Truman	2009	5	4.69	\N	639
639	Opposite Necklace	2002	8	6.06	613	\N
64	Beethoven Exorcist	2002	7	4.55	\N	989
953	Wait Cider	2010	2	4.45	\N	619
619	Neighbors Charade	2013	15	5.04	953	\N
902	Trading Pinocchio	2010	15	4.52	\N	\N
651	Packer Madigan	2009	2	4.81	\N	135
135	Chance Resurrection	2016	15	5.24	651	979
979	Witches Panic	2014	7	7.25	135	\N
407	Hawk Chill	2016	6	5.55	\N	201
201	Cyclone Family	2010	9	6.84	407	134
134	Champion Flatliners	2009	2	6.56	201	457
457	Independence Hotel	2001	6	3.60	134	\N
938	Velvet Terminator	2012	5	4.88	\N	843
843	Steel Santa	2009	4	4.44	938	745
745	Roses Treasure	2004	15	4.85	843	778
778	Secrets Paradise	2013	8	4.56	745	\N
109	Butterfly Chocolat	2001	13	4.88	\N	646
646	Outbreak Divine	2011	10	4.31	109	663
663	Patient Sister	2017	4	5.79	646	\N
541	Luke Mummy	2009	2	2.32	\N	\N
358	Gilmore Boiled	2007	4	5.76	\N	46
46	Autumn Crow	2000	10	5.34	358	\N
665	Patton Interview	2010	11	4.43	\N	888
888	Thin Sagebrush	2015	6	5.73	665	315
315	Finding Anaconda	2003	8	2.61	888	\N
922	Undefeated Dalmations	2014	11	4.95	\N	285
285	English Bulworth	2004	14	4.19	922	199
199	Cupboard Sinners	2013	6	4.87	285	431
431	Hoosiers Birdcage	2002	9	4.97	199	\N
682	Pittsburgh Hunchback	2007	8	5.79	\N	361
361	Gleaming Jawbreaker	2012	15	5.57	682	623
623	Newton Labyrinth	2007	9	5.79	361	\N
644	Oscar Gold	2010	2	5.16	\N	\N
253	Drifter Commandments	2005	1	4.46	\N	\N
723	Reign Gentlemen	2017	14	3.53	\N	203
203	Daisy Menagerie	2006	14	4.89	723	\N
112	Calendar Gunfight	2000	9	6.13	\N	\N
129	Cause Date	2000	6	6.00	\N	243
243	Doors President	2002	2	5.25	129	\N
153	Citizen Shrek	2013	14	4.45	\N	645
645	Others Soup	2012	16	4.72	153	596
596	Moonshine Cabin	2012	10	4.79	645	34
34	Arabia Dogma	2003	11	5.40	596	266
266	Dynamite Tarzan	2015	4	5.04	34	122
122	Carrie Bunch	2015	11	5.52	266	971
971	Whale Bikini	2013	9	5.94	122	947
195	Crowds Telemark	2016	14	6.65	947	291
291	Evolution Alter	2000	15	5.56	195	254
549	Magnolia Forrester	2007	1	4.92	\N	893
893	Titans Jerk	2007	14	5.24	549	627
947	Vision Torque	2003	9	4.86	971	195
627	North Tequila	2002	6	5.02	893	17
17	Alone Trip	2010	12	5.33	627	886
886	Theory Mermaid	2013	2	4.25	17	636
636	Oleander Clue	2010	12	6.42	886	997
997	Youth Kick	2003	12	4.83	636	694
694	Prejudice Oleander	2003	4	6.23	997	816
816	Snowman Rollercoaster	2000	2	5.85	694	944
944	Virgin Daisy	2011	7	5.10	816	76
338	Frisco Forrest	2014	14	4.82	76	\N
94	Braveheart Human	2009	8	3.11	\N	557
535	Love Suicides	2008	11	4.97	557	984
984	Wonderful Drop	2015	9	5.18	535	281
281	Encino Elf	2001	10	6.40	984	468
468	Invasion Cyclone	2013	3	4.76	281	\N
848	Stone Fire	2009	16	5.23	\N	600
600	Motions Details	2004	11	5.95	848	405
405	Haunted Antitrust	2017	16	5.86	600	829
829	Spinal Rocky	2013	8	5.34	405	33
33	Apollo Teen	2003	7	5.33	829	671
671	Perdition Fargo	2001	15	5.28	33	\N
931	Valentine Vanishing	2000	16	4.43	\N	635
635	Oklahoma Jumanji	2003	13	6.04	931	568
568	Memento Zoolander	2017	5	6.98	635	739
739	Rocky War	2013	7	4.49	568	\N
564	Massage Image	2012	2	4.02	\N	\N
385	Groundhog Uncut	2016	5	5.69	\N	697
697	Primary Glass	2017	1	4.66	385	437
437	House Dynamite	2007	8	3.27	697	\N
151	Cincinatti Whisperer	2006	14	5.97	\N	2
2	Ace Goldfinger	2006	11	2.88	151	474
474	Jade Bunch	2000	15	4.40	2	209
209	Darkness War	2010	7	5.47	474	298
298	Eyes Driving	2008	14	4.20	209	149
149	Christmas Moonshine	2005	3	4.34	298	\N
379	Greedy Roots	2008	7	5.55	\N	881
881	Temple Attraction	2014	11	4.92	379	36
36	Argonauts Town	2006	2	4.47	881	552
552	Majestic Floats	2012	6	4.00	36	99
99	Bringing Hysterical	2002	5	3.30	552	903
903	Traffic Hobbit	2011	16	4.79	99	994
994	Wyoming Storm	2006	13	3.57	903	630
630	Notting Speakeasy	2010	7	4.96	994	801
801	Sister Freddy	2013	3	5.62	630	\N
90	Boulevard Mob	2012	13	6.20	\N	341
341	Frost Head	2011	4	5.01	90	532
532	Loser Hustler	2017	15	4.48	341	\N
980	Wizard Coldblooded	2012	12	6.57	\N	\N
934	Vanilla Day	2014	10	5.30	\N	45
45	Attraction Newton	2000	13	5.55	934	962
962	Wasteland Divine	2009	4	3.74	45	885
885	Texas Watch	2006	11	4.92	962	542
542	Lust Lock	2006	1	4.45	885	211
211	Darling Breaking	2015	10	5.41	542	\N
990	World Leathernecks	2008	11	6.56	\N	905
905	Trainspotting Strangers	2008	5	4.66	990	387
387	Gun Bonnie	2014	10	2.96	905	676
676	Philadelphia Wife	2010	15	4.93	387	20
20	Amelie Hellfighters	2016	12	6.07	676	83
83	Blues Instinct	2002	8	4.52	20	\N
744	Roots Remember	2009	4	5.16	\N	\N
597	Moonwalker Fool	2004	10	5.20	\N	560
560	Mars Roman	2016	10	3.18	597	44
44	Attacks Hate	2017	14	5.80	560	576
576	Mighty Luck	2003	6	4.87	44	\N
155	Cleopatra Devil	2013	13	5.10	\N	975
975	Willow Tracy	2000	8	4.66	155	130
130	Celebrity Horn	2008	1	5.35	975	692
976	Wind Phantom	2014	10	4.86	985	\N
729	Rider Caddyshack	2010	15	5.33	\N	815
815	Snatchers Montezuma	2011	4	4.69	729	263
263	Durham Panky	2004	15	5.16	815	88
88	Born Spinal	2010	16	4.54	263	\N
514	Lebowski Soldiers	2009	7	6.12	\N	\N
955	Walls Artist	2012	3	6.62	\N	945
945	Virginian Pluto	2011	6	4.99	955	\N
376	Grapes Fury	2008	9	5.93	\N	963
963	Watch Tracy	2006	2	4.32	376	8
8	Airport Pollock	2002	11	5.60	963	28
536	Lovely Jingle	2006	4	2.96	\N	\N
230	Diary Panic	2007	7	5.58	\N	637
637	Open African	2011	14	4.49	230	308
308	Ferris Mother	2007	5	4.24	637	\N
686	Pluto Oleander	2005	13	4.29	\N	462
42	Artist Coldblooded	2013	15	3.90	462	375
375	Grail Frankenstein	2012	1	2.96	42	349
349	Gangs Pride	2006	2	3.98	375	534
534	Louisiana Harry	2015	8	5.65	349	\N
197	Crusade Honey	2010	15	5.65	\N	\N
400	Hardly Robbers	2017	6	6.31	\N	186
186	Craft Outfield	2009	7	4.93	400	795
795	Siege Madre	2004	8	5.32	186	\N
640	Opus Ice	2008	9	5.12	\N	171
171	Commandments Express	2016	11	6.00	640	800
800	Sinners Atlantis	2002	11	5.22	171	370
526	Lock Rear	2015	16	4.94	370	\N
736	Robbery Bright	2000	8	5.13	\N	80
80	Blanket Beverly	2000	8	7.16	736	255
255	Driving Polish	2013	12	6.52	80	\N
852	Strangelove Desire	2016	3	5.50	\N	175
175	Confused Candles	2005	8	4.61	852	912
912	Trojan Tomorrow	2005	14	3.90	175	788
788	Ship Wonderland	2016	6	4.39	912	478
478	Jaws Harry	2003	5	5.12	788	519
519	Liberty Magnificent	2015	15	4.24	478	709
709	Racer Egg	2006	7	5.59	519	\N
916	Turn Star	2007	2	4.57	\N	834
834	Spoilers Hellfighters	2002	6	4.80	916	763
763	Satisfaction Confidential	2006	15	5.37	834	126
126	Casualties Encino	2015	1	2.96	763	556
556	Maltese Hope	2003	10	4.88	126	798
798	Silverado Goldfinger	2002	14	6.44	556	995
995	Yentl Idaho	2006	11	3.75	798	353
353	Gentlemen Stage	2000	9	4.98	995	283
283	Ending Crowds	2009	13	4.00	353	\N
24	Analyze Hoosiers	2007	11	5.61	\N	647
647	Outfield Massacre	2006	12	5.84	24	\N
737	Rock Instinct	2014	11	4.69	\N	\N
810	Slums Duck	2011	8	5.63	\N	142
142	Chicken Hellfighters	2002	6	4.00	810	641
641	Orange Grapes	2010	9	4.94	142	998
52	Ballroom Mockingbird	2011	9	5.32	998	491
491	Jumping Wrath	2012	3	4.66	52	\N
508	Lambs Cincinatti	2003	10	6.24	\N	\N
382	Grit Clockwork	2008	10	4.75	\N	715
715	Range Moonwalker	2000	8	5.89	382	914
914	Trouble Date	2000	16	5.95	715	\N
321	Flash Wars	2009	13	4.41	\N	456
456	Inch Jet	2010	2	6.59	321	\N
662	Paths Control	2001	7	4.53	502	452
452	Illusion Amelie	2004	9	5.72	662	\N
734	Road Roxanne	2011	6	4.00	\N	735
735	Robbers Joon	2007	3	4.90	734	67
67	Berets Agent	2006	1	5.30	735	\N
756	Saddle Antitrust	2013	5	6.76	\N	362
362	Glory Tracy	2008	10	4.99	756	65
65	Behavior Runaway	2014	11	4.12	362	790
790	Shootist Superfly	2002	7	4.72	65	\N
866	Sunset Racer	2016	8	6.79	\N	447
447	Ice Crossing	2006	10	4.64	866	103
103	Bucket Brotherhood	2000	16	3.99	447	141
141	Chicago North	2006	10	5.18	103	26
26	Annie Identity	2003	14	4.39	141	\N
684	Pizza Jumanji	2012	10	4.08	\N	826
826	Speed Suit	2017	16	5.20	684	632
632	Nuts Ties	2013	13	4.27	826	\N
92	Bowfinger Gables	2000	11	4.13	\N	278
278	Elf Murder	2009	12	6.13	92	\N
727	Resurrection Silverado	2001	8	5.15	\N	546
546	Madre Gables	2005	10	4.15	727	873
873	Sweethearts Suspects	2011	3	4.94	546	\N
305	Fatal Haunted	2003	13	4.98	\N	111
111	Caddyshack Jedi	2006	1	6.03	305	312
312	Fiddler Lost	2012	14	3.03	111	398
398	Hanover Galaxy	2003	12	3.01	312	192
192	Crossing Divorce	2017	9	4.73	398	574
574	Midnight Westward	2004	1	4.94	192	598
598	Mosquito Armageddon	2005	15	6.30	574	516
516	Legend Jedi	2016	12	7.15	598	328
328	Forever Candidate	2017	3	4.62	516	288
557	Manchurian Curtain	2007	8	3.56	94	535
288	Escape Metropolis	2013	16	5.92	328	758
758	Saints Bride	2017	7	5.16	288	163
163	Clyde Theory	2001	13	6.00	758	475
475	Japanese Run	2012	11	4.52	163	125
125	Cassidy Wyoming	2002	16	5.73	475	982
982	Women Dorado	2000	1	3.56	125	\N
72	Bill Others	2009	6	4.94	\N	\N
310	Fever Empire	2011	10	4.18	\N	264
264	Dwarfs Alter	2012	10	5.24	310	\N
276	Element Freddy	2012	5	4.30	\N	188
188	Crazy Home	2014	5	4.61	276	193
193	Crossroads Casualties	2015	2	4.90	188	\N
53	Bang Kwai	2010	8	6.35	\N	608
608	Murder Antitrust	2002	3	7.60	53	\N
612	Mussolini Spoilers	2002	15	5.17	\N	235
235	Divide Monster	2004	14	4.85	612	\N
822	Soup Wisdom	2012	8	4.66	\N	11
11	Alamo Videotape	2016	9	3.04	822	877
877	Taxi Kick	2013	12	5.23	11	587
587	Mod Secretary	2005	6	4.41	877	880
880	Telemark Heartbreakers	2005	2	5.56	587	\N
523	Lights Deer	2012	4	5.72	\N	18
18	Alter Victory	2016	2	7.38	523	\N
313	Fidelity Devil	2012	11	4.07	\N	820
820	Sons Interview	2000	2	5.07	313	\N
752	Runner Madigan	2011	12	5.23	\N	\N
581	Minority Kiss	2006	12	5.47	\N	\N
685	Platoon Instinct	2007	13	6.65	\N	\N
238	Doctor Grail	2012	3	5.86	\N	\N
806	Sleepy Japanese	2017	13	6.21	\N	444
444	Hustler Party	2004	5	5.55	806	\N
127	Cat Coneheads	2003	5	4.66	\N	\N
858	Submarine Bed	2012	5	4.73	\N	899
899	Towers Hurricane	2000	4	5.65	858	\N
138	Chariots Conspiracy	2010	14	4.20	\N	137
137	Charade Duffel	2016	14	3.75	138	726
726	Reservoir Adaptation	2009	9	5.06	137	484
484	Jerk Paycheck	2006	4	4.09	726	330
330	Forrester Comancheros	2012	2	4.52	484	173
173	Confessions Maguire	2014	7	5.04	330	228
228	Detective Vision	2002	4	5.98	173	968
968	Werewolf Lola	2012	1	5.52	228	755
755	Sabrina Midnight	2009	3	4.68	968	\N
107	Bunch Minds	2006	7	4.16	\N	54
54	Banger Pinocchio	2015	12	3.72	107	5
5	African Egg	2008	8	5.86	54	73
73	Bingo Talented	2013	14	3.90	5	384
384	Grosse Wonderful	2011	12	4.50	73	559
559	Married Go	2013	14	5.04	384	\N
47	Baby Hall	2004	9	3.92	\N	215
215	Dawn Pond	2016	10	4.20	47	66
66	Beneath Rush	2013	3	4.58	215	350
350	Garden Island	2002	14	3.22	66	89
89	Borrowers Bedazzled	2013	2	4.69	350	\N
259	Duck Racer	2007	2	5.65	\N	12
12	Alaska Phantom	2006	12	5.13	259	\N
891	Timberland Sky	2009	4	5.58	\N	936
936	Vanishing Rocky	2002	12	5.72	891	983
983	Won Dares	2014	12	4.06	936	\N
530	Lord Arizona	2015	1	3.87	\N	\N
417	Hills Neighbors	2013	1	5.68	\N	404
404	Hate Handicap	2001	5	4.01	417	842
842	State Wasteland	2012	10	5.96	404	\N
789	Shock Cabin	2015	9	4.20	\N	906
906	Tramp Others	2014	5	5.09	789	966
966	Wedding Apollo	2015	6	4.31	906	357
357	Gilbert Pelican	2016	4	5.75	966	202
202	Daddy Pittsburgh	2004	5	4.82	357	\N
273	Effect Gladiator	2017	8	7.78	\N	469
469	Iron Moon	2004	4	4.81	273	804
804	Sleeping Suspects	2000	11	4.80	469	558
558	Mannequin Worst	2002	13	5.72	804	874
874	Tadpole Park	2017	4	4.65	558	571
571	Metal Armageddon	2014	6	4.69	874	\N
642	Order Betrayed	2016	16	5.37	\N	\N
799	Simon North	2005	11	4.55	\N	872
872	Sweet Brotherhood	2000	16	4.97	799	719
719	Records Zorro	2009	15	3.94	872	\N
818	Something Duck	2004	7	5.72	\N	862
862	Summer Scarface	2016	4	6.00	818	524
524	Lion Uncut	2017	5	5.27	862	59
59	Bear Graceland	2011	3	3.25	524	764
764	Saturday Lambs	2011	15	4.82	59	268
268	Early Home	2000	2	5.53	764	\N
967	Weekend Personal	2001	14	5.37	\N	\N
402	Harper Dying	2011	2	4.89	\N	821
821	Sorority Queen	2016	9	5.22	402	425
425	Holy Tadpole	2014	4	6.50	821	\N
762	Sassy Packer	2011	10	4.88	\N	972
972	Whisperer Giant	2001	14	5.93	762	830
830	Spirit Flintstones	2003	11	3.65	972	\N
322	Flatliners Killer	2016	15	5.74	\N	\N
267	Eagles Panky	2009	13	3.23	\N	948
948	Voice Peach	2010	13	4.95	267	615
615	Nash Chocolat	2004	2	3.98	948	214
214	Daughter Madigan	2012	3	6.58	615	860
860	Suicides Silence	2002	14	5.96	214	\N
859	Sugar Wonka	2013	2	5.02	\N	\N
941	Videotape Arsenic	2002	10	4.27	\N	927
927	Uprising Uptown	2000	1	3.80	941	712
712	Raiders Antitrust	2007	6	5.83	927	327
327	Fool Mockingbird	2005	1	5.49	712	\N
115	Campus Remember	2005	1	2.80	\N	940
940	Victory Academy	2000	15	6.66	115	234
234	Disturbing Scarface	2002	14	6.76	940	\N
326	Flying Hook	2005	2	4.90	\N	492
492	Jungle Closer	2010	13	5.01	326	412
412	Heavyweights Beast	2011	6	4.33	492	\N
333	Freaky Pocus	2010	12	4.77	\N	690
690	Pond Seattle	2015	2	3.72	333	603
603	Movie Shakespeare	2005	8	6.19	690	732
732	Rings Heartbreakers	2010	1	5.37	603	\N
746	Rouge Squad	2012	10	4.97	\N	415
415	High Encino	2003	11	3.93	746	946
946	Virtual Spoilers	2014	8	5.09	415	63
63	Bedazzled Married	2002	8	3.62	946	\N
408	Head Stranger	2006	10	3.86	\N	\N
768	Scarface Bang	2001	3	5.76	\N	720
720	Redemption Comforts	2000	13	3.89	768	561
561	Mask Peach	2010	13	5.26	720	\N
728	Reunion Witches	2007	7	6.13	\N	601
601	Moulin Wake	2012	16	6.34	728	713
713	Rainbow Shock	2006	6	3.82	601	628
628	Northwest Polish	2007	15	5.63	713	832
832	Splash Gump	2006	8	6.43	628	\N
961	Wash Heavenly	2007	9	6.11	\N	817
817	Soldiers Evolution	2004	14	6.12	961	337
337	Frida Slipper	2004	9	6.09	817	143
143	Chill Luck	2014	7	6.00	337	515
515	Legally Secretary	2010	3	4.48	143	\N
935	Vanished Garden	2013	13	6.33	\N	579
579	Minds Truman	2004	1	6.20	935	677
677	Pianist Outfield	2003	13	6.22	579	\N
240	Dolls Rage	2001	14	6.02	\N	769
769	School Jacket	2013	9	4.66	240	835
835	Spy Mile	2010	10	5.32	769	609
609	Muscle Bright	2016	16	6.13	835	531
531	Lose Inch	2003	9	4.90	609	393
393	Halloween Nuts	2017	6	6.17	531	435
435	Hotel Happiness	2011	9	3.73	393	55
55	Barbarella Streetcar	2011	14	4.52	435	\N
223	Desire Alien	2010	2	4.32	\N	991
991	Worst Banger	2003	1	5.74	223	258
258	Drums Dynamite	2017	11	4.54	991	\N
331	Forward Temple	2013	10	5.93	\N	\N
277	Elephant Trojan	2011	11	3.86	\N	286
286	Enough Raging	2017	16	6.79	277	470
470	Ishtar Rocketeer	2016	2	5.41	286	924
924	Unforgiven Zoolander	2012	14	3.78	470	\N
414	Hellfighters Sierra	2008	9	4.64	\N	\N
324	Flintstones Happiness	2010	5	5.06	\N	334
334	Freddy Storm	2005	11	4.86	324	\N
219	Deep Crusade	2009	6	6.22	\N	\N
898	Tourist Pelican	2014	15	4.19	\N	406
406	Haunting Pianist	2012	10	5.20	898	14
14	Alice Fantasia	2006	4	5.65	406	\N
453	Image Princess	2014	15	5.31	\N	814
814	Snatch Slipper	2007	5	4.63	453	796
796	Sierra Divide	2012	15	4.89	814	413
413	Hedwig Alter	2013	5	4.73	796	432
432	Hope Tootsie	2000	4	3.62	413	148
97	Bride Intrigue	2007	1	5.53	\N	\N
148	Chocolate Duck	2010	9	3.22	432	\N
252	Dream Pickup	2005	1	5.58	\N	472
472	Italian African	2007	16	5.68	252	\N
760	Samurai Lion	2008	13	5.84	\N	616
616	National Story	2012	6	5.19	760	\N
292	Excitement Eve	2015	1	5.42	\N	272
272	Edge Kissing	2008	7	4.60	292	554
554	Malkovich Pet	2006	4	4.79	272	318
318	Firehouse Vietnam	2016	1	4.73	554	451
451	Igby Maker	2017	16	7.69	318	566
566	Maude Mod	2007	9	4.90	451	929
929	Usual Untouchables	2004	9	4.96	566	\N
661	Past Suicides	2007	9	5.51	\N	548
548	Magnificent Chitty	2000	4	3.75	661	236
236	Divine Resurrection	2014	10	5.62	548	749
749	Rules Human	2008	11	4.80	236	782
782	Shakespeare Saddle	2014	15	4.34	749	70
70	Bikini Borrowers	2014	2	5.09	782	\N
360	Glass Dying	2006	1	3.81	\N	198
198	Crystal Breaking	2000	9	4.73	360	57
57	Basic Easy	2014	16	5.65	198	1
1	Academy Dinosaur	2010	6	5.18	57	49
49	Badman Dawn	2014	14	5.71	1	\N
373	Graduate Lord	2010	3	5.39	\N	\N
274	Egg Igby	2007	6	4.34	\N	\N
118	Canyon Stock	2013	2	5.08	\N	329
329	Forrest Sons	2009	1	5.12	118	743
743	Room Roman	2009	2	5.49	329	\N
78	Blackout Private	2000	2	4.26	\N	\N
87	Boondock Ballroom	2007	16	4.93	\N	177
177	Connecticut Tramp	2000	14	6.07	87	\N
578	Million Ace	2000	4	5.54	\N	98
98	Bright Encounters	2007	7	5.53	578	730
730	Ridgemont Submarine	2013	13	5.84	98	441
441	Hunter Alter	2013	6	3.50	730	442
442	Hunting Musketeers	2009	8	5.65	441	37
37	Arizona Bang	2006	4	6.46	442	\N
139	Chasing Fight	2016	8	5.96	\N	757
757	Sagebrush Clueless	2002	6	5.19	139	471
471	Island Exorcist	2011	4	7.38	757	\N
634	Odds Boogie	2006	8	4.68	\N	\N
604	Mulan Moon	2010	5	3.50	\N	\N
280	Empire Malkovich	2004	3	4.85	\N	381
381	Grinch Massage	2011	10	5.37	280	622
622	Newsies Story	2008	6	5.99	381	483
483	Jericho Mulan	2004	10	4.44	622	932
932	Valley Packer	2000	5	3.84	483	714
714	Random Go	2003	14	4.43	932	289
289	Eve Resurrection	2015	13	4.42	714	374
374	Graffiti Love	2006	14	6.13	289	\N
575	Midsummer Groundhog	2005	6	3.71	\N	371
371	Gosford Donnie	2004	1	4.91	575	987
517	Lesson Cleopatra	2000	15	5.52	987	296
296	Express Lonely	2001	14	5.61	517	\N
423	Hollywood Anonymous	2005	3	4.32	\N	\N
43	Atlantis Cause	2004	8	6.55	\N	\N
380	Greek Everyone	2010	9	5.78	\N	\N
262	Dumbo Lust	2015	8	5.18	\N	704
704	Pure Runner	2005	5	5.76	262	897
897	Torque Bound	2017	7	4.78	704	812
812	Smoking Barbarella	2017	6	3.87	897	81
81	Blindness Gun	2009	14	4.68	812	31
31	Apache Divine	2005	8	6.54	81	890
890	Tights Dawn	2003	15	4.61	31	572
572	Metropolis Coma	2008	14	3.97	890	\N
562	Masked Bubble	2014	12	4.45	\N	792
792	Shrek License	2013	9	4.85	562	507
507	Ladybugs Armageddon	2003	10	6.97	792	\N
500	Kiss Glory	2012	9	4.34	\N	\N
620	Nemo Campus	2002	14	5.33	\N	\N
60	Beast Hunchback	2013	4	5.38	\N	\N
365	Gold River	2005	5	4.32	\N	\N
545	Madness Attacks	2002	9	4.86	\N	\N
957	War Notting	2001	9	3.67	\N	861
861	Suit Walls	2003	10	6.21	957	\N
140	Cheaper Clyde	2010	14	3.52	\N	79
79	Blade Polish	2009	7	5.68	140	\N
378	Greatest North	2001	12	4.44	\N	316
316	Fire Wolves	2006	10	4.37	378	38
38	Ark Ridgemont	2012	1	4.21	316	959
959	Warlock Werewolf	2010	3	5.66	38	\N
287	Entrapment Satisfaction	2017	1	3.33	\N	\N
610	Music Boondock	2004	8	6.74	\N	485
485	Jersey Sassy	2014	3	4.77	610	543
543	Madigan Dorado	2005	16	4.97	485	265
265	Dying Maker	2017	5	5.10	543	426
426	Home Pity	2010	12	3.70	265	\N
509	Language Cowboy	2011	3	4.44	\N	297
297	Extraordinary Conquerer	2009	4	5.12	509	869
869	Suspects Quills	2011	1	5.10	297	189
189	Creatures Shakespeare	2010	10	5.15	869	\N
973	Wife Turn	2005	6	5.74	\N	918
918	Twisted Pirates	2015	3	5.03	973	\N
336	French Holiday	2005	6	5.05	\N	178
178	Connection Microcosmos	2014	5	4.18	336	\N
867	Super Wyoming	2016	8	4.35	\N	658
658	Paris Weekend	2005	11	4.87	867	194
194	Crow Grease	2002	1	4.32	658	438
438	Human Graffiti	2008	10	4.78	194	731
731	Right Cranes	2014	4	5.25	438	244
244	Dorado Notting	2000	12	5.19	731	275
275	Egypt Tenenbaums	2007	11	5.68	244	555
555	Mallrats United	2006	5	4.74	275	907
907	Translation Summer	2004	7	4.48	555	246
246	Doubtfire Labyrinth	2013	9	4.13	907	753
753	Rush Goodfellas	2003	8	4.30	246	\N
942	Vietnam Smoochy	2015	7	5.43	\N	433
433	Horn Working	2014	2	3.51	942	180
180	Conspiracy Spirit	2013	4	7.09	433	513
513	Leathernecks Dwarfs	2014	16	4.92	180	\N
774	Searchers Wait	2017	5	5.18	\N	222
77	Birds Perdition	2013	13	3.83	222	480
480	Jeepers Wedding	2000	4	4.72	77	\N
657	Paradise Sabrina	2004	5	5.55	\N	\N
926	Untouchables Sunrise	2007	6	6.22	\N	\N
614	Name Detective	2014	10	5.70	\N	\N
86	Boogie Amelie	2017	12	4.57	\N	\N
551	Maiden Home	2007	13	5.29	\N	158
158	Clones Pinocchio	2010	12	5.19	551	119
119	Caper Motions	2004	5	5.37	158	368
368	Gone Trouble	2006	7	5.99	119	\N
740	Rollercoaster Bringing	2010	11	5.49	\N	3
3	Adaptation Holes	2014	6	4.74	740	825
825	Speakeasy Date	2001	1	5.28	3	717
717	Rear Trading	2015	1	6.44	825	930
930	Vacation Boondock	2001	14	5.96	717	179
179	Conquerer Nuts	2016	7	4.34	930	229
229	Devil Desire	2009	1	3.90	179	674
674	Pet Haunting	2010	9	4.44	229	\N
701	Psycho Shrunk	2003	10	4.86	\N	582
582	Miracle Virtual	2001	2	5.07	701	629
629	Notorious Reunion	2002	6	5.42	582	776
776	Secret Groundhog	2017	6	5.06	629	489
489	Juggler Hardly	2007	2	4.32	776	377
434	Horror Reign	2001	16	3.30	\N	\N
377	Grease Youth	2011	8	3.72	489	937
937	Varsity Trip	2002	13	4.73	377	48
48	Backlash Undefeated	2009	3	5.01	937	217
754	Rushmore Mermaid	2015	5	5.15	\N	\N
217	Dazed Punk	2005	10	4.63	48	\N
309	Feud Frogmen	2004	8	4.94	\N	\N
819	Song Hedwig	2003	12	5.33	\N	845
845	Stepmom Dream	2007	9	5.34	819	\N
91	Bound Cheaper	2010	4	4.72	\N	\N
205	Dances None	2016	1	5.11	\N	617
617	Natural Stock	2004	8	5.07	205	174
174	Confidential Interview	2016	12	6.54	617	836
836	Squad Fish	2006	15	5.08	174	498
498	Killer Innocent	2006	8	4.66	836	279
279	Elizabeth Shane	2010	15	4.03	498	706
706	Queen Luke	2014	7	4.70	279	41
41	Arsenic Independence	2005	16	3.72	706	\N
791	Show Lord	2016	6	7.41	\N	847
847	Stock Glass	2009	13	4.59	791	667
667	Peach Innocent	2007	15	4.42	847	695
695	President Bang	2011	8	5.27	667	270
270	Earth Vision	2002	13	5.39	695	894
894	Tomatoes Hellfighters	2001	16	4.85	270	583
583	Mission Zoolander	2016	2	4.78	894	128
128	Catch Amistad	2007	9	4.35	583	707
707	Quest Mussolini	2016	1	4.45	128	32
32	Apocalypse Flamingos	2015	13	5.52	707	951
951	Voyage Legally	2016	4	4.29	32	\N
207	Dangerous Uptown	2017	9	6.11	\N	563
563	Massacre Usual	2004	10	5.09	207	\N
915	Truman Crazy	2008	1	6.33	\N	74
74	Birch Antitrust	2007	12	6.10	915	499
499	King Evolution	2015	8	4.96	74	106
106	Bulworth Commandments	2004	10	2.68	499	117
117	Candles Grapes	2014	10	4.98	106	\N
611	Musketeers Wait	2005	4	5.95	\N	783
783	Shane Darkness	2010	16	5.29	611	794
794	Side Ark	2014	1	6.04	783	190
190	Creepers Kane	2002	4	5.16	794	150
150	Cider Desire	2015	6	4.73	190	631
631	Novocaine Flight	2000	15	3.48	150	\N
257	Drumline Cyclone	2005	16	3.73	\N	100
100	Brooklyn Desert	2005	9	6.08	257	761
761	Santa Paris	2004	3	5.73	100	710
710	Rage Games	2012	8	5.66	761	168
168	Comancheros Enemy	2012	3	5.46	710	19
19	Amadeus Holy	2013	1	7.19	168	747
747	Roxanne Rebel	2001	10	4.82	19	51
51	Balloon Homeward	2005	12	4.99	747	347
347	Games Bowfinger	2015	16	4.45	51	269
269	Earring Instinct	2000	8	4.70	347	284
284	Enemy Odds	2008	12	5.27	269	908
908	Trap Guys	2001	9	5.05	284	200
200	Curtain Videotape	2015	10	4.92	908	\N
550	Maguire Apache	2013	8	4.69	\N	\N
547	Magic Mallrats	2001	3	5.44	\N	113
113	California Birds	2004	15	7.09	547	669
669	Pearl Destiny	2017	9	6.57	113	145
145	Chisum Behavior	2013	8	5.45	669	339
339	Frogmen Breaking	2017	16	4.45	145	653
653	Panic Club	2006	11	5.91	339	354
354	Ghost Groundhog	2013	3	4.19	653	573
573	Microcosmos Paradise	2004	3	6.92	354	844
844	Steers Armageddon	2007	15	5.14	573	390
390	Guys Falcon	2011	14	4.37	844	\N
473	Jacket Frisco	2005	7	6.57	\N	580
580	Mine Titans	2016	13	4.21	473	162
162	Clueless Bucket	2015	1	5.85	580	538
538	Loverboy Attacks	2001	13	4.75	162	388
388	Gunfight Moon	2002	5	5.14	538	\N
655	Panther Reds	2016	14	5.90	\N	401
401	Harold French	2009	7	6.07	655	\N
831	Spirited Casualties	2001	14	4.92	\N	227
227	Details Packer	2006	10	3.97	831	\N
448	Idaho Love	2008	13	4.46	\N	6
6	Agent Truman	2011	9	5.16	448	450
450	Idols Snatchers	2008	3	3.87	6	666
666	Paycheck Wait	2006	7	4.64	450	487
487	Jingle Sagebrush	2005	4	4.26	666	\N
96	Breaking Home	2015	13	4.54	\N	680
680	Pinocchio Simon	2004	5	6.12	96	911
911	Trip Newton	2014	1	5.49	680	904
904	Train Bunch	2006	11	4.45	911	\N
290	Everyone Craft	2000	9	6.16	\N	\N
553	Maker Gables	2004	3	5.96	\N	870
870	Swarm Gold	2003	11	5.54	553	\N
146	Chitty Lock	2004	7	7.28	\N	928
928	Uptown Young	2000	3	4.95	146	\N
853	Stranger Strangers	2010	3	7.73	\N	900
900	Town Ark	2012	9	5.02	853	875
875	Talented Homicide	2004	15	4.82	900	439
439	Hunchback Impossible	2006	7	5.49	875	\N
969	West Lion	2017	7	5.44	\N	\N
409	Heartbreakers Bright	2000	3	3.57	\N	351
351	Gaslight Crusade	2017	11	4.74	409	183
183	Conversation Downhill	2008	8	6.87	351	224
224	Desperate Trainspotting	2005	16	5.19	183	\N
943	Villain Desperate	2008	6	5.46	\N	\N
248	Dozen Lion	2016	6	5.05	\N	396
396	Hanging Deep	2012	7	4.26	248	490
490	Jumanji Blade	2001	13	4.33	396	741
741	Roman Punk	2011	12	3.45	490	670
670	Pelican Comforts	2016	6	4.97	741	878
878	Teen Apollo	2009	16	4.72	670	\N
159	Closer Bang	2015	5	5.43	\N	383
383	Groove Fiction	2007	15	5.82	159	\N
910	Treatment Jekyll	2012	7	3.81	\N	956
956	Wanda Chamber	2006	10	3.92	910	121
121	Carol Texas	2013	2	3.74	956	166
166	Color Philadelphia	2007	4	5.56	121	\N
1000	Zorro Ark	2008	5	4.12	\N	\N
307	Fellowship Autumn	2012	16	6.83	\N	\N
521	Lies Treatment	2013	7	5.29	\N	394
394	Hamlet Wisdom	2009	14	4.98	521	\N
346	Galaxy Sweethearts	2005	4	3.94	\N	892
892	Titanic Boondock	2001	2	5.56	346	348
348	Gandhi Kwai	2009	8	4.27	892	71
71	Bilko Anonymous	2013	8	6.05	348	50
50	Baked Cleopatra	2009	8	4.07	71	\N
440	Hunger Roof	2006	9	5.12	\N	\N
510	Lawless Vision	2016	2	5.79	496	650
650	Pacific Amistad	2000	6	5.49	510	182
182	Control Anthem	2011	5	6.22	650	416
416	Highball Potter	2015	9	6.71	182	497
363	Go Purple	2009	12	3.17	\N	850
850	Story Side	2003	1	4.91	363	58
58	Beach Heartbreakers	2011	6	6.18	850	849
479	Jedi Beneath	2005	8	5.62	\N	449
593	Monterey Labyrinth	2013	11	4.35	449	369
369	Goodfellas Salute	2009	14	5.57	593	167
167	Coma Head	2013	16	4.77	369	105
105	Bull Shawshank	2010	1	4.61	167	293
293	Exorcist Sting	2012	15	5.21	105	\N
708	Quills Bull	2001	6	5.37	\N	\N
724	Remember Diary	2015	8	5.22	342	242
62	Bed Highball	2012	6	5.85	854	40
76	Birdcage Casper	2004	12	5.24	944	338
28	Anthem Luke	2001	5	4.34	8	\N
370	Gorgeous Bingo	2016	3	5.59	800	526
502	Knock Warlock	2008	5	3.84	\N	662
222	Desert Poseidon	2007	11	3.56	774	77
496	Kick Savannah	2014	16	5.28	\N	510
849	Storm Happiness	2005	2	4.01	58	154
154	Clash Freddy	2005	2	5.62	849	625
625	None Spiking	2007	14	2.79	154	\N
672	Perfect Groove	2016	5	3.72	\N	389
809	Slipper Fidelity	2006	15	6.26	703	21
254	Driver Annie	2015	15	5.62	291	\N
692	Potluck Mixed	2017	2	5.64	130	985
462	Insider Arizona	2004	12	4.70	686	42
998	Zhivago Core	2016	11	5.92	641	52
497	Kill Brotherhood	2007	6	5.42	416	\N
797	Silence Kane	2017	12	4.53	\N	75
989	Working Microcosmos	2016	16	4.18	64	\N
985	Wonderland Christmas	2014	14	5.24	692	976
75	Bird Independence	2006	16	3.35	797	\N
181	Contact Anonymous	2015	16	4.67	\N	693
693	Potter Connecticut	2001	2	4.95	181	294
294	Expecations Natural	2017	16	6.34	693	668
668	Peak Forever	2005	15	3.45	294	\N
302	Fantasia Park	2014	10	5.62	\N	\N
418	Hobbit Alien	2011	7	5.03	\N	\N
618	Necklace Outbreak	2007	7	3.95	\N	733
733	River Outlaw	2009	15	5.49	618	185
185	Cowboy Doom	2012	9	5.55	733	\N
839	Stallion Sundance	2015	14	5.33	\N	654
654	Panky Submarine	2001	10	4.18	839	\N
785	Shawshank Bubble	2010	16	5.62	\N	\N
30	Anything Savannah	2014	11	4.76	896	\N
356	Giant Troopers	2003	3	5.57	\N	771
771	Scorpion Apollo	2015	7	3.93	356	251
251	Dragonfly Strangers	2017	13	4.96	771	702
702	Pulp Beverly	2017	11	5.16	251	537
537	Lover Truman	2006	4	5.62	702	522
522	Life Twisted	2006	5	6.14	537	588
588	Model Fish	2007	3	5.00	522	249
249	Dracula Crystal	2007	4	4.26	588	828
828	Spiking Element	2010	4	5.62	249	\N
466	Intolerable Intentions	2017	6	5.20	\N	\N
649	Oz Liaisons	2009	2	4.35	\N	683
683	Pity Bound	2000	7	5.14	649	827
827	Spice Sorority	2016	7	4.43	683	\N
987	Words Hunter	2011	12	6.51	371	517
896	Tootsie Pilot	2014	3	4.22	\N	30
123	Casablanca Super	2002	16	3.75	\N	410
410	Heaven Freedom	2010	5	5.47	123	\N
805	Sleepless Monsoon	2012	2	5.35	\N	633
633	October Submarine	2010	4	5.97	805	\N
\.


--
-- TOC entry 3157 (class 0 OID 16750)
-- Dependencies: 202
-- Data for Name: films_actors; Type: TABLE DATA; Schema: public; Owner: michal
--

COPY public.films_actors (actor_id, film_id) FROM stdin;
1	1
1	23
1	25
1	106
1	140
1	166
1	277
1	361
1	438
1	499
1	506
1	509
1	605
1	635
1	749
1	832
1	939
1	970
1	980
2	3
2	31
2	47
2	105
2	132
2	145
2	226
2	249
2	314
2	321
2	357
2	369
2	399
2	458
2	481
2	485
2	518
2	540
2	550
2	555
2	561
2	742
2	754
2	811
2	958
3	17
3	40
3	42
3	87
3	111
3	185
3	289
3	329
3	336
3	341
3	393
3	441
3	453
3	480
3	539
3	618
3	685
3	827
3	966
3	967
3	971
3	996
4	23
4	25
4	56
4	62
4	79
4	87
4	355
4	379
4	398
4	463
4	490
4	616
4	635
4	691
4	712
4	714
4	721
4	798
4	832
4	858
4	909
4	924
5	19
5	54
5	85
5	146
5	171
5	172
5	202
5	203
5	286
5	288
5	316
5	340
5	369
5	375
5	383
5	392
5	411
5	503
5	535
5	571
5	650
5	665
5	687
5	730
5	732
5	811
5	817
5	841
5	865
6	29
6	53
6	60
6	70
6	112
6	164
6	165
6	193
6	256
6	451
6	503
6	509
6	517
6	519
6	605
6	692
6	826
6	892
6	902
6	994
7	25
7	27
7	35
7	67
7	96
7	170
7	173
7	217
7	218
7	225
7	292
7	351
7	414
7	463
7	554
7	618
7	633
7	637
7	691
7	758
7	766
7	770
7	805
7	806
7	846
7	900
7	901
7	910
7	957
7	959
8	47
8	115
8	158
8	179
8	195
8	205
8	255
8	263
8	321
8	396
8	458
8	523
8	532
8	554
8	752
8	769
8	771
8	859
8	895
8	936
9	30
9	74
9	147
9	148
9	191
9	200
9	204
9	434
9	510
9	514
9	552
9	650
9	671
9	697
9	722
9	752
9	811
9	815
9	865
9	873
9	889
9	903
9	926
9	964
9	974
10	1
10	9
10	191
10	236
10	251
10	366
10	477
10	480
10	522
10	530
10	587
10	694
10	703
10	716
10	782
10	914
10	929
10	930
10	964
10	966
10	980
10	983
11	118
11	205
11	281
11	283
11	348
11	364
11	395
11	429
11	433
11	453
11	485
11	532
11	567
11	587
11	597
11	636
11	709
11	850
11	854
11	888
11	896
11	928
11	938
11	969
11	988
12	16
12	17
12	34
12	37
12	91
12	92
12	107
12	155
12	177
12	208
12	213
12	216
12	243
12	344
12	400
12	416
12	420
12	457
12	513
12	540
12	593
12	631
12	635
12	672
12	716
12	728
12	812
12	838
12	871
12	880
12	945
13	17
13	29
13	45
13	87
13	110
13	144
13	154
13	162
13	203
13	254
13	337
13	346
13	381
13	385
13	427
13	456
13	513
13	515
13	522
13	524
13	528
13	571
13	588
13	597
13	600
13	718
13	729
13	816
13	817
13	832
13	833
13	843
13	897
13	966
13	998
14	154
14	187
14	232
14	241
14	253
14	255
14	258
14	284
14	292
14	370
14	415
14	417
14	418
14	454
14	472
14	475
14	495
14	536
14	537
14	612
14	688
14	759
14	764
14	847
14	856
14	890
14	908
14	919
14	948
14	970
15	31
15	89
15	91
15	108
15	125
15	236
15	275
15	280
15	326
15	342
15	414
15	445
15	500
15	502
15	541
15	553
15	594
15	626
15	635
15	745
15	783
15	795
15	817
15	886
15	924
15	949
15	968
15	985
16	80
16	87
16	101
16	121
16	155
16	177
16	218
16	221
16	267
16	269
16	271
16	280
16	287
16	345
16	438
16	453
16	455
16	456
16	503
16	548
16	582
16	583
16	717
16	758
16	779
16	886
16	967
17	96
17	119
17	124
17	127
17	154
17	199
17	201
17	236
17	280
17	310
17	313
17	378
17	457
17	469
17	478
17	500
17	515
17	521
17	573
17	603
17	606
17	734
17	770
17	794
17	800
17	853
17	873
17	874
17	880
17	948
17	957
17	959
18	44
18	84
18	144
18	172
18	268
18	279
18	280
18	321
18	386
18	460
18	462
18	484
18	536
18	561
18	612
18	717
18	808
18	842
18	863
18	883
18	917
18	944
19	2
19	3
19	144
19	152
19	182
19	208
19	212
19	217
19	266
19	404
19	428
19	473
19	490
19	510
19	513
19	644
19	670
19	673
19	711
19	750
19	752
19	756
19	771
19	785
19	877
20	1
20	54
20	63
20	140
20	146
20	165
20	231
20	243
20	269
20	274
20	348
20	366
20	445
20	478
20	492
20	499
20	527
20	531
20	538
20	589
20	643
20	652
20	663
20	714
20	717
20	757
20	784
20	863
20	962
20	977
21	6
21	87
21	88
21	142
21	159
21	179
21	253
21	281
21	321
21	398
21	426
21	429
21	497
21	507
21	530
21	680
21	686
21	700
21	702
21	733
21	734
21	798
21	804
21	887
21	893
21	920
21	983
22	9
22	23
22	56
22	89
22	111
22	146
22	291
22	294
22	349
22	369
22	418
22	430
22	483
22	491
22	495
22	536
22	600
22	634
22	648
22	688
22	731
22	742
22	775
22	802
22	912
22	964
23	6
23	42
23	78
23	105
23	116
23	117
23	125
23	212
23	226
23	235
23	254
23	367
23	370
23	414
23	419
23	435
23	449
23	491
23	536
23	549
23	636
23	649
23	673
23	691
23	766
23	782
23	804
23	820
23	826
23	833
23	842
23	853
23	855
23	856
23	935
23	981
23	997
24	3
24	83
24	112
24	126
24	148
24	164
24	178
24	194
24	199
24	242
24	256
24	277
24	335
24	405
24	463
24	515
24	585
24	603
24	653
24	704
24	781
24	829
24	832
24	969
25	21
25	86
25	153
25	179
25	204
25	213
25	226
25	245
25	311
25	404
25	411
25	420
25	538
25	564
25	583
25	606
25	688
25	697
25	755
25	871
25	914
26	9
26	21
26	34
26	90
26	93
26	103
26	147
26	186
26	201
26	225
26	241
26	327
26	329
26	340
26	345
26	390
26	392
26	529
26	544
26	564
26	635
26	644
26	682
26	688
26	715
26	732
26	758
26	764
26	795
26	821
26	885
26	904
26	906
27	19
27	34
27	85
27	150
27	172
27	273
27	334
27	347
27	359
27	398
27	415
27	462
27	477
27	500
27	503
27	540
27	586
27	593
27	637
27	679
27	682
27	695
27	771
27	805
27	830
27	854
27	873
27	880
27	889
27	904
27	967
27	986
27	996
28	14
28	43
28	58
28	74
28	96
28	107
28	259
28	263
28	287
28	358
28	502
28	508
28	532
28	551
28	574
28	597
28	619
28	625
28	652
28	679
28	743
28	790
28	793
28	816
28	827
28	835
28	879
28	908
28	953
28	973
28	994
29	10
29	79
29	105
29	110
29	131
29	133
29	172
29	226
29	273
29	282
29	296
29	311
29	335
29	342
29	436
29	444
29	449
29	462
29	482
29	488
29	519
29	547
29	590
29	646
29	723
29	812
29	862
29	928
29	944
30	1
30	53
30	64
30	69
30	77
30	87
30	260
30	262
30	286
30	292
30	301
30	318
30	321
30	357
30	565
30	732
30	797
30	838
30	945
31	88
31	146
31	163
31	164
31	188
31	299
31	308
31	368
31	380
31	431
31	585
31	637
31	700
31	739
31	793
31	802
31	880
31	978
32	65
32	84
32	103
32	112
32	136
32	197
32	199
32	219
32	309
32	312
32	401
32	427
32	431
32	523
32	567
32	585
32	606
32	651
32	667
32	669
32	815
32	928
32	980
33	56
33	112
33	135
33	154
33	214
33	252
33	305
33	306
33	473
33	489
33	574
33	618
33	667
33	694
33	712
33	735
33	737
33	754
33	775
33	878
33	881
33	965
33	972
33	993
34	43
34	90
34	119
34	125
34	172
34	182
34	244
34	336
34	389
34	393
34	438
34	493
34	502
34	525
34	668
34	720
34	779
34	788
34	794
34	836
34	846
34	853
34	929
34	950
34	971
35	10
35	35
35	52
35	201
35	256
35	389
35	589
35	612
35	615
35	707
35	732
35	738
35	748
35	817
35	914
36	15
36	81
36	171
36	231
36	245
36	283
36	380
36	381
36	387
36	390
36	410
36	426
36	427
36	453
36	466
36	484
36	493
36	499
36	569
36	590
36	600
36	714
36	715
36	716
36	731
36	875
36	915
36	931
36	956
37	10
37	12
37	19
37	118
37	119
37	122
37	146
37	204
37	253
37	260
37	277
37	317
37	467
37	477
37	485
37	508
37	529
37	553
37	555
37	572
37	588
37	662
37	663
37	694
37	697
37	785
37	839
37	840
37	853
37	900
37	925
37	963
37	966
37	989
37	997
38	24
38	111
38	160
38	176
38	223
38	241
38	274
38	335
38	338
38	353
38	448
38	450
38	458
38	501
38	516
38	547
38	583
38	618
38	619
38	705
38	793
38	827
38	839
38	853
38	876
39	71
39	73
39	168
39	203
39	222
39	290
39	293
39	320
39	415
39	425
39	431
39	456
39	476
39	559
39	587
39	598
39	606
39	648
39	683
39	689
39	696
39	700
39	703
39	736
39	772
39	815
39	831
39	920
40	1
40	11
40	34
40	107
40	128
40	163
40	177
40	223
40	233
40	326
40	374
40	394
40	396
40	463
40	466
40	494
40	521
40	723
40	737
40	744
40	747
40	754
40	799
40	835
40	868
40	869
40	887
40	933
40	938
41	4
41	60
41	69
41	86
41	100
41	150
41	159
41	194
41	203
41	212
41	230
41	249
41	252
41	305
41	336
41	383
41	544
41	596
41	657
41	674
41	678
41	721
41	724
41	779
41	784
41	799
41	894
41	912
41	942
42	24
42	139
42	309
42	320
42	333
42	500
42	502
42	505
42	527
42	535
42	546
42	568
42	648
42	665
42	673
42	687
42	713
42	738
42	798
42	861
42	865
42	867
42	876
42	890
42	907
42	922
42	932
43	19
43	42
43	56
43	89
43	105
43	147
43	161
43	180
43	239
43	276
43	330
43	344
43	359
43	377
43	410
43	462
43	533
43	598
43	605
43	608
43	621
43	753
43	827
43	833
43	917
43	958
44	58
44	84
44	88
44	94
44	109
44	176
44	242
44	273
44	322
44	420
44	434
44	490
44	591
44	598
44	604
44	699
44	751
44	784
44	825
44	854
44	875
44	878
44	883
44	896
44	902
44	937
44	944
44	952
44	982
44	998
45	18
45	65
45	66
45	115
45	117
45	164
45	187
45	198
45	219
45	330
45	407
45	416
45	463
45	467
45	484
45	502
45	503
45	508
45	537
45	680
45	714
45	767
45	778
45	797
45	810
45	895
45	900
45	901
45	920
45	925
45	975
45	978
46	38
46	51
46	174
46	254
46	296
46	319
46	407
46	448
46	456
46	463
46	478
46	538
46	540
46	567
46	731
46	766
46	768
46	820
46	829
46	830
46	836
46	889
46	980
46	991
47	25
47	36
47	53
47	67
47	172
47	233
47	273
47	351
47	385
47	484
47	508
47	576
47	670
47	734
47	737
47	770
47	777
47	787
47	790
47	913
47	923
47	924
47	944
47	973
48	99
48	101
48	134
48	150
48	164
48	211
48	245
48	267
48	287
48	295
48	312
48	315
48	345
48	349
48	428
48	506
48	545
48	559
48	570
48	599
48	645
48	705
48	757
48	792
48	922
48	926
49	31
49	151
49	195
49	207
49	250
49	282
49	348
49	391
49	400
49	407
49	423
49	433
49	469
49	506
49	542
49	558
49	579
49	595
49	662
49	709
49	716
49	725
49	729
49	811
49	927
49	977
49	980
50	111
50	178
50	243
50	248
50	274
50	288
50	303
50	306
50	327
50	372
50	401
50	417
50	420
50	437
50	476
50	504
50	520
50	552
50	591
50	621
50	632
50	645
50	672
50	717
50	732
50	795
50	829
50	840
50	897
50	918
50	924
50	957
51	5
51	63
51	103
51	112
51	121
51	153
51	395
51	408
51	420
51	461
51	490
51	525
51	627
51	678
51	733
51	734
51	737
51	750
51	847
51	891
51	895
51	940
51	974
51	990
51	993
52	20
52	92
52	96
52	108
52	203
52	249
52	341
52	376
52	388
52	407
52	424
52	474
52	515
52	517
52	584
52	596
52	664
52	675
52	689
52	714
52	812
52	878
52	879
52	915
52	951
52	999
53	1
53	9
53	51
53	58
53	109
53	122
53	126
53	181
53	256
53	268
53	285
53	307
53	358
53	386
53	447
53	465
53	490
53	492
53	508
53	518
53	573
53	576
53	577
53	697
53	725
53	727
53	937
53	947
53	961
53	980
54	84
54	129
54	150
54	184
54	285
54	292
54	301
54	348
54	489
54	510
54	524
54	546
54	600
54	636
54	649
54	658
54	754
54	764
54	842
54	858
54	861
54	913
54	970
54	988
54	990
55	8
55	27
55	75
55	197
55	307
55	320
55	340
55	403
55	485
55	486
55	603
55	612
55	620
55	709
55	776
55	790
55	815
55	827
55	930
55	963
56	63
56	87
56	226
56	236
56	298
56	307
56	354
56	383
56	417
56	421
56	457
56	462
56	474
56	521
56	593
56	728
56	750
56	769
56	781
56	795
56	844
56	851
56	862
56	868
56	892
56	893
56	936
56	965
57	16
57	34
57	101
57	114
57	122
57	134
57	144
57	153
57	192
57	213
57	258
57	267
57	317
57	340
57	393
57	437
57	447
57	502
57	592
57	605
57	637
57	685
57	707
57	714
57	717
57	737
57	767
57	852
57	891
57	918
58	48
58	68
58	119
58	128
58	135
58	175
58	199
58	235
58	242
58	243
58	254
58	306
58	316
58	417
58	426
58	460
58	477
58	541
58	549
58	551
58	553
58	578
58	602
58	632
58	635
58	638
58	698
58	726
58	755
58	800
58	856
58	858
59	5
59	46
59	54
59	72
59	88
59	121
59	129
59	130
59	183
59	210
59	241
59	295
59	418
59	572
59	644
59	650
59	689
59	694
59	702
59	713
59	749
59	772
59	853
59	862
59	943
59	946
59	984
60	31
60	85
60	133
60	142
60	177
60	179
60	186
60	222
60	235
60	239
60	253
60	262
60	297
60	299
60	334
60	376
60	423
60	436
60	493
60	534
60	551
60	658
60	665
60	679
60	754
60	771
60	783
60	784
60	805
60	830
60	835
60	928
60	952
60	971
60	986
61	235
61	237
61	307
61	362
61	372
61	374
61	423
61	433
61	508
61	518
61	519
61	535
61	537
61	585
61	639
61	648
61	649
61	703
61	752
61	766
61	767
61	780
61	831
61	832
61	990
62	6
62	42
62	54
62	100
62	101
62	129
62	198
62	211
62	231
62	272
62	295
62	337
62	375
62	385
62	393
62	398
62	406
62	413
62	428
62	445
62	457
62	465
62	688
62	707
62	719
62	951
62	981
62	988
62	990
63	73
63	134
63	167
63	208
63	225
63	248
63	249
63	278
63	392
63	517
63	633
63	763
63	781
63	809
63	893
63	932
63	944
63	945
63	981
64	3
64	10
64	37
64	87
64	88
64	124
64	197
64	280
64	291
64	307
64	335
64	345
64	448
64	469
64	471
64	506
64	543
64	557
64	569
64	572
64	597
64	616
64	646
64	694
64	832
64	852
64	860
64	921
64	925
64	980
65	39
65	46
65	97
65	106
65	117
65	125
65	158
65	276
65	305
65	338
65	347
65	371
65	398
65	471
65	475
65	476
65	491
65	496
65	516
65	517
65	541
65	556
65	571
65	577
65	615
65	658
65	683
65	694
65	714
65	735
65	852
65	938
65	951
65	965
66	55
66	143
66	207
66	226
66	229
66	230
66	283
66	300
66	342
66	350
66	361
66	376
66	424
66	434
66	553
66	608
66	676
66	697
66	706
66	725
66	769
66	793
66	829
66	871
66	909
66	915
66	928
66	951
66	957
66	960
66	999
67	24
67	57
67	67
67	144
67	242
67	244
67	256
67	408
67	477
67	496
67	512
67	576
67	601
67	725
67	726
67	731
67	766
67	861
67	870
67	915
67	945
67	972
67	981
68	9
68	45
68	133
68	161
68	205
68	213
68	215
68	255
68	296
68	315
68	325
68	331
68	347
68	357
68	378
68	380
68	386
68	396
68	435
68	497
68	607
68	654
68	665
68	671
68	706
68	747
68	834
68	839
68	840
68	971
69	15
69	88
69	111
69	202
69	236
69	292
69	300
69	306
69	374
69	396
69	452
69	466
69	529
69	612
69	720
69	722
69	761
69	791
69	864
69	877
69	914
70	50
70	53
70	92
70	202
70	227
70	249
70	290
70	304
70	343
70	414
70	453
70	466
70	504
70	584
70	628
70	654
70	725
70	823
70	834
70	856
70	869
70	953
70	964
71	26
71	52
71	233
71	317
71	359
71	362
71	385
71	399
71	450
71	532
71	560
71	574
71	638
71	773
71	833
71	874
71	918
71	956
72	34
72	144
72	237
72	249
72	286
72	296
72	325
72	331
72	405
72	450
72	550
72	609
72	623
72	636
72	640
72	665
72	718
72	743
72	757
72	773
72	854
72	865
72	938
72	956
72	964
72	969
73	36
73	45
73	51
73	77
73	148
73	245
73	275
73	322
73	374
73	379
73	467
73	548
73	561
73	562
73	565
73	627
73	666
73	667
73	707
73	748
73	772
73	823
73	936
73	946
73	950
73	998
74	28
74	44
74	117
74	185
74	192
74	203
74	263
74	321
74	415
74	484
74	503
74	537
74	543
74	617
74	626
74	637
74	663
74	704
74	720
74	747
74	780
74	804
74	834
74	836
74	848
74	872
74	902
74	956
75	12
75	34
75	143
75	170
75	222
75	301
75	347
75	372
75	436
75	445
75	446
75	492
75	498
75	508
75	541
75	547
75	579
75	645
75	667
75	744
75	764
75	780
75	870
75	920
76	60
76	66
76	68
76	95
76	122
76	187
76	223
76	234
76	251
76	348
76	444
76	464
76	474
76	498
76	568
76	604
76	606
76	642
76	648
76	650
76	709
76	760
76	765
76	781
76	850
76	862
76	866
76	870
76	912
76	935
76	958
77	13
77	22
77	40
77	73
77	78
77	153
77	224
77	240
77	245
77	261
77	343
77	442
77	458
77	538
77	566
77	612
77	635
77	694
77	749
77	938
77	943
77	963
77	969
77	993
78	86
78	239
78	260
78	261
78	265
78	301
78	387
78	393
78	428
78	457
78	505
78	520
78	530
78	549
78	552
78	599
78	670
78	674
78	689
78	762
78	767
78	811
78	852
78	880
78	963
78	968
79	32
79	33
79	40
79	141
79	205
79	230
79	242
79	262
79	267
79	269
79	299
79	367
79	428
79	430
79	473
79	607
79	628
79	634
79	646
79	727
79	750
79	753
79	769
79	776
79	788
79	840
79	853
79	916
80	69
80	118
80	124
80	175
80	207
80	212
80	260
80	262
80	280
80	341
80	342
80	343
80	362
80	436
80	475
80	553
80	619
80	622
80	680
80	687
80	688
80	709
80	788
80	807
80	858
80	888
80	941
80	979
81	4
81	11
81	59
81	89
81	178
81	186
81	194
81	215
81	219
81	232
81	260
81	267
81	268
81	304
81	332
81	389
81	398
81	453
81	458
81	465
81	505
81	508
81	527
81	545
81	564
81	578
81	579
81	613
81	619
81	643
81	692
81	710
81	729
81	761
81	827
81	910
82	17
82	33
82	104
82	143
82	188
82	242
82	247
82	290
82	306
82	316
82	344
82	453
82	468
82	480
82	497
82	503
82	527
82	551
82	561
82	750
82	787
82	802
82	838
82	839
82	870
82	877
82	893
82	911
82	954
82	978
82	985
83	49
83	52
83	58
83	110
83	120
83	121
83	135
83	165
83	217
83	247
83	249
83	263
83	268
83	279
83	281
83	339
83	340
83	369
83	412
83	519
83	529
83	615
83	631
83	655
83	672
83	686
83	719
83	764
83	777
83	784
83	833
83	873
83	932
84	19
84	39
84	46
84	175
84	238
84	281
84	290
84	312
84	317
84	413
84	414
84	460
84	479
84	491
84	529
84	540
84	566
84	574
84	589
84	616
84	646
84	703
84	729
84	764
84	782
84	809
84	830
84	843
84	887
84	975
84	996
85	2
85	14
85	72
85	85
85	92
85	148
85	216
85	290
85	296
85	297
85	337
85	383
85	421
85	446
85	461
85	475
85	478
85	522
85	543
85	558
85	591
85	630
85	678
85	711
85	761
85	812
85	869
85	875
85	895
85	957
85	960
86	137
86	163
86	196
86	216
86	249
86	303
86	331
86	364
86	391
86	432
86	482
86	486
86	519
86	520
86	548
86	623
86	631
86	636
86	752
86	760
86	808
86	857
86	878
86	893
86	905
86	923
86	929
87	48
87	157
87	161
87	199
87	207
87	250
87	253
87	312
87	421
87	570
87	599
87	606
87	654
87	679
87	706
87	718
87	721
87	830
87	870
87	952
87	961
88	4
88	76
88	87
88	128
88	170
88	193
88	234
88	304
88	602
88	620
88	668
88	717
88	785
88	819
88	839
88	881
88	908
88	929
88	940
88	968
89	47
89	103
89	117
89	162
89	182
89	187
89	212
89	254
89	266
89	306
89	342
89	406
89	410
89	446
89	473
89	488
89	529
89	542
89	564
89	697
89	833
89	864
89	970
89	976
90	2
90	11
90	100
90	197
90	212
90	262
90	303
90	330
90	363
90	374
90	384
90	385
90	391
90	406
90	433
90	442
90	451
90	520
90	529
90	542
90	586
90	633
90	663
90	676
90	771
90	817
90	838
90	855
90	858
90	868
90	880
90	901
90	925
91	13
91	25
91	48
91	176
91	181
91	190
91	335
91	416
91	447
91	480
91	493
91	509
91	511
91	608
91	807
91	829
91	849
91	859
91	941
91	982
92	90
92	94
92	103
92	104
92	123
92	137
92	207
92	229
92	338
92	381
92	436
92	443
92	453
92	470
92	505
92	512
92	543
92	545
92	547
92	553
92	564
92	568
92	618
92	662
92	686
92	699
92	712
92	728
92	802
92	825
92	838
92	889
92	929
92	991
93	71
93	120
93	124
93	280
93	325
93	339
93	427
93	445
93	453
93	473
93	573
93	621
93	644
93	678
93	680
93	699
93	744
93	768
93	777
93	835
93	856
93	874
93	909
93	916
93	982
94	13
94	60
94	76
94	122
94	153
94	193
94	206
94	228
94	270
94	275
94	320
94	322
94	337
94	354
94	402
94	428
94	457
94	473
94	475
94	512
94	517
94	521
94	533
94	540
94	548
94	551
94	712
94	713
94	724
94	775
94	788
94	950
94	989
95	22
95	35
95	47
95	52
95	65
95	74
95	126
95	207
95	245
95	294
95	301
95	312
95	329
95	353
95	375
95	420
95	424
95	431
95	498
95	522
95	546
95	551
95	619
95	627
95	690
95	748
95	813
95	828
95	855
95	903
95	923
96	8
96	36
96	40
96	54
96	58
96	66
96	134
96	209
96	244
96	320
96	430
96	452
96	486
96	572
96	590
96	661
96	778
96	832
96	846
96	874
96	945
96	968
96	987
97	143
97	177
97	188
97	197
97	256
97	312
97	342
97	348
97	358
97	370
97	437
97	446
97	466
97	518
97	553
97	561
97	641
97	656
97	728
97	755
97	757
97	826
97	862
97	930
97	933
97	947
97	951
98	66
98	72
98	81
98	87
98	107
98	120
98	183
98	194
98	212
98	297
98	607
98	634
98	686
98	705
98	710
98	721
98	725
98	734
98	738
98	765
98	782
98	824
98	829
98	912
98	955
98	985
98	990
99	7
99	27
99	84
99	250
99	322
99	325
99	381
99	414
99	475
99	490
99	512
99	540
99	572
99	600
99	618
99	620
99	622
99	636
99	672
99	726
99	741
99	796
99	835
99	967
99	978
99	982
100	17
100	118
100	250
100	411
100	414
100	513
100	563
100	642
100	714
100	718
100	759
100	779
100	815
100	846
100	850
100	872
100	877
100	909
100	919
100	944
100	967
100	979
100	991
100	992
101	60
101	66
101	85
101	146
101	189
101	250
101	255
101	263
101	275
101	289
101	491
101	494
101	511
101	568
101	608
101	617
101	655
101	662
101	700
101	702
101	758
101	774
101	787
101	828
101	841
101	928
101	932
101	936
101	941
101	978
101	980
101	984
101	988
102	20
102	34
102	53
102	123
102	124
102	194
102	200
102	205
102	268
102	326
102	329
102	334
102	351
102	418
102	431
102	446
102	485
102	508
102	517
102	521
102	526
102	529
102	544
102	600
102	605
102	606
102	624
102	631
102	712
102	728
102	744
102	796
102	802
102	810
102	828
102	837
102	845
102	852
102	958
102	979
102	980
103	5
103	118
103	130
103	197
103	199
103	206
103	215
103	221
103	271
103	285
103	315
103	318
103	333
103	347
103	356
103	360
103	378
103	437
103	585
103	609
103	639
103	643
103	692
103	735
103	822
103	895
103	903
103	912
103	942
103	956
104	19
104	39
104	40
104	59
104	70
104	136
104	156
104	184
104	198
104	233
104	259
104	287
104	309
104	313
104	394
104	401
104	463
104	506
104	516
104	583
104	600
104	607
104	657
104	677
104	739
104	892
104	904
104	926
104	945
104	984
104	999
105	12
105	15
105	21
105	29
105	42
105	116
105	158
105	239
105	280
105	283
105	315
105	333
105	372
105	377
105	530
105	558
105	561
105	606
105	649
105	686
105	750
105	795
105	831
105	835
105	858
105	864
105	893
105	906
105	910
105	915
105	954
105	990
105	993
105	994
106	44
106	83
106	108
106	126
106	136
106	166
106	189
106	194
106	204
106	229
106	241
106	345
106	365
106	399
106	439
106	457
106	469
106	500
106	505
106	559
106	566
106	585
106	639
106	654
106	659
106	675
106	687
106	752
106	763
106	780
106	858
106	866
106	881
106	894
106	934
107	62
107	112
107	133
107	136
107	138
107	162
107	165
107	172
107	209
107	220
107	239
107	277
107	292
107	338
107	348
107	369
107	388
107	392
107	409
107	430
107	445
107	454
107	458
107	467
107	520
107	534
107	548
107	571
107	574
107	603
107	606
107	637
107	774
107	781
107	796
107	831
107	849
107	859
107	879
107	905
107	973
107	977
108	1
108	6
108	9
108	137
108	208
108	219
108	242
108	278
108	302
108	350
108	378
108	379
108	495
108	507
108	517
108	561
108	567
108	648
108	652
108	655
108	673
108	693
108	696
108	702
108	721
108	733
108	741
108	744
108	887
108	892
108	894
108	920
108	958
108	966
109	12
109	48
109	77
109	157
109	174
109	190
109	243
109	281
109	393
109	463
109	622
109	657
109	694
109	700
109	732
109	753
109	785
109	786
109	863
109	885
109	955
109	967
110	8
110	27
110	62
110	120
110	126
110	156
110	292
110	343
110	360
110	369
110	435
110	513
110	525
110	539
110	545
110	625
110	650
110	801
110	912
110	961
110	987
111	61
111	78
111	98
111	162
111	179
111	194
111	325
111	359
111	382
111	403
111	407
111	414
111	474
111	489
111	508
111	555
111	603
111	608
111	643
111	669
111	679
111	680
111	699
111	731
111	732
111	737
111	744
111	777
111	847
111	894
111	919
111	962
111	973
112	34
112	37
112	151
112	173
112	188
112	231
112	312
112	322
112	443
112	450
112	565
112	603
112	606
112	654
112	666
112	700
112	728
112	772
112	796
112	817
112	829
112	856
112	865
112	869
112	988
113	35
113	84
113	116
113	181
113	218
113	249
113	258
113	292
113	322
113	353
113	403
113	525
113	642
113	656
113	674
113	680
113	700
113	719
113	723
113	726
113	732
113	748
113	838
113	890
113	921
113	969
113	981
114	13
114	68
114	90
114	162
114	188
114	194
114	210
114	237
114	254
114	305
114	339
114	420
114	425
114	452
114	538
114	619
114	757
114	807
114	827
114	841
114	861
114	866
114	913
114	961
114	993
115	49
115	52
115	245
115	246
115	277
115	302
115	379
115	383
115	391
115	428
115	506
115	531
115	607
115	615
115	661
115	671
115	686
115	703
115	714
115	740
115	754
115	846
115	887
115	952
115	955
115	966
115	985
115	994
116	36
116	48
116	88
116	90
116	105
116	128
116	336
116	338
116	384
116	412
116	420
116	451
116	481
116	492
116	584
116	606
116	622
116	647
116	653
116	742
116	784
116	844
116	939
116	956
117	10
117	15
117	42
117	167
117	178
117	190
117	197
117	224
117	246
117	273
117	298
117	316
117	337
117	395
117	423
117	432
117	459
117	468
117	550
117	578
117	707
117	710
117	738
117	739
117	778
117	783
117	785
117	797
117	812
117	831
117	864
117	887
117	926
118	35
118	39
118	41
118	49
118	55
118	136
118	141
118	151
118	311
118	384
118	399
118	499
118	517
118	553
118	558
118	572
118	641
118	656
118	695
118	735
118	788
118	852
118	938
118	957
118	969
119	21
119	49
119	64
119	87
119	143
119	171
119	172
119	173
119	381
119	394
119	412
119	418
119	454
119	509
119	521
119	567
119	570
119	592
119	614
119	636
119	649
119	693
119	738
119	751
119	782
119	786
119	788
119	802
119	858
119	868
119	900
119	939
120	57
120	63
120	144
120	149
120	208
120	231
120	238
120	255
120	414
120	424
120	489
120	513
120	590
120	641
120	642
120	659
120	682
120	691
120	715
120	717
120	722
120	746
120	830
120	894
120	898
120	911
120	994
121	141
121	154
121	161
121	170
121	186
121	198
121	220
121	222
121	284
121	297
121	338
121	353
121	449
121	479
121	517
121	633
121	654
121	658
121	666
121	771
121	780
121	847
121	884
121	885
121	966
122	22
122	29
122	76
122	83
122	157
122	158
122	166
122	227
122	238
122	300
122	307
122	363
122	470
122	489
122	491
122	542
122	620
122	649
122	654
122	673
122	718
122	795
122	957
122	961
122	998
123	3
123	43
123	67
123	105
123	148
123	151
123	185
123	223
123	234
123	245
123	246
123	266
123	286
123	429
123	442
123	446
123	479
123	480
123	494
123	503
123	530
123	576
123	577
123	589
123	593
123	725
123	730
123	786
123	860
123	892
123	926
123	988
124	22
124	64
124	106
124	113
124	190
124	246
124	260
124	263
124	289
124	306
124	312
124	322
124	343
124	449
124	468
124	539
124	601
124	726
124	742
124	775
124	785
124	814
124	858
124	882
124	987
124	997
125	62
125	98
125	100
125	114
125	175
125	188
125	204
125	238
125	250
125	324
125	338
125	361
125	367
125	395
125	414
125	428
125	429
125	450
125	497
125	557
125	568
125	584
125	602
125	623
125	664
125	683
125	710
125	877
125	908
125	949
125	965
126	21
126	34
126	43
126	58
126	85
126	96
126	193
126	194
126	199
126	256
126	263
126	288
126	317
126	347
126	369
126	370
126	419
126	468
126	469
126	545
126	685
126	836
126	860
127	36
127	47
127	48
127	79
127	119
127	141
127	157
127	202
127	286
127	333
127	354
127	366
127	382
127	388
127	411
127	459
127	553
127	573
127	613
127	617
127	641
127	710
127	727
127	749
127	763
127	771
127	791
127	819
127	839
127	846
127	911
127	953
127	970
128	26
128	82
128	119
128	168
128	212
128	238
128	299
128	312
128	326
128	336
128	345
128	407
128	462
128	485
128	516
128	564
128	614
128	650
128	665
128	671
128	693
128	696
128	759
128	774
128	814
128	899
128	912
128	944
128	949
128	965
129	56
129	89
129	101
129	166
129	202
129	230
129	247
129	249
129	348
129	367
129	391
129	418
129	431
129	452
129	471
129	520
129	597
129	602
129	640
129	669
129	684
129	705
129	805
129	826
129	834
129	857
129	910
129	920
129	938
129	962
130	9
130	26
130	37
130	43
130	49
130	57
130	107
130	112
130	208
130	326
130	375
130	416
130	431
130	452
130	453
130	478
130	507
130	525
130	549
130	592
130	702
130	725
130	764
130	809
130	869
130	930
130	981
131	48
131	66
131	94
131	120
131	147
131	206
131	320
131	383
131	432
131	436
131	450
131	479
131	494
131	515
131	539
131	590
131	647
131	693
131	713
131	770
131	798
131	809
131	875
131	881
131	921
132	81
132	82
132	133
132	156
132	162
132	311
132	345
132	377
132	410
132	538
132	562
132	586
132	626
132	637
132	698
132	756
132	806
132	897
132	899
132	904
132	930
132	987
133	7
133	51
133	133
133	172
133	210
133	270
133	280
133	286
133	338
133	342
133	351
133	368
133	385
133	390
133	397
133	410
133	452
133	463
133	514
133	588
133	594
133	635
133	652
133	727
133	806
133	868
133	882
133	894
133	933
133	952
134	132
134	145
134	161
134	219
134	243
134	250
134	278
134	341
134	386
134	413
134	558
134	588
134	624
134	655
134	683
134	690
134	861
134	896
134	897
134	915
134	927
134	936
135	35
135	41
135	65
135	88
135	170
135	269
135	320
135	353
135	357
135	364
135	455
135	458
135	484
135	541
135	553
135	616
135	628
135	719
135	814
135	905
136	20
136	25
136	33
136	56
136	61
136	193
136	214
136	229
136	243
136	256
136	262
136	271
136	288
136	300
136	364
136	401
136	414
136	420
136	474
136	485
136	542
136	552
136	620
136	649
136	686
136	781
136	806
136	808
136	818
136	842
136	933
136	993
137	6
137	14
137	56
137	96
137	160
137	224
137	249
137	254
137	263
137	268
137	304
137	390
137	410
137	433
137	446
137	489
137	530
137	564
137	603
137	610
137	688
137	703
137	745
137	758
137	832
137	841
137	917
138	8
138	52
138	61
138	125
138	157
138	214
138	258
138	376
138	403
138	446
138	453
138	508
138	553
138	561
138	583
138	627
138	639
138	695
138	747
138	879
138	885
138	923
138	970
138	989
139	20
139	35
139	57
139	74
139	90
139	107
139	155
139	170
139	181
139	200
139	229
139	233
139	261
139	262
139	266
139	282
139	284
139	373
139	447
139	489
139	529
139	540
139	570
139	602
139	605
139	636
139	691
139	706
139	719
139	744
139	746
139	862
139	892
140	27
140	77
140	112
140	135
140	185
140	258
140	370
140	373
140	498
140	509
140	576
140	587
140	599
140	608
140	647
140	665
140	670
140	693
140	702
140	729
140	730
140	731
140	736
140	742
140	778
140	820
140	830
140	835
140	857
140	923
140	934
140	999
141	43
141	67
141	188
141	191
141	207
141	223
141	341
141	358
141	380
141	395
141	467
141	491
141	589
141	607
141	673
141	740
141	752
141	768
141	772
141	787
141	821
141	829
141	840
141	849
141	862
141	863
141	909
141	992
142	10
142	18
142	107
142	139
142	186
142	199
142	248
142	328
142	350
142	371
142	470
142	481
142	494
142	501
142	504
142	540
142	554
142	575
142	608
142	710
142	712
142	735
142	759
142	794
142	842
142	859
142	863
142	875
142	906
142	914
142	999
143	47
143	79
143	141
143	175
143	232
143	239
143	316
143	339
143	361
143	386
143	404
143	457
143	485
143	497
143	560
143	576
143	603
143	613
143	659
143	660
143	680
143	687
143	690
143	706
143	792
143	821
143	830
143	872
143	878
143	906
143	958
144	18
144	67
144	79
144	90
144	99
144	105
144	123
144	125
144	127
144	130
144	135
144	164
144	184
144	216
144	228
144	260
144	272
144	291
144	293
144	312
144	393
144	396
144	473
144	504
144	540
144	599
144	668
144	702
144	753
144	762
144	776
144	785
144	845
144	894
144	953
145	39
145	109
145	120
145	154
145	155
145	243
145	293
145	402
145	409
145	457
145	475
145	487
145	494
145	527
145	592
145	625
145	629
145	641
145	661
145	664
145	692
145	713
145	726
145	748
145	822
145	893
145	923
145	953
146	12
146	16
146	33
146	117
146	177
146	191
146	197
146	207
146	218
146	278
146	296
146	314
146	320
146	372
146	384
146	402
146	410
146	427
146	429
146	512
146	514
146	571
146	591
146	720
146	731
146	734
146	871
146	909
146	922
146	945
146	955
146	966
146	969
147	4
147	85
147	131
147	139
147	145
147	178
147	251
147	254
147	295
147	298
147	305
147	310
147	318
147	333
147	341
147	351
147	394
147	402
147	405
147	410
147	431
147	443
147	508
147	554
147	563
147	649
147	688
147	708
147	864
147	957
147	987
148	27
148	57
148	133
148	149
148	226
148	342
148	368
148	422
148	468
148	633
148	718
148	768
148	772
148	792
149	53
149	72
149	95
149	118
149	139
149	146
149	153
149	159
149	169
149	178
149	188
149	193
149	339
149	354
149	362
149	365
149	458
149	631
149	670
149	685
149	761
149	782
149	810
149	811
149	899
149	905
149	913
149	921
149	947
149	949
149	992
150	23
150	63
150	75
150	94
150	105
150	168
150	190
150	206
150	233
150	270
150	285
150	306
150	386
150	433
150	446
150	447
150	468
150	508
150	542
150	551
150	629
150	647
150	672
150	697
150	728
150	777
150	854
150	873
150	880
150	887
150	889
150	892
150	953
150	962
151	131
151	144
151	167
151	170
151	217
151	232
151	342
151	367
151	370
151	382
151	451
151	463
151	482
151	501
151	527
151	539
151	570
151	574
151	634
151	658
151	665
151	703
151	880
151	892
151	895
151	989
152	59
152	153
152	217
152	248
152	318
152	332
152	475
152	476
152	578
152	607
152	611
152	615
152	674
152	680
152	729
152	768
152	821
152	846
152	891
152	898
152	927
152	964
152	968
153	47
153	64
153	136
153	180
153	203
153	231
153	444
153	476
153	480
153	486
153	536
153	627
153	732
153	756
153	766
153	817
153	847
153	919
153	938
153	988
154	27
154	111
154	141
154	158
154	169
154	170
154	193
154	208
154	274
154	276
154	282
154	299
154	314
154	396
154	399
154	421
154	440
154	467
154	474
154	489
154	588
154	602
154	680
154	698
154	802
154	842
154	954
154	988
155	20
155	67
155	128
155	153
155	220
155	249
155	303
155	312
155	359
155	361
155	383
155	387
155	407
155	427
155	459
155	513
155	584
155	590
155	630
155	688
155	757
155	768
155	785
155	849
155	885
155	890
155	941
155	966
155	987
155	997
155	1000
156	53
156	155
156	198
156	244
156	262
156	263
156	285
156	297
156	301
156	349
156	379
156	448
156	462
156	467
156	504
156	518
156	593
156	646
156	705
156	754
156	775
156	844
157	10
157	24
157	34
157	122
157	159
157	183
157	210
157	217
157	291
157	303
157	321
157	326
157	353
157	400
157	406
157	431
157	496
157	535
157	573
157	574
157	604
157	616
157	642
157	661
157	696
157	713
157	802
157	835
157	874
157	913
157	967
157	973
158	32
158	47
158	64
158	66
158	102
158	121
158	177
158	178
158	188
158	215
158	241
158	293
158	437
158	473
158	483
158	532
158	555
158	581
158	601
158	616
158	626
158	637
158	799
158	812
158	824
158	830
158	840
158	869
158	879
158	880
158	894
158	896
158	967
158	968
158	990
159	20
159	82
159	127
159	187
159	206
159	208
159	223
159	248
159	342
159	343
159	344
159	364
159	418
159	549
159	561
159	600
159	674
159	680
159	784
159	789
159	800
159	802
159	818
159	876
159	907
159	978
160	2
160	17
160	43
160	242
160	267
160	275
160	368
160	455
160	469
160	484
160	579
160	660
160	755
160	767
160	769
160	794
160	826
160	883
160	950
160	954
161	43
161	58
161	89
161	90
161	120
161	188
161	247
161	269
161	281
161	340
161	353
161	401
161	414
161	425
161	469
161	526
161	588
161	644
161	653
161	655
161	669
161	684
161	714
161	749
161	807
161	825
161	850
161	880
161	920
161	921
161	924
161	927
162	1
162	4
162	7
162	18
162	28
162	32
162	33
162	41
162	85
162	121
162	164
162	274
162	279
162	409
162	410
162	415
162	500
162	574
162	612
162	636
162	659
162	786
162	844
162	909
162	968
163	30
163	45
163	166
163	180
163	239
163	283
163	303
163	304
163	307
163	394
163	409
163	434
163	444
163	522
163	719
163	785
163	833
163	881
163	891
163	947
163	996
164	15
164	23
164	148
164	169
164	252
164	324
164	347
164	367
164	431
164	448
164	469
164	545
164	610
164	613
164	673
164	681
164	698
164	801
164	820
164	832
164	834
164	851
164	884
164	908
164	957
164	984
165	72
165	95
165	146
165	204
165	253
165	286
165	360
165	375
165	395
165	421
165	437
165	473
165	607
165	644
165	659
165	693
165	737
165	779
165	798
165	807
165	809
165	832
165	833
165	947
165	948
165	962
166	25
166	38
166	55
166	61
166	68
166	86
166	146
166	255
166	297
166	306
166	326
166	361
166	366
166	426
166	580
166	622
166	674
166	714
166	788
166	867
166	944
166	1000
167	17
167	25
167	63
167	72
167	107
167	120
167	191
167	294
167	319
167	339
167	341
167	496
167	554
167	626
167	628
167	672
167	692
167	717
167	734
167	794
167	800
167	802
167	856
167	864
167	882
167	923
168	32
168	56
168	92
168	115
168	188
168	196
168	208
168	237
168	241
168	255
168	305
168	336
168	387
168	433
168	438
168	519
168	602
168	619
168	626
168	652
168	678
168	685
168	804
168	807
168	826
168	841
168	886
168	889
168	892
168	927
168	959
169	6
169	78
169	93
169	246
169	248
169	289
169	301
169	326
169	349
169	372
169	398
169	434
169	505
169	564
169	571
169	634
169	642
169	673
169	694
169	727
169	778
169	815
169	847
169	849
169	894
169	897
169	954
169	992
169	998
170	7
170	15
170	27
170	33
170	102
170	139
170	180
170	184
170	212
170	299
170	322
170	358
170	416
170	508
170	537
170	705
170	758
170	764
170	868
170	877
170	886
170	925
170	993
170	996
171	49
171	146
171	166
171	181
171	219
171	273
171	296
171	318
171	342
171	397
171	447
171	450
171	466
171	549
171	560
171	566
171	608
171	625
171	645
171	701
171	761
171	779
171	849
171	872
171	892
171	898
171	903
171	953
172	57
172	100
172	148
172	215
172	302
172	345
172	368
172	385
172	423
172	487
172	493
172	529
172	538
172	567
172	609
172	639
172	649
172	661
172	667
172	710
172	744
172	758
172	771
172	833
172	959
173	49
173	55
173	74
173	80
173	106
173	154
173	162
173	188
173	235
173	313
173	379
173	405
173	491
173	496
173	529
173	550
173	564
173	571
173	592
173	688
173	753
173	757
173	852
173	857
173	921
173	928
173	933
174	11
174	61
174	168
174	298
174	352
174	442
174	451
174	496
174	610
174	618
174	622
174	659
174	677
174	705
174	722
174	780
174	797
174	809
174	827
174	830
174	852
174	853
174	879
174	982
175	9
175	29
175	67
175	129
175	155
175	190
175	191
175	362
175	405
175	424
175	439
175	442
175	483
175	591
175	596
175	616
175	719
175	729
175	772
175	778
175	828
175	842
175	890
175	908
175	977
175	978
175	998
176	13
176	73
176	89
176	150
176	162
176	238
176	252
176	303
176	320
176	401
176	417
176	441
176	458
176	461
176	517
176	521
176	543
176	573
176	699
176	726
176	740
176	746
176	758
176	802
176	827
176	839
176	859
176	872
176	946
177	12
177	39
177	52
177	55
177	86
177	175
177	188
177	235
177	237
177	289
177	363
177	401
177	433
177	458
177	522
177	543
177	563
177	649
177	683
177	684
177	726
177	751
177	763
177	764
177	827
177	910
177	956
178	30
178	34
178	109
178	146
178	160
178	164
178	194
178	197
178	273
178	311
178	397
178	483
178	517
178	537
178	587
178	708
178	733
178	744
178	762
178	930
178	974
178	983
178	1000
179	24
179	27
179	65
179	85
179	109
179	131
179	159
179	193
179	250
179	291
179	353
179	415
179	463
179	468
179	489
179	566
179	588
179	650
179	698
179	732
179	737
179	769
179	811
179	817
179	852
179	924
179	931
179	960
179	976
180	12
180	33
180	144
180	195
180	258
180	441
180	506
180	561
180	609
180	622
180	628
180	657
180	724
180	729
180	732
180	777
180	809
180	811
180	820
180	824
180	847
180	869
180	874
180	955
180	963
181	5
181	40
181	74
181	78
181	83
181	152
181	195
181	233
181	286
181	301
181	311
181	381
181	387
181	403
181	409
181	420
181	437
181	456
181	507
181	522
181	539
181	542
181	546
181	579
181	596
181	604
181	609
181	625
181	744
181	816
181	836
181	868
181	870
181	874
181	892
181	907
181	911
181	921
181	991
182	33
182	160
182	301
182	324
182	346
182	362
182	391
182	413
182	421
182	437
182	590
182	639
182	668
182	677
182	679
182	695
182	714
182	720
182	819
182	828
182	845
182	864
182	940
182	990
183	32
183	40
183	71
183	113
183	313
183	388
183	389
183	390
183	495
183	520
183	576
183	636
183	715
183	850
183	862
183	914
183	941
183	949
183	983
184	35
184	87
184	146
184	169
184	221
184	336
184	371
184	452
184	486
184	492
184	500
184	574
184	580
184	597
184	615
184	640
184	642
184	650
184	661
184	684
184	745
184	772
184	787
184	867
184	959
184	966
184	967
184	969
184	985
185	7
185	95
185	138
185	265
185	286
185	360
185	411
185	427
185	437
185	448
185	494
185	510
185	518
185	554
185	560
185	571
185	584
185	631
185	665
185	694
185	730
185	761
185	818
185	845
185	880
185	882
185	919
185	920
185	965
185	973
186	95
186	187
186	208
186	228
186	237
186	422
186	482
186	508
186	552
186	579
186	637
186	648
186	654
186	729
186	983
186	994
187	17
187	25
187	29
187	51
187	73
187	76
187	98
187	110
187	127
187	168
187	222
187	224
187	297
187	354
187	379
187	417
187	435
187	441
187	474
187	499
187	538
187	548
187	561
187	617
187	625
187	664
187	671
187	768
187	779
187	906
187	914
187	923
187	976
188	1
188	10
188	14
188	51
188	102
188	111
188	146
188	206
188	223
188	289
188	311
188	322
188	338
188	396
188	412
188	506
188	517
188	529
188	566
188	593
188	606
188	662
188	770
188	773
188	774
188	815
188	849
188	925
188	988
188	989
189	43
189	82
189	171
189	266
189	272
189	315
189	378
189	492
189	509
189	512
189	519
189	533
189	548
189	560
189	628
189	734
189	748
189	788
189	820
189	853
189	882
189	896
189	899
189	940
190	38
190	54
190	62
190	87
190	173
190	234
190	253
190	278
190	310
190	374
190	411
190	426
190	472
190	549
190	562
190	606
190	623
190	679
190	682
190	693
190	695
190	705
190	708
190	802
190	806
190	874
190	959
191	16
191	39
191	84
191	185
191	219
191	293
191	296
191	378
191	410
191	420
191	461
191	544
191	551
191	596
191	638
191	668
191	692
191	775
191	801
191	819
191	827
191	830
191	834
191	849
191	858
191	914
191	958
191	969
191	971
191	993
192	16
192	69
192	117
192	155
192	166
192	179
192	214
192	361
192	367
192	426
192	465
192	470
192	475
192	485
192	541
192	578
192	592
192	614
192	618
192	622
192	674
192	677
192	680
192	682
192	708
192	711
192	747
192	763
192	819
193	44
193	80
193	103
193	109
193	119
193	141
193	164
193	291
193	352
193	358
193	376
193	412
193	462
193	689
193	709
193	745
193	807
193	828
193	834
193	851
193	937
193	953
193	960
194	9
194	42
194	67
194	86
194	88
194	98
194	135
194	161
194	163
194	215
194	232
194	352
194	415
194	486
194	498
194	531
194	719
194	738
194	786
194	872
194	938
194	940
195	129
195	130
195	141
195	144
195	298
195	359
195	361
195	392
195	403
195	494
195	520
195	534
195	560
195	592
195	649
195	658
195	673
195	677
195	706
195	738
195	769
195	781
195	794
195	813
195	869
195	885
195	962
196	64
196	122
196	156
196	169
196	276
196	284
196	303
196	324
196	423
196	473
196	484
196	515
196	524
196	541
196	560
196	575
196	576
196	587
196	615
196	635
196	684
196	795
196	815
196	833
196	837
196	906
196	908
196	919
196	939
196	972
197	6
197	29
197	63
197	123
197	129
197	147
197	164
197	189
197	243
197	249
197	258
197	364
197	369
197	370
197	418
197	522
197	531
197	554
197	598
197	628
197	691
197	724
197	746
197	752
197	758
197	769
197	815
197	916
197	950
197	967
197	974
197	979
197	995
198	1
198	109
198	125
198	186
198	262
198	264
198	303
198	309
198	311
198	329
198	347
198	379
198	395
198	406
198	450
198	464
198	482
198	499
198	536
198	541
198	545
198	555
198	568
198	570
198	588
198	597
198	628
198	745
198	758
198	796
198	806
198	817
198	843
198	858
198	871
198	886
198	892
198	924
198	952
198	997
199	67
199	84
199	145
199	159
199	216
199	432
199	541
199	604
199	640
199	689
199	730
199	784
199	785
199	886
199	953
200	5
200	49
200	80
200	116
200	121
200	149
200	346
200	419
200	462
200	465
200	474
200	537
200	538
200	544
200	714
200	879
200	912
200	945
200	958
200	993
\.

SELECT pg_catalog.setval('public.actors_id_seq', 200, true);

SELECT pg_catalog.setval('public.categories_id_seq', 16, true);

SELECT pg_catalog.setval('public.films_id_seq', 1000, true);

ALTER TABLE ONLY public.actors
    ADD CONSTRAINT actors_pkey PRIMARY KEY (id);

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);

ALTER TABLE ONLY public.films_actors
    ADD CONSTRAINT films_actors_pkey PRIMARY KEY (actor_id, film_id);

ALTER TABLE ONLY public.films
    ADD CONSTRAINT films_pkey PRIMARY KEY (id);

CREATE INDEX idx_fk_film_id ON public.films_actors USING btree (film_id);

CREATE INDEX idx_title ON public.films USING btree (title);

ALTER TABLE ONLY public.films_actors
    ADD CONSTRAINT films_actors_actor_id_fkey FOREIGN KEY (actor_id) REFERENCES public.actors(id) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE ONLY public.films_actors
    ADD CONSTRAINT films_actors_film_id_fkey FOREIGN KEY (film_id) REFERENCES public.films(id) ON UPDATE CASCADE ON DELETE RESTRICT;