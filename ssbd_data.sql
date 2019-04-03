-- title: SSBD (Solar System Body Database) data
--
--
--
-- author: Samuel Andrés

begin;

-- les codes négatifs sont ceux qui n'ont pas été trouvés dans le répertoire NAIF
insert into ssbd_body values (10, 'Sun', 'direct', null, null);
insert into ssbd_body values (199, 'Mercury', 'direct', null, null);
insert into ssbd_body values (299, 'Venus', 'indirect', null, null);
insert into ssbd_body values (399, 'Earth', 'direct', null, null);
insert into ssbd_body values (301, 'Moon', 'direct', null, null);
insert into ssbd_body values (499, 'Mars', 'direct', null, null);
insert into ssbd_body values (401, 'Phobos', 'direct', null, null);
insert into ssbd_body values (402, 'Deimos', 'direct', null, null);
insert into ssbd_body values (599, 'Jupiter', 'direct', null, null);
insert into ssbd_body values (501, 'Io', 'direct', null, null);
insert into ssbd_body values (502, 'Europa', 'direct', null, null);
insert into ssbd_body values (503, 'Ganymede', 'direct', null, null);
insert into ssbd_body values (504, 'Callisto', 'direct', null, null);
insert into ssbd_body values (505, 'Amalthea', 'direct', null, null);
insert into ssbd_body values (506, 'Himalia', 'direct', null, null);
insert into ssbd_body values (507, 'Elara', 'direct', null, null);
insert into ssbd_body values (508, 'Pasiphae', 'direct', null, null);
insert into ssbd_body values (509, 'Sinope', 'direct', null, null);
insert into ssbd_body values (510, 'Lysithea', 'direct', null, null);
insert into ssbd_body values (511, 'Carme', 'direct', null, null);
insert into ssbd_body values (512, 'Ananke', 'direct', null, null);
insert into ssbd_body values (513, 'Leda', 'direct', null, null);
insert into ssbd_body values (514, 'Thebe', 'direct', null, null);
insert into ssbd_body values (515, 'Adrastea', 'direct', null, null);
insert into ssbd_body values (516, 'Metis', 'direct', null, null);
insert into ssbd_body values (517, 'Callirrhoe', 'direct', null, null);
insert into ssbd_body values (518, 'Themisto', 'direct', null, null);
insert into ssbd_body values (519, 'Magaclite', 'direct', null, null);
insert into ssbd_body values (520, 'Taygete', 'direct', null, null);
insert into ssbd_body values (521, 'Chaldene', 'direct', null, null);
insert into ssbd_body values (522, 'Harpalyke', 'direct', null, null);
insert into ssbd_body values (523, 'Kalyke', 'direct', null, null);
insert into ssbd_body values (524, 'Iocaste', 'direct', null, null);
insert into ssbd_body values (525, 'Erinome', 'direct', null, null);
insert into ssbd_body values (526, 'Isonoe', 'direct', null, null);
insert into ssbd_body values (527, 'Praxidike', 'direct', null, null);
insert into ssbd_body values (528, 'Autonoe', 'direct', null, null);
insert into ssbd_body values (529, 'Thyone', 'direct', null, null);
insert into ssbd_body values (530, 'Hermippe', 'direct', null, null);
insert into ssbd_body values (531, 'Aitne', 'direct', null, null);
insert into ssbd_body values (532, 'Eurydome', 'direct', null, null);
insert into ssbd_body values (533, 'Euanthe', 'direct', null, null);
insert into ssbd_body values (534, 'Euporie', 'direct', null, null);
insert into ssbd_body values (535, 'Orthosie', 'direct', null, null);
insert into ssbd_body values (536, 'Sponde', 'direct', null, null);
insert into ssbd_body values (537, 'Kale', 'direct', null, null);
insert into ssbd_body values (538, 'Pasithee', 'direct', null, null);
insert into ssbd_body values (539, 'Hegemone', 'direct', null, null);
insert into ssbd_body values (540, 'Mneme', 'direct', null, null);
insert into ssbd_body values (541, 'Aoede', 'direct', null, null);
insert into ssbd_body values (542, 'Thelxinoe', 'direct', null, null);
insert into ssbd_body values (543, 'Arche', 'direct', null, null);
insert into ssbd_body values (544, 'Kallichore', 'direct', null, null);
insert into ssbd_body values (545, 'Helike', 'direct', null, null);
insert into ssbd_body values (546, 'Carpo', 'direct', null, null);
insert into ssbd_body values (547, 'Eukelade', 'direct', null, null);
insert into ssbd_body values (548, 'Cyllene', 'direct', null, null);
insert into ssbd_body values (549, 'Kore', 'direct', null, null);
insert into ssbd_body values (550, 'Herse', 'direct', null, null);
insert into ssbd_body values (699, 'Saturn', 'direct', null, null);
insert into ssbd_body values (601, 'Mimas', 'direct', null, null);
insert into ssbd_body values (602, 'Enceladus', 'direct', null, null);
insert into ssbd_body values (603, 'Tethys', 'direct', null, null);
insert into ssbd_body values (604, 'Dione', 'direct', null, null);
insert into ssbd_body values (605, 'Rhea', 'direct', null, null);
insert into ssbd_body values (606, 'Titan', 'direct', null, null);
insert into ssbd_body values (607, 'Hyperion', 'direct', null, null);
insert into ssbd_body values (608, 'Iapetus', 'direct', null, null);
insert into ssbd_body values (609, 'Phoebe', 'direct', null, null);
insert into ssbd_body values (610, 'Janus', 'direct', null, null);
insert into ssbd_body values (611, 'Epimetheus', 'direct', null, null);
insert into ssbd_body values (612, 'Helene', 'direct', null, null);
insert into ssbd_body values (613, 'Telesto', 'direct', null, null);
insert into ssbd_body values (614, 'Calypso', 'direct', null, null);
insert into ssbd_body values (615, 'Atlas', 'direct', null, null);
insert into ssbd_body values (616, 'Prometheus', 'direct', null, null);
insert into ssbd_body values (617, 'Pandora', 'direct', null, null);
insert into ssbd_body values (618, 'Pan', 'direct', null, null);
insert into ssbd_body values (619, 'Ymir', null, null, null);
insert into ssbd_body values (620, 'Paaliaq', null, null, null);
insert into ssbd_body values (621, 'Tarvos', null, null, null);
insert into ssbd_body values (622, 'Ijiraq', null, null, null);
insert into ssbd_body values (623, 'Suttungr', null, null, null);
insert into ssbd_body values (624, 'Kiviuq', null, null, null);
insert into ssbd_body values (625, 'Mundilfari', null, null, null);
insert into ssbd_body values (626, 'Albiorix', null, null, null);
insert into ssbd_body values (627, 'Skathi', null, null, null);
insert into ssbd_body values (628, 'Erriapo', null, null, null);
insert into ssbd_body values (629, 'Siarnaq', null, null, null);
insert into ssbd_body values (630, 'Thrymr', null, null, null);
insert into ssbd_body values (631, 'Narvi', null, null, null);
insert into ssbd_body values (632, 'Methone', null, null, null);
insert into ssbd_body values (633, 'Pallene', null, null, null);
insert into ssbd_body values (634, 'Polydeuces', null, null, null);
insert into ssbd_body values (635, 'Daphnis', null, null, null);
insert into ssbd_body values (636, 'Aegir', null, null, null);
insert into ssbd_body values (637, 'Bebhionn', null, null, null);
insert into ssbd_body values (638, 'Bergelmir', null, null, null);
insert into ssbd_body values (639, 'Bestla', null, null, null);
insert into ssbd_body values (640, 'Farbauti', null, null, null);
insert into ssbd_body values (641, 'Fenrir', null, null, null);
insert into ssbd_body values (642, 'Fornjot', null, null, null);
insert into ssbd_body values (643, 'Hati', null, null, null);
insert into ssbd_body values (644, 'Hyrrokkin', null, null, null);
insert into ssbd_body values (645, 'Kari', null, null, null);
insert into ssbd_body values (646, 'Loge', null, null, null);
insert into ssbd_body values (647, 'Skoll', null, null, null);
insert into ssbd_body values (648, 'Sutur', null, null, null);
insert into ssbd_body values (649, 'Anthe', null, null, null);
insert into ssbd_body values (650, 'Jarnsaxa', null, null, null);
insert into ssbd_body values (651, 'Greip', null, null, null);
insert into ssbd_body values (652, 'Tarqeq', null, null, null);
insert into ssbd_body values (653, 'Aegaeon', null, null, null);
insert into ssbd_body values (799, 'Uranus', 'indirect', null, null);
insert into ssbd_body values (701, 'Ariel', 'indirect', null, null);
insert into ssbd_body values (702, 'Umbriel', 'indirect', null, null);
insert into ssbd_body values (703, 'Titania', 'indirect', null, null);
insert into ssbd_body values (704, 'Oberon', 'indirect', null, null);
insert into ssbd_body values (705, 'Miranda', 'indirect', null, null);
insert into ssbd_body values (706, 'Cordelia', 'indirect', null, null);
insert into ssbd_body values (707, 'Ophelia', 'indirect', null, null);
insert into ssbd_body values (708, 'Bianca', 'indirect', null, null);
insert into ssbd_body values (709, 'Cressida', 'indirect', null, null);
insert into ssbd_body values (710, 'Desdemona', 'indirect', null, null);
insert into ssbd_body values (711, 'Juliet', 'indirect', null, null);
insert into ssbd_body values (712, 'Portia', 'indirect', null, null);
insert into ssbd_body values (713, 'Rosalind', 'indirect', null, null);
insert into ssbd_body values (714, 'Belinda', 'indirect', null, null);
insert into ssbd_body values (715, 'Puck', 'indirect', null, null);
insert into ssbd_body values (716, 'Caliban', 'direct', null, null);
insert into ssbd_body values (717, 'Sycorax', 'direct', null, null);
insert into ssbd_body values (718, 'Prospero', 'direct', null, null);
insert into ssbd_body values (719, 'Setebos', 'direct', null, null);
insert into ssbd_body values (720, 'Stephano', 'direct', null, null);
insert into ssbd_body values (721, 'Trinculo', 'direct', null, null);
insert into ssbd_body values (722, 'Francisco', 'direct', null, null);
insert into ssbd_body values (723, 'Margaret', 'direct', null, null);
insert into ssbd_body values (724, 'Ferdinand', 'direct', null, null);
insert into ssbd_body values (725, 'Perdita', 'direct', null, null);
insert into ssbd_body values (726, 'Mab', 'direct', null, null);
insert into ssbd_body values (727, 'Cupid', 'direct', null, null);
insert into ssbd_body values (899, 'Neptune', 'direct', null, null);
insert into ssbd_body values (801, 'Triton', 'indirect', null, null);
insert into ssbd_body values (802, 'Nereid', 'direct', null, null);
insert into ssbd_body values (803, 'Naiad', 'direct', null, null);
insert into ssbd_body values (804, 'Thalassa', 'direct', null, null);
insert into ssbd_body values (805, 'Despina', 'direct', null, null);
insert into ssbd_body values (806, 'Galatea', 'direct', null, null);
insert into ssbd_body values (807, 'Larissa', 'direct', null, null);
insert into ssbd_body values (808, 'Proteus', 'direct', null, null);
insert into ssbd_body values (809, 'Halimede', 'direct', null, null);
insert into ssbd_body values (810, 'Psamathe', 'direct', null, null);
insert into ssbd_body values (811, 'Sao', 'direct', null, null);
insert into ssbd_body values (812, 'Laomedeia', 'direct', null, null);
insert into ssbd_body values (813, 'Neso', 'direct', null, null);
insert into ssbd_body values (999, 'Pluto', 'indirect', null, null);
insert into ssbd_body values (901, 'Charon', 'direct', null, null);
insert into ssbd_body values (1000005, 'Borrelly', 'direct', null, null);
insert into ssbd_body values (1000012, 'Churyumov-Gerasimenko', null, null, null);
insert into ssbd_body values (1000036, 'Halley', 'direct', null, null);
insert into ssbd_body values (1000041, 'Hartley 2', null, null, null);
insert into ssbd_body values (1000093, 'Tempel 1', 'direct', null, null);
insert into ssbd_body values (1000107, 'Wild 2', 'direct', null, null);
insert into ssbd_body values (9511010, 'Gaspra', 'direct', null, null);
insert into ssbd_body values (2431010, 'Ida', 'direct', null, null);
insert into ssbd_body values (2431011, 'Dactyl', 'direct', null, null);
insert into ssbd_body values (2000001, 'Ceres', 'direct', null, null);
insert into ssbd_body values (2000002, 'Pallas', 'direct', null, null);
insert into ssbd_body values (2000004, 'Vesta', 'direct', null, null);
insert into ssbd_body values (2000016, 'Psyche', null, null, null);
insert into ssbd_body values (2000021, 'Lutetia', 'direct', null, null);
insert into ssbd_body values (2000216, 'Kleopatra', 'direct', null, null);
insert into ssbd_body values (2000433, 'Eros', 'direct', null, null);
insert into ssbd_body values (2000511, 'Davida', 'direct', null, null);
insert into ssbd_body values (2000253, 'Mathilde', 'direct', null, null);
insert into ssbd_body values (2002867, 'Steins', 'direct', null, null);
-- codes en doublons : lequel est le bon ?
-- insert into ssbd_body values (2009969, '1992KD', 'direct', null, null);
-- insert into ssbd_body values (2009969, 'Braille', 'direct', null, null);
insert into ssbd_body values (2004015, 'Wilson-Harrington', 'direct', null, null);
insert into ssbd_body values (2004179, 'Toutatis', 'direct', null, null);
insert into ssbd_body values (2025143, 'Itokawa', 'direct', null, null);
insert into ssbd_body values (-2000052, '52 Europa', null, null, null);


insert into ssbd_ellipsoid values (199, 1, 'Mercury 2000 IAU', 2439700.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (299, 2, 'Venus 2000 IAU', 6051800.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (399, 3, 'Spherical Earth 2000 IAU', 6371000.00, 10., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (399, 4, 'Ellipsoidal Earth 2000 IAU', 6378140.00, 10., 9001, null, 6356750.00, 10.,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (499, 5, 'Spherical Mars 2000 IAU', 3389500.00, 200., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (499, 6, 'Ellipsoidal Mars 2000 IAU', 3396190.00, 100., 9001, null, 3376200.00, 100.,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (499, 7, 'Quadriaxial Mars 2000 IAU', 3396190.00, 100., 9001, null, 3373190.00, 100.,
 null, null, 3379210.00, 100.,
 'This ellipsoid is considered quadriaxial even if subplanetary and along orbit equatorial axes are equal.',
 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (599, 8, 'Spherical Jupiter 2000 IAU', 69911000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (599, 9, 'Ellipsoidal Jupiter 2000 IAU', 71492000.00,  4000., 9001, null, 66854000.00, 10000.,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (699, 10, 'Spherical Saturn 2000 IAU', 58232000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (699, 11, 'Ellipsoidal Saturn 2000 IAU', 60268000.00,  4000., 9001, null, 54364000.00, 10000.,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (799, 12, 'Spherical Uranus 2000 IAU', 25362000.00, 7000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (799, 13, 'Ellipsoidal Uranus 2000 IAU', 25559000.00,  4000., 9001, null, 24973000.00, 20000.,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (899, 14, 'Spherical Neptune 2000 IAU', 24622000.00, 19000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (899, 15, 'Ellipsoidal Neptune 2000 IAU', 24764000.00,  15000., 9001, null, 24341000.00, 30000.,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (999, 16, 'Spherical Pluto 2000 IAU', 1195000.00,  5000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');

insert into ssbd_ellipsoid values (301, 17, 'Spherical Moon 2000 IAU', 1737400.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (401, 18, 'Spherical Phobos 2000 IAU', 11100.00, 150., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (401, 19, 'Triaxial Phobos 2000 IAU', 13400.00, null, 9001, null, 9200.00, null,
 11200.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (402, 20, 'Spherical Deimos 2000 IAU', 6200.00, 180., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (402, 21, 'Triaxial Deimos 2000 IAU', 7500.00, null, 9001, null, 5200.00, null,
 6100.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (516, 22, 'Spherical Metis 2000 IAU', 21500., 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (516, 23, 'Ellipsoidal Metis 2000 IAU', 30000., null, 9001, null, 20000., null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (515, 24, 'Spherical Adrastea 2000 IAU', 8200., 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (515, 25, 'Triaxial Adrastea 2000 IAU', 10000., null, 9001, null, 7000., null,
 8000., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (505, 26, 'Spherical Amalthea 2000 IAU', 83500., 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (505, 27, 'Triaxial Amalthea 2000 IAU', 125000., null, 9001, null, 73000., null,
 64000., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (514, 28, 'Spherical Thebe 2000 IAU', 49300., 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (514, 29, 'Triaxial Thebe 2000 IAU', 58000., null, 9001, null, 49000., null,
 42000., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (501, 30, 'Spherical Io 2000 IAU', 1821460., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (501, 31, 'Triaxial Io 2000 IAU', 1829400., null, 9001, null, 1819300., null,
 1815700., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (502, 32, 'Spherical Europa 2000 IAU', 1562090., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (502, 33, 'Triaxial Europa 2000 IAU', 1564130., null, 9001, null, 1561230., null,
 1560930., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (503, 34, 'Spherical Ganymede 2000 IAU', 2632345., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (503, 35, 'Triaxial Ganymede 2000 IAU', 2632400., null, 9001, null, 2632290., null,
 2632350., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (504, 36, 'Spherical Callisto 2000 IAU', 2409300., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (504, 37, 'Triaxial Callisto 2000 IAU', 2409400., null, 9001, null, 2409200., null,
 2409300., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (513, 38, 'Leda 2000 IAU', 5000., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (506, 39, 'Himalia 2000 IAU', 85000., 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (510, 40, 'Lysithea 2000 IAU', 12000., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (507, 41, 'Elara 2000 IAU', 40000., 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (512, 42, 'Ananke 2000 IAU', 10000., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (511, 43, 'Carme 2000 IAU', 15000., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (508, 44, 'Pasiphae 2000 IAU', 18000., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (509, 45, 'Sinope 2000 IAU', 14000., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');

insert into ssbd_ellipsoid values (601, 46, 'Spherical Mimas 2000 IAU', 198600.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (601, 47, 'Triaxial Mimas 2000 IAU', 209100.00, 500., 9001, null, 191400.00, 500.,
 196200.00, 500., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (602, 48, 'Spherical Enceladus 2000 IAU', 249400.00, 300., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (602, 49, 'Triaxial Enceladus 2000 IAU', 256300.00, 300., 9001, null, 244600.00, 500.,
 247300.00, 300., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (603, 50, 'Spherical Tethys 2000 IAU', 529800.00, 1500., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (603, 51, 'Triaxial Tethys 2000 IAU', 535600.00, 1200., 9001, null, 525800.00, 1200.,
 528200.00, 1200., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (604, 52, 'Dione 2000 IAU', 560000.00, 5000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (605, 53, 'Rhea 2000 IAU', 764000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (606, 54, 'Titan 2000 IAU', 2575000.00, 2000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (607, 55, 'Spherical Hyperion 2000 IAU', 133000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (607, 56, 'Triaxial Hyperion 2000 IAU', 164000.00, 8000., 9001, null, 107000.00, 8000.,
 130000.00, 8000., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (608, 57, 'Iapetus 2000 IAU', 718000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (609, 58, 'Spherical Phoebe 2000 IAU', 110000.00, 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (609, 59, 'Triaxial Phoebe 2000 IAU', 115000.00, 10000., 9001, null, 105000.00, 10000.,
 110000.00, 10000., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (610, 60, 'Spherical Janus 2000 IAU', 88800.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (610, 61, 'Triaxial Janus 2000 IAU', 97000.00, null, 9001, null, 77000.00, null,
 95000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (611, 62, 'Spherical Epimetheus 2000 IAU', 59500.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (611, 63, 'Triaxial Epimetheus 2000 IAU', 69000.00, null, 9001, null, 55000.00, null,
 55000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (612, 64, 'Spherical Helene 2000 IAU', 16000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
-- TODO : rayon polaire d'Helene suspect, de même que l'axis_b
insert into ssbd_ellipsoid values (612, 65, 'Ellipsoidal Helene 2000 IAU', 17500.00, 2500., 9001, null, 700.00, null,
 17500.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (613, 66, 'Spherical Telesto 2000 IAU', 11000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (613, 67, 'Triaxial Telesto 2000 IAU', 15000.00, 2500., 9001, null, 7500.00, 2500.,
 12500.00, 5000., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (614, 68, 'Spherical Calypso 2000 IAU', 9500.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (614, 69, 'Triaxial Calypso 2000 IAU', 15000.00, null, 9001, null, 8000.00, null,
 8000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (615, 70, 'Spherical Atlas 2000 IAU', 16000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (615, 71, 'Triaxial Atlas 2000 IAU', 18500.00, null, 9001, null, 13500.00, null,
 17200.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (616, 72, 'Spherical Prometheus 2000 IAU', 50100.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (616, 73, 'Triaxial Prometheus 2000 IAU', 74000.00, null, 9001, null, 34000.00, null,
 50000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (617, 74, 'Spherical Pandora 2000 IAU', 41900.00, 2000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (617, 75, 'Triaxial Pandora 2000 IAU', 55000.00, null, 9001, null, 31000.00, null,
 44000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (618, 76, 'Pan 2000 IAU', 10000., 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');

insert into ssbd_ellipsoid values (632, 77, 'Methone 2000 IAU', 1600.00, null, 9001, null, null, null,
 null, null, null, null,
 null, null);
insert into ssbd_ellipsoid values (633, 78, 'Pallene 2000 IAU', 2500.00, null, 9001, null, null, null,
 null, null, null, null,
 null, null);
insert into ssbd_ellipsoid values (634, 79, 'Polydeuces 2000 IAU', 1300.00, null, 9001, null, null, null,
 null, null, null, null,
 null, null);

insert into ssbd_ellipsoid values (701, 80, 'Spherical Ariel 2000 IAU', 578900.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (701, 81, 'Triaxial Ariel 2000 IAU', 581100.00, 900., 9001, null, 577700.00, 1000.,
 577900.00, 600., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (702, 82, 'Umbriel 2000 IAU', 584700.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (703, 83, 'Titania 2000 IAU', 788900.00, 1800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (704, 84, 'Oberon 2000 IAU', 761400.00, 2600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (705, 85, 'Spherical Miranda 2000 IAU', 235800.00, 700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (705, 86, 'Triaxial Miranda 2000 IAU', 240400.00, 600., 9001, null, 232900.00, 1200.,
 234200.00, 900., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (706, 87, 'Cordelia 2000 IAU', 13000.00, 2000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (707, 88, 'Ophelia 2000 IAU', 15000.00, 2000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (708, 89, 'Bianca 2000 IAU', 21000.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (709, 90, 'Cressida 2000 IAU', 31000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (710, 91, 'Desdemona 2000 IAU', 27000.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (711, 92, 'Juliet 2000 IAU', 42000.00, 5000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (712, 93, 'Portia 2000 IAU', 54000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (713, 94, 'Rosalind 2000 IAU', 27000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (714, 95, 'Belinda 2000 IAU', 33000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (715, 96, 'Puck 2000 IAU', 77000.00, 5000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');


insert into ssbd_ellipsoid values (801, 97, 'Triton 2000 IAU', 1352600.00, 2400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (802, 98, 'Nereid 2000 IAU', 170000.00, 25000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (803, 99, 'Naiad 2000 IAU', 29000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (804, 100, 'Thalassa 2000 IAU', 40000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (805, 101, 'Despina 2000 IAU', 74000.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (806, 102, 'Galatea 2000 IAU', 79000.00, 12000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (807, 103, 'Spherical Larissa 2000 IAU', 96000.00, 7000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (807, 104, 'Ellipsoidal Larissa 2000 IAU', 104000.00, null, 9001, null, 89000.00, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (808, 105, 'Spherical Proteus 2000 IAU', 208000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (808, 106, 'Triaxial Proteus 2000 IAU', 218000.00, null, 9001, null, 201000.00, null,
 208000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');


insert into ssbd_ellipsoid values (901, 107, 'Charon 2000 IAU', 593000.00, 13000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');

insert into ssbd_ellipsoid values (9511010, 108, 'Spherical Gaspra 2000 IAU', 6100.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (9511010, 109, 'Measured Ellipsoid Gaspra 2000 IAU', 9100.00, null, 9001, null, 4400.00, null,
 5200.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (9511010, 110, 'Best-fit Ellipsoid Gaspra 2000 IAU', 9100.00, null, 9001, null, 4700.00, null,
 5200.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (2431010, 111, 'Spherical Ida 2000 IAU', 15650.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (2431010, 112, 'Measured Ida 2000 IAU', 26800.00, null, 9001, null, 7600.00, null,
 12000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (2431010, 113, 'Best-fit Ellipsoid Ida 2000 IAU', 30000.00, null, 9001, null, 9300.00, null,
 12600.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (2000001, 114, 'Spherical Ceres 2000 IAU', 476200.00, null, 9001, null, null, null,
 null, null, null, null,
 null, null);
insert into ssbd_ellipsoid values (2000001, 115, 'Ellipsoidal Ceres 2000 IAU', 487300.00, null, 9001, null, 454700.00, null,
 null, null, null, null,
 null, null);
insert into ssbd_ellipsoid values (2000021, 116, 'Spherical Lutetia 2000 IAU', 52500.00, null, 9001, null, null, null,
 null, null, null, null,
 null, null);
insert into ssbd_ellipsoid values (2000021, 117, 'Triaxial Lutetia 2000 IAU', 62000.00, null, 9001, null, 46500.00, null,
 50500.00, null, null, null,
 null, null);
insert into ssbd_ellipsoid values (2000216, 118, 'Measured Kleopatra 2000 IAU', 108500.00, null, 9001, null, 40500.00, null,
 47000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (2000433, 119, 'Mean Spherical Eros 2000 IAU', 7311.00, 10., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (2000433, 120, 'Best-fit Spherical Eros 2000 IAU', 9236., 100., 9001, null, 7311.00, null,
 7311.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');


insert into ssbd_ellipsoid values (10, 121, 'Sun 2009 IAU', 696000000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (199, 122, 'Mercury 2009 IAU', 2439700.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (299, 123, 'Venus 2009 IAU', 6051800.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (399, 124, 'Spherical Earth 2009 IAU', 6371008.40, .1, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (399, 125, 'Ellipsoidial Earth 2009 IAU', 6378136.60, .1, 9001, null, 6356751.90, .1,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (301, 126, 'Moon 2009 IAU', 1737400.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (499, 127, 'Spherical Mars 2009 IAU', 3389500.00, 200., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (499, 128, 'Ellipsoidal Mars 2009 IAU', 3396190.00, 100., 9001, null, 3376200.00, 100.,
null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (499, 129, 'Quadriaxial Mars 2009 IAU', 3396190.00, 100., 9001, null, 3373190.00, 100.,
 3379210.00, 100., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (401, 130, 'Spherical Phobos 2009 IAU', 11080.00, 40., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (401, 131, 'Triaxial Phobos 2009 IAU', 13000.00, null, 9001, null, 9100.00, null,
 11400.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (402, 132, 'Spherical Deimos 2009 IAU', 6200.00, 250., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (402, 133, 'Triaxial Deimos 2009 IAU', 7800.00, null, 9001, null, 5100.00, null,
 6000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (599, 134, 'Spherical Jupiter 2009 IAU', 69911000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (599, 135, 'Ellipsoidal Jupiter 2009 IAU', 71492000.00, 4000., 9001, null, 66854000.00, 10000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (501, 136, 'Spherical Io 2009 IAU', 1821490.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (501, 137, 'Triaxial Io 2009 IAU', 1829400.00, null, 9001, null, 1815700.00, null,
 1819400.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (502, 138, 'Spherical Europa 2009 IAU', 1560800.00, 300., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (502, 139, 'Triaxial Europa 2009 IAU', 1562600.00, null, 9001, null, 1560950.00, null,
 1560300.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (503, 140, 'Ganymede 2009 IAU', 2631200.00, 1700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (504, 141, 'Callisto 2009 IAU', 2410300.00, 1500., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (505, 142, 'Spherical Amalthea 2009 IAU', 83500.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (505, 143, 'Ellipsoidal Amalthea 2009 IAU', 125000.00, null, 9001, null, 64000.00, null,
 73000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (506, 144, 'Himalia 2009 IAU', 85000.00, 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (507, 145, 'Elara 2009 IAU', 40000.00, 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (508, 146, 'Pasiphae 2009 IAU', 18000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (509, 147, 'Sinope 2009 IAU', 14000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (510, 148, 'Lysithea 2009 IAU', 12000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (511, 149, 'Carme 2009 IAU', 15000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (512, 150, 'Ananke 2009 IAU', 10000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (513, 151, 'Leda 2009 IAU', 5000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (514, 152, 'Spherical Thebe 2009 IAU', 49300.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (514, 153, 'Triaxial Thebe 2009 IAU', 58000.00, null, 9001, null, 42000.00, null,
 49000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (515, 154, 'Spherical Adrastea 2009 IAU', 8200.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (515, 155, 'Ellipsoidal Adrastea 2009 IAU', 10000.00, null, 9001, null, 7000.00, null,
 8000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (516, 156, 'Spherical Metis 2009 IAU', 21500.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (516, 157, 'Ellipsoidal Metis 2009 IAU', 30000.00, null, 9001, null, 17000.00, null,
 20000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (699, 158, 'Spherical Saturn 2009 IAU', 58232000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (699, 160, 'Ellipsoidal Saturn 2009 IAU', 60268000.00, 4000., 9001, null, 54364000.00, 10000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (601, 161, 'Spherical Mimas 2009 IAU', 198200.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (601, 162, 'Triaxial Mimas 2009 IAU', 207800.00, 500., 9001, null, 190600.00, 300.,
 196700.00, 500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (602, 163, 'Spherical Enceladus 2009 IAU', 252100.00, 200., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (602, 164, 'Triaxial Enceladus 2009 IAU', 256600.00, 600., 9001, null, 248300.00, 200.,
 251400.00, 200., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (603, 165, 'Spherical Tethys 2009 IAU', 531000.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (603, 166, 'Triaxial Tethys 2009 IAU', 538400.00, 300., 9001, null, 526300.00, 600.,
 528300.00, 1100., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (604, 167, 'Spherical Dione 2009 IAU', 561400.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (604, 168, 'Triaxial Dione 2009 IAU', 563400.00, 600., 9001, null, 559600.00, 400.,
 561300.00, 500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (605, 169, 'Spherical Rhea 2009 IAU', 763500.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (605, 170, 'Triaxial Rhea 2009 IAU', 765000.00, 700., 9001, null, 762400.00, 600.,
 763100.00, 600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (606, 171, 'Spherical Titan 2009 IAU', 2574730.00, 90., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (606, 172, 'Triaxial Titan 2009 IAU', 2575150.00, 20., 9001, null, 2574470.00, 60.,
 2574780.00, 60., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (607, 173, 'Shperical Hyperion 2009 IAU', 135000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (607, 174, 'Triaxial Hyperion 2009 IAU', 180100.00, 2000., 9001, null, 102700.00, 4500.,
 133000.00, 4500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (608, 175, 'Spherical Iapetus 2009 IAU', 734300.00, 2800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (608, 176, 'Ellipsoidal Iapetus 2009 IAU', 745700.00, 2900., 9001, null, 712100.00, 1600.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (609, 177, 'Spherical Phoebe 2009 IAU', 106500.00, 700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (609, 178, 'Triaxial Phoebe 2009 IAU', 109400.00, 1400., 9001, null, 101800.00, 300.,
 108500.00, 600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (610, 179, 'Spherical Janus 2009 IAU', 89500.00, 1400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (610, 180, 'Triaxial Janus 2009 IAU', 101500.00, 1900., 9001, null, 76300.00, 1200.,
 92500.00, 1200., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (611, 181, 'Spherical Epimetheus 2009 IAU', 58100.00, 1.8, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (611, 182, 'Triaxial Epimetheus 2009 IAU', 64900.00, 2000., 9001, null, 53100.00, 700.,
 57000.00, 3700., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (612, 183, 'Spherical Helene 2009 IAU', 17600.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (612, 184, 'Triaxial Helene 2009 IAU', 21700.00, 500., 9001, null, 13000.00, 300.,
 19100.00, 300., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (613, 185, 'Spherical Telesto 2009 IAU', 12400.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (613, 186, 'Triaxial Telesto 2009 IAU', 16300.00, 500., 9001, null, 10000.00, 300.,
 11800.00, 300., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (614, 187, 'Spherical Calypso 2009 IAU', 10700.00, 700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (614, 188, 'Triaxial Calypso 2009 IAU', 15100.00, 300., 9001, null, 7000.00, 600.,
 11500.00, 2200., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (615, 189, 'Spherical Atlas 2009 IAU', 15100.00, 900., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (615, 190, 'Triaxial Atlas 2009 IAU', 20400.00, 1200., 9001, null, 9400.00, 800.,
 17700.00, 700., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (616, 191, 'Spherical Prometheus 2009 IAU', 43100.00, 2700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (616, 192, 'Triaxial Prometheus 2009 IAU', 67800.00, 3100., 9001, null, 29700.00, 1900.,
 39700.00, 3100., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (617, 193, 'Spherical Pandora 2009 IAU', 40700.00, 1500., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (617, 194, 'Triaxial Pandora 2009 IAU', 52000.00, 1800., 9001, null, 32000.00, 900.,
 40500.00, 2000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (618, 195, 'Spherical Pan 2009 IAU', 14100.00, 1300., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (618, 196, 'Triaxial Pan 2009 IAU', 17200.00, 1900., 9001, null, 10400.00, 840.,
 15700.00, 1300., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (632, 197, 'Methone 2009 IAU', 1600.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (633, 198, 'Spherical Pallene 2009 IAU', 2500.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (633, 199, 'Triaxial Pallene 2009 IAU', 2900.00, 600., 9001, null, 2000.00, 400.,
 2800.00, 800., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (634, 200, 'Spherical Polydeuces 2009 IAU', 1300.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (634, 201, 'Triaxial Polydeuces 2009 IAU', 1500.00, 600., 9001, null, 1000.00, 200.,
 1200.00, 400., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (635, 202, 'Spherical Daphnis 2009 IAU', 3800.00, 800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (635, 203, 'Triaxial Daphnis 2009 IAU', 4300.00, 700., 9001, null, 3200.00, 800.,
 4100.00, 900., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (649, 204, 'Anthe 2009 IAU', 1000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (799, 205, 'Spherical Uranus 2009 IAU', 25362000.00, 7000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (799, 206, 'Ellipsoidal Uranus 2009 IAU', 25559000.00, 4000., 9001, null, 24973000.00, 20000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (701, 207, 'Spherical Ariel 2009 IAU', 578900.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (701, 208, 'Triaxial Ariel 2009 IAU', 581100.00, 900., 9001, null, 577700.00, 1000.,
 577900.00, 600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (702, 209, 'Umbriel 2009 IAU', 584700.00, 2800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (703, 210, 'Titania 2009 IAU', 788900.00, 1800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (704, 211, 'Oberon 2009 IAU', 761400.00, 2600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (705, 212, 'Spherical Miranda 2009 IAU', 235800.00, 700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (705, 213, 'Triaxial Miranda 2009 IAU', 240400.00, 600., 9001, null, 232900.00, 1200.,
 234200.00, 900., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (706, 214, 'Cordelia 2009 IAU', 13000.00, 2000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (707, 215, 'Ophelia 2009 IAU', 15000.00, 2000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (708, 216, 'Bianca 2009 IAU', 21000.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (709, 217, 'Cressida 2009 IAU', 31000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (710, 218, 'Desdemona 2009 IAU', 27000.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (711, 219, 'Juliet 2009 IAU', 42000.00, 5000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (712, 220, 'Portia 2009 IAU', 54000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (713, 221, 'Rosalind 2009 IAU', 27000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (714, 222, 'Belinda 2009 IAU', 33000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (715, 223, 'Puck 2009 IAU', 77000.00, 5000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (899, 224, 'Spherical Neptune 2009 IAU', 24622000.00, 19000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (899, 225, 'Ellipsoidal Neptune 2009 IAU', 24764000.00, 15000., 9001, null, 24341000.00, 30000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (801, 226, 'Triton 2009 IAU', 1352600.00, 2400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (802, 227, 'Nereid 2009 IAU', 170000.00, 25000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (803, 228, 'Naiad 2009 IAU', 29000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (804, 229, 'Thalassa 2009 IAU', 40000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (805, 230, 'Despina 2009 IAU', 74000.00, 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (806, 231, 'Galatea 2009 IAU', 79000.00, 12000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (807, 232, 'Spherical Larissa 2009 IAU', 96000.00, 7000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (807, 233, 'Ellipsoidal Larissa 2009 IAU', 104000.00, null, 9001, null, 89000.00, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (808, 234, 'Spherical Proteus 2009 IAU', 208000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (808, 235, 'Triaxial Proteus 2009 IAU', 218000.00, null, 9001, null, 201000.00, null,
 208000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (999, 236, 'Pluto 2009 IAU', 1195000.00, 5000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (901, 237, 'Charon 2009 IAU', 605000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (1000005, 238, 'Effective Borrelly 2009 IAU', 4220.00, 50., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (1000005, 239, 'Measured Borrelly 2009 IAU', 3500.00, 200., 9001, null, null, null,
  null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (1000036, 240, 'Triaxial Halley 2009 IAU', 8000.00, 500., 9001, null, 4000.00, 250.,
 4000.00, 250., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (1000093, 241, 'Spherical Tempel 1 2009 IAU', 3000.00, 100., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (1000093, 242, 'Biaxial Tempel 1 2009 IAU', 3700.00, null, 9001, null, 2500.00, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (1000107, 243, 'Spherical Wild 2 2009 IAU', 1975.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (1000107, 244, 'Triaxial Wild 2 2009 IAU', 2700.00, null, 9001, null, 1500.00, null,
 1900.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (9511010, 245, 'Spherical Gaspra 2009 IAU', 6100.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (9511010, 246, 'Triaxial Gaspra 2009 IAU', 9100.00, null, 9001, null, 4400.00, null,
 5200.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (2431010, 247, 'Spherical Ida 2009 IAU', 15650.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (2431010, 248, 'Triaxial Ida 2009 IAU', 26800.00, null, 9001, null, 7600.00, null,
 12000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (2000001, 249, 'Spherical Ceres 2009 IAU', 476200.00, 1700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (2000001, 250, 'Ellipsoidal Ceres 2009 IAU', 487300.00, 1800., 9001, null, 454700.00, 1600.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (2000004, 251, 'Vesta 2009 IAU', 289000.00, 5000., 9001, null, 229000.00, 5000.,
 280000.00, 5000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (2000021, 252, 'Spherical Lutetia 2009 IAU', 52500.00, 2500., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (2000021, 253, 'Triaxial Lutetia 2009 IAU', 62000.00, 2500., 9001, null, 46500.00, 6500.,
 50500.00, 2000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (2000216, 254, 'Kleopatra 2009 IAU', 108500.00, null, 9001, null, 40500.00, null,
 47000.00, null, null, null,
 null, null);
insert into ssbd_ellipsoid values (2000433, 255, 'Spherical Eros 2009 IAU', 8450.00, 20., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (2000433, 256, 'Triaxial Eros 2009 IAU', 17000.00, null, 9001, null, 5500.00, null,
 5500.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (2000511, 257, 'Spherical Davida 2009 IAU', 150000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (2000511, 258, 'Triaxial Davida 2009 IAU', 180000.00, null, 9001, null, 127000.00, null,
 147000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (2000253, 259, 'Spherical Mathilde 2009 IAU', 26500.00, 1300., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (2000253, 260, 'Triaxial Mathilde 2009 IAU', 33000.00, null, 9001, null, 23000.00, null,
 24000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (2002867, 261, 'Spherical Steins 2009 IAU', 2700.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (2002867, 262, 'Triaxial Steins 2009 IAU', 3240.00, null, 9001, null, 2040.00, null,
 2730.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (2004179, 263, 'Toutatis 2009 IAU', 2130.00, null, 9001, null, 850.00, null,
 1015.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values (2025143, 264, 'Itokawa 2009 IAU', 535.00, null, 9001, null, 209.00, null,
 294.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');






insert into ssbd_ellipsoid values (10, 265, 'Sun 2015 IAU', 695700000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (199, 266, 'Spherical Mercury 2015 IAU', 2439400.00, 100., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (199, 267, 'Ellipsoidal Mercury 2015 IAU', 2440530.00, 40., 9001, null, 2438260.00, 40.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (199, 268, 'Triaxial Mercury 2015 IAU', 2440530.00, 40., 9001, null, 2438260.00, 40.,
 2439280.00, 40., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (299, 269, 'Venus 2015 IAU', 6051800.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (399, 270, 'Spherical Earth 2015 IAU', 6371008.40, .1, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (399, 271, 'Ellipsoidal Earth 2015 IAU', 6378136.60, .1, 9001, null, 6356751.90, .1,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (399, 272, 'Ellipsoidal Earth 2015 IAU Resolution', 6378100., null, 9001, null, 6356800., null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (301, 273, 'Moon 2015 IAU', 1737400.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');

insert into ssbd_ellipsoid values (499, 274, 'Spherical Mars 2015 IAU', 3389500.00, 200., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (499, 275, 'Ellipsoidal Mars 2015 IAU', 3396190.00, 10., 9001, null, 3376200.00, 10.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (499, 276, 'Quadriaxial Mars 2015 IAU', 3396190.00, null, 9001, null, 3373190.00, 10.,
 null, null, 3379210., 10.,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (401, 277, 'Spherical Phobos 2015 IAU', 11080.00, 40., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (401, 278, 'Triaxial Phobos 2015 IAU', 13000.00, null, 9001, null, 9100.00, null,
 11400.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (402, 279, 'Spherical Deimos 2015 IAU', 6200.00, 250., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (402, 280, 'Triaxial Deimos 2015 IAU', 7800.00, null, 9001, null, 5100.00, null,
 6000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');

insert into ssbd_ellipsoid values (599, 281, 'Spherical Jupiter 2015 IAU', 69911000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (599, 282, 'Ellipsoidal Jupiter 2015 IAU', 71492000.00, 4000., 9001, null, 66854000.00, 10000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (501, 283, 'Spherical Io 2015 IAU', 1821490.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (501, 284, 'Triaxial Io 2015 IAU', 1829400.00, null, 9001, null, 1815700.00, null,
 1819400.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (502, 285, 'Spherical Europa 2015 IAU', 1560800.00, 300., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (502, 286, 'Triaxial Europa 2015 IAU', 1562600.00, null, 9001, null, 1559500.00, null,
 1560300.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (503, 287, 'Ganymede 2015 IAU', 2631200.00, 1700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (504, 288, 'Callisto 2015 IAU', 2410300.00, 1500., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (505, 289, 'Spherical Amalthea 2015 IAU', 83500.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (505, 290, 'Triaxial Amalthea 2015 IAU', 125000.00, null, 9001, null, 64000.00, null,
 73000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (506, 291, 'Himalia 2015 IAU', 85000.00, 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (507, 292, 'Elara 2015 IAU', 40000.00, 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (508, 293, 'Pasiphae 2015 IAU', 18000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (509, 294, 'Sinope 2015 IAU', 14000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (510, 295, 'Lysithea 2015 IAU', 12000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (511, 296, 'Carme 2015 IAU', 15000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (512, 297, 'Ananke 2015 IAU', 10000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (513, 298, 'Leda 2015 IAU', 5000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (514, 299, 'Spherical Thebe 2015 IAU', 49300.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (514, 300, 'Triaxial Thebe 2015 IAU', 58000.00, null, 9001, null, 42000.00, null,
 49000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (515, 301, 'Spherical Adrastea 2015 IAU', 8200.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (515, 302, 'Triaxial Adrastea 2015 IAU', 10000.00, null, 9001, null, 7000.00, null,
 8000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (516, 303, 'Spherical Metis 2015 IAU', 21500.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (516, 304, 'Triaxial Metis 2015 IAU', 30000.00, null, 9001, null, 17000.00, null,
 20000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');

insert into ssbd_ellipsoid values (699, 305, 'Spherical Saturn 2015 IAU', 58232000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (699, 306, 'Ellipsoidal Saturn 2015 IAU', 60268000.00, 4000., 9001, null, 54364000.00, 10000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (601, 307, 'Spherical Mimas 2015 IAU', 198200.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (601, 308, 'Triaxial Mimas 2015 IAU', 207800.00, 500., 9001, null, 190600.00, 300.,
 196700.00, 500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (602, 309, 'Spherical Enceladus 2015 IAU', 252100.00, 200., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (602, 310, 'Triaxial Enceladus 2015 IAU', 256600.00, 600., 9001, null, 248300.00, 200.,
 251400.00, 200., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (603, 311, 'Spherical Tethys 2015 IAU', 531000.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (603, 312, 'Triaxial Tethys 2015 IAU', 538400.00, 300., 9001, null, 526300.00, 600.,
 528300.00, 1100., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (604, 313, 'Spherical Dione 2015 IAU', 561400.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (604, 314, 'Triaxial Dione 2015 IAU', 563400.00, 600., 9001, null, 559600.00, 400.,
 561300.00, 500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (605, 315, 'Spherical Rhea 2015 IAU', 763500.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (605, 316, 'Triaxial Rhea 2015 IAU', 765000.00, 700., 9001, null, 762400.00, 600.,
 763100.00, 600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (606, 317, 'Spherical Titan 2015 IAU', 2575000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (606, 318, 'Best-fit Spherical Titan 2015 IAU', 2574730.00, 90., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (606, 319, 'Triaxial Titan 2015 IAU', 2575150.00, 20., 9001, null, 2574470.00, 60.,
 2574780.00, 60., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (607, 320, 'Spherical Hyperion 2015 IAU', 135000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (607, 321, 'Triaxial Hyperion 2015 IAU', 180100.00, 2000., 9001, null, 102700.00, 4500.,
 133000.00, 4500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (608, 322, 'Spherical Iapetus 2015 IAU', 734300.00, 2800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (608, 323, 'Triaxial Iapetus 2015 IAU', 745700.00, 2900., 9001, null, 712100.00, 1600.,
 745700.00, 2900., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (609, 324, 'Spherical Phoebe 2015 IAU', 106500.00, 700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (609, 325, 'Triaxial Phoebe 2015 IAU', 109400.00, 1400., 9001, null, 101800.00, 300.,
 108500.00, 600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (610, 326, 'Spherical Janus 2015 IAU', 89200.00, 800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (610, 327, 'Triaxial Janus 2015 IAU', 101700.00, 1600., 9001, null, 76300.00, 400.,
 93000.00, 700., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (611, 328, 'Spherical Epimetheus 2015 IAU', 58200.00, 1200., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (611, 329, 'Triaxial Epimetheus 2015 IAU', 64900.00, 1300., 9001, null, 53000.00, 500.,
 57300.00, 2500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (612, 330, 'Spherical Helene 2015 IAU', 18000.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (612, 331, 'Triaxial Helene 2015 IAU', 22500.00, 500., 9001, null, 13300.00, 200.,
 19600.00, 300., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (613, 332, 'Spherical Telesto 2015 IAU', 12400.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (613, 333, 'Triaxial Telesto 2015 IAU', 16300.00, 500., 9001, null, 9800.00, 300.,
 11800.00, 300., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (614, 334, 'Spherical Calypso 2015 IAU', 9600.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (614, 335, 'Triaxial Calypso 2015 IAU', 15300.00, 300., 9001, null, 6300.00, 600.,
 9300.00, 2200., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (615, 336, 'Spherical Atlas 2015 IAU', 15100.00, 800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (615, 337, 'Triaxial Atlas 2015 IAU', 20500.00, 900., 9001, null, 9400.00, 800.,
 17800.00, 700., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (616, 338, 'Spherical Prometheus 2015 IAU', 43100.00, 1200., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (616, 339, 'Triaxial Prometheus 2015 IAU', 68200.00, 800., 9001, null, 28200.00, 800.,
 41600.00, 1800., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (617, 340, 'Spherical Pandora 2015 IAU', 40600.00, 1500., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (617, 341, 'Triaxial Pandora 2015 IAU', 52200.00, 1800., 9001, null, 31500.00, 900.,
 40800.00, 2000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (618, 342, 'Spherical Pan 2015 IAU', 14000.00, 1200., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (618, 343, 'Triaxial Pan 2015 IAU', 17200.00, 1700., 9001, null, 10400.00, 900.,
 15400.00, 1200., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (632, 344, 'Spherical Methone 2015 IAU', 1450.00, 30., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (632, 345, 'Triaxial Methone 2015 IAU', 1940.00, 20., 9001, null, 1210.00, 20.,
 1290.00, 40., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (633, 346, 'Spherical Pallene 2015 IAU', 2230.00, 70., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (633, 347, 'Triaxial Pallene 2015 IAU', 2880.00, 70., 9001, null, 1800.00, 70.,
 2080.00, 70., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (634, 348, 'Spherical Polydeuces 2015 IAU', 1300.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (634, 349, 'Triaxial Polydeuces 2015 IAU', 1500.00, 600., 9001, null, 1000.00, 200.,
 1200.00, 400., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (635, 350, 'Spherical Daphnis 2015 IAU', 3800.00, 800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (635, 351, 'Triaxial Daphnis 2015 IAU', 4600.00, 700., 9001, null, 2800.00, 800.,
 4500.00, 900., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (649, 352, 'Anthe 2015 IAU', 500.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (653, 353, 'Spherical Aegaeon 2015 IAU', 330.00, 60., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (653, 354, 'Triaxial Aegaeon 2015 IAU', 700.00, 50., 9001, null, 200.00, 80.,
 250.00, 60., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');

insert into ssbd_ellipsoid values (799, 355, 'Spherical Uranus 2015 IAU', 25362000.00, 7000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (799, 356, 'Ellipsoidal Uranus 2015 IAU', 25559000.00, 4000., 9001, null, 24973000.00, 20000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (701, 357, 'Spherical Ariel 2015 IAU', 578900.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (701, 358, 'Triaxial Ariel 2015 IAU', 581100.00, 900., 9001, null, 577700.00, 100.,
 577900.00, 600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (702, 359, 'Umbriel 2015 IAU', 584700.00, 2800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (703, 360, 'Titania 2015 IAU', 788900.00, 1800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (704, 361, 'Oberon 2015 IAU', 761400.00, 2600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (705, 362, 'Spherical Miranda 2015 IAU', 235800.00, 700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (705, 363, 'Triaxial Miranda 2015 IAU', 240400.00, 600., 9001, null, 232900.00, 1200.,
 234200.00, 900., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (706, 364, 'Cordelia 2015 IAU', 13000.00, 2000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (707, 365, 'Ophelia 2015 IAU', 15000.00, 2000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (708, 366, 'Bianca 2015 IAU', 21000.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (709, 367, 'Cressida 2015 IAU', 31000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (710, 368, 'Desdemona 2015 IAU', 27000.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (711, 369, 'Juliet 2015 IAU', 42000.00, 5000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (712, 370, 'Portia 2015 IAU', 54000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (713, 371, 'Rosalind 2015 IAU', 27000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (714, 372, 'Belinda 2015 IAU', 33000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (715, 373, 'Puck 2015 IAU', 77000.00, 51900., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');

insert into ssbd_ellipsoid values (899, 374, 'Spherical Neptune 2015 IAU', 24622000.00, 19000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (899, 375, 'Ellipsoidal Neptune 2015 IAU', 24764000.00, 15000., 9001, null, 24341000.00, 30000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (801, 376, 'Triton 2015 IAU', 1352600.00, 2400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (802, 377, 'Nereid 2015 IAU', 170000.00, 25000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (803, 378, 'Naiad 2015 IAU', 29000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (804, 379, 'Thalassa 2015 IAU', 40000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (805, 380, 'Despina 2015 IAU', 74000.00, 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (806, 381, 'Galatea 2015 IAU', 79000.00, 12000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (807, 382, 'Spherical Larissa 2015 IAU', 96000.00, 7000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (807, 383, 'Ellipsoidal Larissa 2015 IAU', 104000.00, null, 9001, null, 89000.00, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (808, 384, 'Spherical Proteus 2015 IAU', 208000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (808, 385, 'Triaxial Proteus 2015 IAU', 218000.00, null, 9001, null, 201000.00, null,
 208000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');

insert into ssbd_ellipsoid values (999, 386, 'Pluto 2015 IAU', 1188300.00, 1600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (901, 387, 'Charon 2015 IAU', 606000.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (1000005, 388, 'Spherical Borrelly 2015 IAU', 4220.00, 50., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (1000005, 389, 'Measured Borrelly 2015 IAU', 3500.00, 200., 9001, null, -1, null,
  null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (1000012, 390, 'Spherical Churyumov-Gerasimenko 2015 IAU', 1650.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (1000012, 391, 'Triaxial Churyumov-Gerasimenko 2015 IAU', 2400.00, null, 9001, null, 1200.00, null,
 1550.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (1000036, 392, 'Halley 2015 IAU', 8000.00, 500., 9001, null, 4000.00, 250.,
 4000.00, 250., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (1000041, 393, 'Spherical Hartley 2 2015 IAU', 580.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (1000041, 394, 'Triaxial Hartley 2 2015 IAU', 340.00, null, 9001, null, 1160.00, null,
 1160.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (1000093, 395, 'Spherical Tempel 1 2015 IAU', 3000.00, 100., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (1000093, 396, 'Biaxial Tempel 1 2015 IAU', 3700.00, null, 9001, null, 2500., null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (1000107, 397, 'Spherical Wild 2 2015 IAU', 1975.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (1000107, 398, 'Triaxial Wild 2 2015 IAU', 2700.00, null, 9001, null, 1500.00, null,
 1900.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (9511010, 399, 'Spherical Gaspra 2015 IAU', 6100.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (9511010, 400, 'Triaxial Gaspra 2015 IAU', 9100.00, null, 9001, null, 4400.00, null,
 5200.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (2431010, 401, 'Spherical Ida 2015 IAU', 15650.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (2431010, 402, 'Triaxial Ida 2015 IAU', 26800.00, null, 9001, null, 7600.00, null,
 12000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (2000001, 403, 'Spherical Ceres 2015 IAU', 470000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (2000001, 404, 'Ellipsoidal Ceres 2015 IAU', 487300.00, null, 9001, null, 446000.00, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (2000004, 405, 'Vesta 2015 IAU', 289000.00, 5000., 9001, null, 229000.00, 5000.,
 280000.00, 5000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (2000016, 406, 'Spherical Psyche 2015 IAU', 113000.00, 23000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (2000016, 407, 'Triaxial Psyche 2015 IAU', 139500.00, 13950., 9001, null, 94500.00, 9450.,
 116000.0, 11600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (2000021, 408, 'Spherical Lutetia 2015 IAU', 52500.00, 2500., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (2000021, 409, 'Triaxial Lutetia 2015 IAU', 62000.00, 2500., 9001, null, 46500.00, 6500.,
 50500.00, 2000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (-2000052, 410, 'Spherical 52 Europa 2015 IAU', 157500.00, 7000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (-2000052, 411, 'Triaxial 52 Europa 2015 IAU', 189500.00, 16000., 9001, null, 124500.00, 10000.,
 165000.00, 8000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (2000216, 412, 'Kleopatra 2015 IAU', 108500.00, null, 9001, null, 40500.00, null,
 47000.00, null, null, null,
 null, null);
insert into ssbd_ellipsoid values (2000433, 413, 'Spherical Eros 2015 IAU', 8450.00, 20., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (2000433, 414, 'Triaxial Eros 2015 IAU', 17000.00, null, 9001, null, 5500.00, null,
 5500.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (2000511, 415, 'Spherical Davida 2015 IAU', 150000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (2000511, 416, 'Triaxial Davida 2015 IAU', 180000.00, null, 9001, null, 127000.00, null,
 147000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (2000253, 417, 'Spherical Mathilde 2015 IAU', 26500.00, 1300., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (2000253, 418, 'Triaxial Mathilde 2015 IAU', 33000.00, null, 9001, null, 23000.00, null,
 24000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (2002867, 419, 'Spherical Steins 2015 IAU', 2700.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (2002867, 420, 'Triaxial Steins 2015 IAU', 3240.00, null, 9001, null, 2040.00, null,
 2730.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (2004179, 421, 'Toutatis 2015 IAU', 2130.00, null, 9001, null, 850.00, null,
 1015.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values (2025143, 422, 'Itokawa 2015 IAU', 268.00, null, 9001, null, 104.00, null,
 147.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');


insert into ssbd_primemeridiansystem values (1, 'Mercury crust system', 199, null, null);
insert into ssbd_primemeridiansystem values (2, 'Venus crust system', 299, null, null);
insert into ssbd_primemeridiansystem values (3, 'Mars crust system', 499, null, null);
insert into ssbd_primemeridiansystem values (4, 'System I Jupiter', 599, 'Refers to the mean atmospheric equatorial rotation.', null);
insert into ssbd_primemeridiansystem values (5, 'System II Jupiter', 599, 'Refers to the mean atmospheric rotation north of the south component of the north equatorial belt, and south of the north component of the south equatorial belt.', null);
insert into ssbd_primemeridiansystem values (6, 'System III Jupiter', 599, 'Refers to the magnetic field rotation.', null);
insert into ssbd_primemeridiansystem values (7, 'System I Saturn', 699, 'Refers to the mean atmospheric equatorial rotation.', null);
insert into ssbd_primemeridiansystem values (8, 'System II Saturn', 699, 'Refers to the mean atmospheric rotation north of the south component of the north equatorial belt, and south of the north component of the south equatorial belt.', null);
insert into ssbd_primemeridiansystem values (9, 'System III Saturn', 699, 'Refers to the magnetic field rotation.', null);
insert into ssbd_primemeridiansystem values (10, 'System I Uranus', 799, 'Refers to the mean atmospheric equatorial rotation.', null);
insert into ssbd_primemeridiansystem values (11, 'System II Uranus', 799, 'Refers to the mean atmospheric rotation north of the south component of the north equatorial belt, and south of the north component of the south equatorial belt.', null);
insert into ssbd_primemeridiansystem values (12, 'System III Uranus', 799, 'Refers to the magnetic field rotation.', null);
insert into ssbd_primemeridiansystem values (13, 'System II Neptune', 799, 'Refers to the rotation of optically observed features in the Neptunian atmosphere.', null);


insert into ssbd_primemeridian values (1, 'Hun Kal Mercury Meridian', 0., 'prograde', 20., 20., 'prograde', 9102, 1, null, null);
insert into ssbd_primemeridian values (2, 'Ariadne Venus Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, 2, null, null);
insert into ssbd_primemeridian values (3, 'Airy-0 Mars Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, 3, null, null);
insert into ssbd_primemeridian values (4, 'System I Jupiter Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, 4, null, null);
insert into ssbd_primemeridian values (5, 'System II Jupiter Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, 5, null, null);
insert into ssbd_primemeridian values (6, 'System III Jupiter Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, 6, null, null);
insert into ssbd_primemeridian values (7, 'System I Saturn Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, 7, null, null);
insert into ssbd_primemeridian values (8, 'System II Saturn Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, 8, null, null);
insert into ssbd_primemeridian values (9, 'System III Saturn Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, 9, null, null);
insert into ssbd_primemeridian values (10, 'System I Uranus Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, 10, null, null);
insert into ssbd_primemeridian values (11, 'System II Uranus Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, 11, null, null);
insert into ssbd_primemeridian values (12, 'System III Uranus Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, 12, null, null);
insert into ssbd_primemeridian values (13, 'System II Neptune Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, 13, null, null);

insert into ssbd_range values (1, -180., 180., 'Typically used for earth longitudes.', null);
insert into ssbd_range values (2, 0., 360., 'Typically used for planetary longitudes.', null);


insert into ssbd_datum values (1, 'Mercury 2000', 'geodetic', null, null, 1, 1, 'Planetology.', null, null);


insert into ssbd_coordinatereferencesystem values (1, 'Mercury 2000 planetocentric 3D', 'planetocentric 3D', 6404, 1, null, null, null, null, null, null);
insert into ssbd_coordinatereferencesystem values (2, 'Mercury 2000 planetographic 3D', 'planetographic 3D', 6423, 1, null, null, null, null, null, null);


insert into ssbd_coordinatereferencesystemrange values (1, 2, 61, null, null);
insert into ssbd_coordinatereferencesystemrange values (2, 2, 109, null, null);

commit;
