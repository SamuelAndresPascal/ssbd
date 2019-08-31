-- title: SSBD (Solar System Body Database) data
--
--
--
-- author: Samuel Andrés

begin;

-- les codes négatifs sont ceux qui n'ont pas été trouvés dans le répertoire NAIF
insert into ssbd_body values ('0', 'Sun', 'direct', null, null);
insert into ssbd_body values ('1:99', 'Mercury', 'direct', null, null);
insert into ssbd_body values ('2:99', 'Venus', 'indirect', null, null);
insert into ssbd_body values ('3:99', 'Earth', 'direct', null, null);
insert into ssbd_body values ('3:01', 'Moon', 'direct', null, null);
insert into ssbd_body values ('4:99', 'Mars', 'direct', null, null);
insert into ssbd_body values ('4:01', 'Phobos', 'direct', null, null);
insert into ssbd_body values ('4:02', 'Deimos', 'direct', null, null);
insert into ssbd_body values ('5:99', 'Jupiter', 'direct', null, null);
insert into ssbd_body values ('5:01', 'Io', 'direct', null, null);
insert into ssbd_body values ('5:02', 'Europa', 'direct', null, null);
insert into ssbd_body values ('5:03', 'Ganymede', 'direct', null, null);
insert into ssbd_body values ('5:04', 'Callisto', 'direct', null, null);
insert into ssbd_body values ('5:05', 'Amalthea', 'direct', null, null);
insert into ssbd_body values ('5:06', 'Himalia', 'direct', null, null);
insert into ssbd_body values ('5:07', 'Elara', 'direct', null, null);
insert into ssbd_body values ('5:08', 'Pasiphae', 'direct', null, null);
insert into ssbd_body values ('5:09', 'Sinope', 'direct', null, null);
insert into ssbd_body values ('5:10', 'Lysithea', 'direct', null, null);
insert into ssbd_body values ('5:11', 'Carme', 'direct', null, null);
insert into ssbd_body values ('5:12', 'Ananke', 'direct', null, null);
insert into ssbd_body values ('5:13', 'Leda', 'direct', null, null);
insert into ssbd_body values ('5:14', 'Thebe', 'direct', null, null);
insert into ssbd_body values ('5:15', 'Adrastea', 'direct', null, null);
insert into ssbd_body values ('5:16', 'Metis', 'direct', null, null);
insert into ssbd_body values ('5:17', 'Callirrhoe', 'direct', null, null);
insert into ssbd_body values ('5:18', 'Themisto', 'direct', null, null);
insert into ssbd_body values ('5:19', 'Magaclite', 'direct', null, null);
insert into ssbd_body values ('5:20', 'Taygete', 'direct', null, null);
insert into ssbd_body values ('5:21', 'Chaldene', 'direct', null, null);
insert into ssbd_body values ('5:22', 'Harpalyke', 'direct', null, null);
insert into ssbd_body values ('5:23', 'Kalyke', 'direct', null, null);
insert into ssbd_body values ('5:24', 'Iocaste', 'direct', null, null);
insert into ssbd_body values ('5:25', 'Erinome', 'direct', null, null);
insert into ssbd_body values ('5:26', 'Isonoe', 'direct', null, null);
insert into ssbd_body values ('5:27', 'Praxidike', 'direct', null, null);
insert into ssbd_body values ('5:28', 'Autonoe', 'direct', null, null);
insert into ssbd_body values ('5:29', 'Thyone', 'direct', null, null);
insert into ssbd_body values ('5:30', 'Hermippe', 'direct', null, null);
insert into ssbd_body values ('5:31', 'Aitne', 'direct', null, null);
insert into ssbd_body values ('5:32', 'Eurydome', 'direct', null, null);
insert into ssbd_body values ('5:33', 'Euanthe', 'direct', null, null);
insert into ssbd_body values ('5:34', 'Euporie', 'direct', null, null);
insert into ssbd_body values ('5:35', 'Orthosie', 'direct', null, null);
insert into ssbd_body values ('5:36', 'Sponde', 'direct', null, null);
insert into ssbd_body values ('5:37', 'Kale', 'direct', null, null);
insert into ssbd_body values ('5:38', 'Pasithee', 'direct', null, null);
insert into ssbd_body values ('5:39', 'Hegemone', 'direct', null, null);
insert into ssbd_body values ('5:40', 'Mneme', 'direct', null, null);
insert into ssbd_body values ('5:41', 'Aoede', 'direct', null, null);
insert into ssbd_body values ('5:42', 'Thelxinoe', 'direct', null, null);
insert into ssbd_body values ('5:43', 'Arche', 'direct', null, null);
insert into ssbd_body values ('5:44', 'Kallichore', 'direct', null, null);
insert into ssbd_body values ('5:45', 'Helike', 'direct', null, null);
insert into ssbd_body values ('5:46', 'Carpo', 'direct', null, null);
insert into ssbd_body values ('5:47', 'Eukelade', 'direct', null, null);
insert into ssbd_body values ('5:48', 'Cyllene', 'direct', null, null);
insert into ssbd_body values ('5:49', 'Kore', 'direct', null, null);
insert into ssbd_body values ('5:50', 'Herse', 'direct', null, null);
insert into ssbd_body values ('6:99', 'Saturn', 'direct', null, null);
insert into ssbd_body values ('6:01', 'Mimas', 'direct', null, null);
insert into ssbd_body values ('6:02', 'Enceladus', 'direct', null, null);
insert into ssbd_body values ('6:03', 'Tethys', 'direct', null, null);
insert into ssbd_body values ('6:04', 'Dione', 'direct', null, null);
insert into ssbd_body values ('6:05', 'Rhea', 'direct', null, null);
insert into ssbd_body values ('6:06', 'Titan', 'direct', null, null);
insert into ssbd_body values ('6:07', 'Hyperion', 'direct', null, null);
insert into ssbd_body values ('6:08', 'Iapetus', 'direct', null, null);
insert into ssbd_body values ('6:09', 'Phoebe', 'direct', null, null);
insert into ssbd_body values ('6:10', 'Janus', 'direct', null, null);
insert into ssbd_body values ('6:11', 'Epimetheus', 'direct', null, null);
insert into ssbd_body values ('6:12', 'Helene', 'direct', null, null);
insert into ssbd_body values ('6:13', 'Telesto', 'direct', null, null);
insert into ssbd_body values ('6:14', 'Calypso', 'direct', null, null);
insert into ssbd_body values ('6:15', 'Atlas', 'direct', null, null);
insert into ssbd_body values ('6:16', 'Prometheus', 'direct', null, null);
insert into ssbd_body values ('6:17', 'Pandora', 'direct', null, null);
insert into ssbd_body values ('6:18', 'Pan', 'direct', null, null);
insert into ssbd_body values ('6:19', 'Ymir', null, null, null);
insert into ssbd_body values ('6:20', 'Paaliaq', null, null, null);
insert into ssbd_body values ('6:21', 'Tarvos', null, null, null);
insert into ssbd_body values ('6:22', 'Ijiraq', null, null, null);
insert into ssbd_body values ('6:23', 'Suttungr', null, null, null);
insert into ssbd_body values ('6:24', 'Kiviuq', null, null, null);
insert into ssbd_body values ('6:25', 'Mundilfari', null, null, null);
insert into ssbd_body values ('6:26', 'Albiorix', null, null, null);
insert into ssbd_body values ('6:27', 'Skathi', null, null, null);
insert into ssbd_body values ('6:28', 'Erriapo', null, null, null);
insert into ssbd_body values ('6:29', 'Siarnaq', null, null, null);
insert into ssbd_body values ('6:30', 'Thrymr', null, null, null);
insert into ssbd_body values ('6:31', 'Narvi', null, null, null);
insert into ssbd_body values ('6:32', 'Methone', null, null, null);
insert into ssbd_body values ('6:33', 'Pallene', null, null, null);
insert into ssbd_body values ('6:34', 'Polydeuces', null, null, null);
insert into ssbd_body values ('6:35', 'Daphnis', null, null, null);
insert into ssbd_body values ('6:36', 'Aegir', null, null, null);
insert into ssbd_body values ('6:37', 'Bebhionn', null, null, null);
insert into ssbd_body values ('6:38', 'Bergelmir', null, null, null);
insert into ssbd_body values ('6:39', 'Bestla', null, null, null);
insert into ssbd_body values ('6:40', 'Farbauti', null, null, null);
insert into ssbd_body values ('6:41', 'Fenrir', null, null, null);
insert into ssbd_body values ('6:42', 'Fornjot', null, null, null);
insert into ssbd_body values ('6:43', 'Hati', null, null, null);
insert into ssbd_body values ('6:44', 'Hyrrokkin', null, null, null);
insert into ssbd_body values ('6:45', 'Kari', null, null, null);
insert into ssbd_body values ('6:46', 'Loge', null, null, null);
insert into ssbd_body values ('6:47', 'Skoll', null, null, null);
insert into ssbd_body values ('6:48', 'Sutur', null, null, null);
insert into ssbd_body values ('6:49', 'Anthe', null, null, null);
insert into ssbd_body values ('6:50', 'Jarnsaxa', null, null, null);
insert into ssbd_body values ('6:51', 'Greip', null, null, null);
insert into ssbd_body values ('6:52', 'Tarqeq', null, null, null);
insert into ssbd_body values ('6:53', 'Aegaeon', null, null, null);
insert into ssbd_body values ('7:99', 'Uranus', 'indirect', null, null);
insert into ssbd_body values ('7:01', 'Ariel', 'indirect', null, null);
insert into ssbd_body values ('7:02', 'Umbriel', 'indirect', null, null);
insert into ssbd_body values ('7:03', 'Titania', 'indirect', null, null);
insert into ssbd_body values ('7:04', 'Oberon', 'indirect', null, null);
insert into ssbd_body values ('7:05', 'Miranda', 'indirect', null, null);
insert into ssbd_body values ('7:06', 'Cordelia', 'indirect', null, null);
insert into ssbd_body values ('7:07', 'Ophelia', 'indirect', null, null);
insert into ssbd_body values ('7:08', 'Bianca', 'indirect', null, null);
insert into ssbd_body values ('7:09', 'Cressida', 'indirect', null, null);
insert into ssbd_body values ('7:10', 'Desdemona', 'indirect', null, null);
insert into ssbd_body values ('7:11', 'Juliet', 'indirect', null, null);
insert into ssbd_body values ('7:12', 'Portia', 'indirect', null, null);
insert into ssbd_body values ('7:13', 'Rosalind', 'indirect', null, null);
insert into ssbd_body values ('7:14', 'Belinda', 'indirect', null, null);
insert into ssbd_body values ('7:15', 'Puck', 'indirect', null, null);
insert into ssbd_body values ('7:16', 'Caliban', 'direct', null, null);
insert into ssbd_body values ('7:17', 'Sycorax', 'direct', null, null);
insert into ssbd_body values ('7:18', 'Prospero', 'direct', null, null);
insert into ssbd_body values ('7:19', 'Setebos', 'direct', null, null);
insert into ssbd_body values ('7:20', 'Stephano', 'direct', null, null);
insert into ssbd_body values ('7:21', 'Trinculo', 'direct', null, null);
insert into ssbd_body values ('7:22', 'Francisco', 'direct', null, null);
insert into ssbd_body values ('7:23', 'Margaret', 'direct', null, null);
insert into ssbd_body values ('7:24', 'Ferdinand', 'direct', null, null);
insert into ssbd_body values ('7:25', 'Perdita', 'direct', null, null);
insert into ssbd_body values ('7:26', 'Mab', 'direct', null, null);
insert into ssbd_body values ('7:27', 'Cupid', 'direct', null, null);
insert into ssbd_body values ('8:99', 'Neptune', 'direct', null, null);
insert into ssbd_body values ('8:01', 'Triton', 'indirect', null, null);
insert into ssbd_body values ('8:02', 'Nereid', 'direct', null, null);
insert into ssbd_body values ('8:03', 'Naiad', 'direct', null, null);
insert into ssbd_body values ('8:04', 'Thalassa', 'direct', null, null);
insert into ssbd_body values ('8:05', 'Despina', 'direct', null, null);
insert into ssbd_body values ('8:06', 'Galatea', 'direct', null, null);
insert into ssbd_body values ('8:07', 'Larissa', 'direct', null, null);
insert into ssbd_body values ('8:08', 'Proteus', 'direct', null, null);
insert into ssbd_body values ('8:09', 'Halimede', 'direct', null, null);
insert into ssbd_body values ('8:10', 'Psamathe', 'direct', null, null);
insert into ssbd_body values ('8:11', 'Sao', 'direct', null, null);
insert into ssbd_body values ('8:12', 'Laomedeia', 'direct', null, null);
insert into ssbd_body values ('8:13', 'Neso', 'direct', null, null);
insert into ssbd_body values ('9:99', 'Pluto', 'indirect', null, null);
insert into ssbd_body values ('9:01', 'Charon', 'direct', null, null);
insert into ssbd_body values ('1000005', 'Borrelly', 'direct', null, null);
insert into ssbd_body values ('1000012', 'Churyumov-Gerasimenko', null, null, null);
insert into ssbd_body values ('1000036', 'Halley', 'direct', null, null);
insert into ssbd_body values ('1000041', 'Hartley 2', null, null, null);
insert into ssbd_body values ('1000093', 'Tempel 1', 'direct', null, null);
insert into ssbd_body values ('1000107', 'Wild 2', 'direct', null, null);
insert into ssbd_body values ('9511010', 'Gaspra', 'direct', null, null);
insert into ssbd_body values ('2431010', 'Ida', 'direct', null, null);
insert into ssbd_body values ('2431011', 'Dactyl', 'direct', null, null);
insert into ssbd_body values ('2000001', 'Ceres', 'direct', null, null);
insert into ssbd_body values ('2000002', 'Pallas', 'direct', null, null);
insert into ssbd_body values ('2000004', 'Vesta', 'direct', null, null);
insert into ssbd_body values ('2000016', 'Psyche', null, null, null);
insert into ssbd_body values ('2000021', 'Lutetia', 'direct', null, null);
insert into ssbd_body values ('2000216', 'Kleopatra', 'direct', null, null);
insert into ssbd_body values ('2000433', 'Eros', 'direct', null, null);
insert into ssbd_body values ('2000511', 'Davida', 'direct', null, null);
insert into ssbd_body values ('2000253', 'Mathilde', 'direct', null, null);
insert into ssbd_body values ('2002867', 'Steins', 'direct', null, null);
-- codes en doublons : lequel est le bon ?
-- insert into ssbd_body values (2009969, '1992KD', 'direct', null, null);
-- insert into ssbd_body values (2009969, 'Braille', 'direct', null, null);
insert into ssbd_body values ('2004015', 'Wilson-Harrington', 'direct', null, null);
insert into ssbd_body values ('2004179', 'Toutatis', 'direct', null, null);
insert into ssbd_body values ('2025143', 'Itokawa', 'direct', null, null);
insert into ssbd_body values ('-2000052', '52 Europa', null, null, null);


insert into ssbd_ellipsoid values ('1:99', 1, 'Mercury 2000 IAU', 2439700.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2:99', 2, 'Venus 2000 IAU', 6051800.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('3:99', 3, 'Spherical Earth 2000 IAU', 6371000.00, 10., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('3:99', 4, 'Ellipsoidal Earth 2000 IAU', 6378140.00, 10., 9001, null, 6356750.00, 10.,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('4:99', 5, 'Spherical Mars 2000 IAU', 3389500.00, 200., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('4:99', 6, 'Ellipsoidal Mars 2000 IAU', 3396190.00, 100., 9001, null, 3376200.00, 100.,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('4:99', 7, 'Quadriaxial Mars 2000 IAU', 3396190.00, 100., 9001, null, 3373190.00, 100.,
 null, null, 3379210.00, 100.,
 'This ellipsoid is considered quadriaxial even if subplanetary and along orbit equatorial axes are equal.',
 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('5:99', 8, 'Spherical Jupiter 2000 IAU', 69911000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('5:99', 9, 'Ellipsoidal Jupiter 2000 IAU', 71492000.00,  4000., 9001, null, 66854000.00, 10000.,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('6:99', 10, 'Spherical Saturn 2000 IAU', 58232000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('6:99', 11, 'Ellipsoidal Saturn 2000 IAU', 60268000.00,  4000., 9001, null, 54364000.00, 10000.,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('7:99', 12, 'Spherical Uranus 2000 IAU', 25362000.00, 7000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('7:99', 13, 'Ellipsoidal Uranus 2000 IAU', 25559000.00,  4000., 9001, null, 24973000.00, 20000.,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('8:99', 14, 'Spherical Neptune 2000 IAU', 24622000.00, 19000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('8:99', 15, 'Ellipsoidal Neptune 2000 IAU', 24764000.00,  15000., 9001, null, 24341000.00, 30000.,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('9:99', 16, 'Spherical Pluto 2000 IAU', 1195000.00,  5000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');

insert into ssbd_ellipsoid values ('3:01', 17, 'Spherical Moon 2000 IAU', 1737400.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('4:01', 18, 'Spherical Phobos 2000 IAU', 11100.00, 150., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('4:01', 19, 'Triaxial Phobos 2000 IAU', 13400.00, null, 9001, null, 9200.00, null,
 11200.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('4:02', 20, 'Spherical Deimos 2000 IAU', 6200.00, 180., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('4:02', 21, 'Triaxial Deimos 2000 IAU', 7500.00, null, 9001, null, 5200.00, null,
 6100.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('5:16', 22, 'Spherical Metis 2000 IAU', 21500., 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('5:16', 23, 'Ellipsoidal Metis 2000 IAU', 30000., null, 9001, null, 20000., null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('5:15', 24, 'Spherical Adrastea 2000 IAU', 8200., 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('5:15', 25, 'Triaxial Adrastea 2000 IAU', 10000., null, 9001, null, 7000., null,
 8000., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('5:05', 26, 'Spherical Amalthea 2000 IAU', 83500., 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('5:05', 27, 'Triaxial Amalthea 2000 IAU', 125000., null, 9001, null, 73000., null,
 64000., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('5:14', 28, 'Spherical Thebe 2000 IAU', 49300., 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('5:14', 29, 'Triaxial Thebe 2000 IAU', 58000., null, 9001, null, 49000., null,
 42000., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('5:01', 30, 'Spherical Io 2000 IAU', 1821460., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('5:01', 31, 'Triaxial Io 2000 IAU', 1829400., null, 9001, null, 1819300., null,
 1815700., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('5:02', 32, 'Spherical Europa 2000 IAU', 1562090., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('5:02', 33, 'Triaxial Europa 2000 IAU', 1564130., null, 9001, null, 1561230., null,
 1560930., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('5:03', 34, 'Spherical Ganymede 2000 IAU', 2632345., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('5:03', 35, 'Triaxial Ganymede 2000 IAU', 2632400., null, 9001, null, 2632290., null,
 2632350., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('5:04', 36, 'Spherical Callisto 2000 IAU', 2409300., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('5:04', 37, 'Triaxial Callisto 2000 IAU', 2409400., null, 9001, null, 2409200., null,
 2409300., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('5:13', 38, 'Leda 2000 IAU', 5000., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('5:06', 39, 'Himalia 2000 IAU', 85000., 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('5:10', 40, 'Lysithea 2000 IAU', 12000., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('5:07', 41, 'Elara 2000 IAU', 40000., 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('5:12', 42, 'Ananke 2000 IAU', 10000., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('5:11', 43, 'Carme 2000 IAU', 15000., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('5:08', 44, 'Pasiphae 2000 IAU', 18000., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('5:09', 45, 'Sinope 2000 IAU', 14000., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');

insert into ssbd_ellipsoid values ('6:01', 46, 'Spherical Mimas 2000 IAU', 198600.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('6:01', 47, 'Triaxial Mimas 2000 IAU', 209100.00, 500., 9001, null, 191400.00, 500.,
 196200.00, 500., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('6:02', 48, 'Spherical Enceladus 2000 IAU', 249400.00, 300., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('6:02', 49, 'Triaxial Enceladus 2000 IAU', 256300.00, 300., 9001, null, 244600.00, 500.,
 247300.00, 300., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('6:03', 50, 'Spherical Tethys 2000 IAU', 529800.00, 1500., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('6:03', 51, 'Triaxial Tethys 2000 IAU', 535600.00, 1200., 9001, null, 525800.00, 1200.,
 528200.00, 1200., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('6:04', 52, 'Dione 2000 IAU', 560000.00, 5000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('6:05', 53, 'Rhea 2000 IAU', 764000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('6:06', 54, 'Titan 2000 IAU', 2575000.00, 2000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('6:07', 55, 'Spherical Hyperion 2000 IAU', 133000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('6:07', 56, 'Triaxial Hyperion 2000 IAU', 164000.00, 8000., 9001, null, 107000.00, 8000.,
 130000.00, 8000., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('6:08', 57, 'Iapetus 2000 IAU', 718000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('6:09', 58, 'Spherical Phoebe 2000 IAU', 110000.00, 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('6:09', 59, 'Triaxial Phoebe 2000 IAU', 115000.00, 10000., 9001, null, 105000.00, 10000.,
 110000.00, 10000., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('6:10', 60, 'Spherical Janus 2000 IAU', 88800.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('6:10', 61, 'Triaxial Janus 2000 IAU', 97000.00, null, 9001, null, 77000.00, null,
 95000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('6:11', 62, 'Spherical Epimetheus 2000 IAU', 59500.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('6:11', 63, 'Triaxial Epimetheus 2000 IAU', 69000.00, null, 9001, null, 55000.00, null,
 55000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('6:12', 64, 'Spherical Helene 2000 IAU', 16000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
-- TODO : rayon polaire d'Helene suspect, de même que l'axis_b
insert into ssbd_ellipsoid values ('6:12', 65, 'Ellipsoidal Helene 2000 IAU', 17500.00, 2500., 9001, null, 700.00, null,
 17500.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('6:13', 66, 'Spherical Telesto 2000 IAU', 11000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('6:13', 67, 'Triaxial Telesto 2000 IAU', 15000.00, 2500., 9001, null, 7500.00, 2500.,
 12500.00, 5000., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('6:14', 68, 'Spherical Calypso 2000 IAU', 9500.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('6:14', 69, 'Triaxial Calypso 2000 IAU', 15000.00, null, 9001, null, 8000.00, null,
 8000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('6:15', 70, 'Spherical Atlas 2000 IAU', 16000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('6:15', 71, 'Triaxial Atlas 2000 IAU', 18500.00, null, 9001, null, 13500.00, null,
 17200.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('6:16', 72, 'Spherical Prometheus 2000 IAU', 50100.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('6:16', 73, 'Triaxial Prometheus 2000 IAU', 74000.00, null, 9001, null, 34000.00, null,
 50000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('6:17', 74, 'Spherical Pandora 2000 IAU', 41900.00, 2000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('6:17', 75, 'Triaxial Pandora 2000 IAU', 55000.00, null, 9001, null, 31000.00, null,
 44000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('6:18', 76, 'Pan 2000 IAU', 10000., 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');

insert into ssbd_ellipsoid values ('6:32', 77, 'Methone 2000 IAU', 1600.00, null, 9001, null, null, null,
 null, null, null, null,
 null, null);
insert into ssbd_ellipsoid values ('6:33', 78, 'Pallene 2000 IAU', 2500.00, null, 9001, null, null, null,
 null, null, null, null,
 null, null);
insert into ssbd_ellipsoid values ('6:34', 79, 'Polydeuces 2000 IAU', 1300.00, null, 9001, null, null, null,
 null, null, null, null,
 null, null);

insert into ssbd_ellipsoid values ('7:01', 80, 'Spherical Ariel 2000 IAU', 578900.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('7:01', 81, 'Triaxial Ariel 2000 IAU', 581100.00, 900., 9001, null, 577700.00, 1000.,
 577900.00, 600., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('7:02', 82, 'Umbriel 2000 IAU', 584700.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('7:03', 83, 'Titania 2000 IAU', 788900.00, 1800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('7:04', 84, 'Oberon 2000 IAU', 761400.00, 2600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('7:05', 85, 'Spherical Miranda 2000 IAU', 235800.00, 700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('7:05', 86, 'Triaxial Miranda 2000 IAU', 240400.00, 600., 9001, null, 232900.00, 1200.,
 234200.00, 900., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('7:06', 87, 'Cordelia 2000 IAU', 13000.00, 2000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('7:07', 88, 'Ophelia 2000 IAU', 15000.00, 2000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('7:08', 89, 'Bianca 2000 IAU', 21000.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('7:09', 90, 'Cressida 2000 IAU', 31000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('7:10', 91, 'Desdemona 2000 IAU', 27000.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('7:11', 92, 'Juliet 2000 IAU', 42000.00, 5000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('7:12', 93, 'Portia 2000 IAU', 54000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('7:13', 94, 'Rosalind 2000 IAU', 27000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('7:14', 95, 'Belinda 2000 IAU', 33000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('7:15', 96, 'Puck 2000 IAU', 77000.00, 5000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');


insert into ssbd_ellipsoid values ('8:01', 97, 'Triton 2000 IAU', 1352600.00, 2400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('8:02', 98, 'Nereid 2000 IAU', 170000.00, 25000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('8:03', 99, 'Naiad 2000 IAU', 29000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('8:04', 100, 'Thalassa 2000 IAU', 40000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('8:05', 101, 'Despina 2000 IAU', 74000.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('8:06', 102, 'Galatea 2000 IAU', 79000.00, 12000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('8:07', 103, 'Spherical Larissa 2000 IAU', 96000.00, 7000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('8:07', 104, 'Ellipsoidal Larissa 2000 IAU', 104000.00, null, 9001, null, 89000.00, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('8:08', 105, 'Spherical Proteus 2000 IAU', 208000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('8:08', 106, 'Triaxial Proteus 2000 IAU', 218000.00, null, 9001, null, 201000.00, null,
 208000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');


insert into ssbd_ellipsoid values ('9:01', 107, 'Charon 2000 IAU', 593000.00, 13000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');

insert into ssbd_ellipsoid values ('9511010', 108, 'Spherical Gaspra 2000 IAU', 6100.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('9511010', 109, 'Measured Ellipsoid Gaspra 2000 IAU', 9100.00, null, 9001, null, 4400.00, null,
 5200.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('9511010', 110, 'Best-fit Ellipsoid Gaspra 2000 IAU', 9100.00, null, 9001, null, 4700.00, null,
 5200.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2431010', 111, 'Spherical Ida 2000 IAU', 15650.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2431010', 112, 'Measured Ida 2000 IAU', 26800.00, null, 9001, null, 7600.00, null,
 12000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2431010', 113, 'Best-fit Ellipsoid Ida 2000 IAU', 30000.00, null, 9001, null, 9300.00, null,
 12600.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000001', 114, 'Spherical Ceres 2000 IAU', 476200.00, null, 9001, null, null, null,
 null, null, null, null,
 null, null);
insert into ssbd_ellipsoid values ('2000001', 115, 'Ellipsoidal Ceres 2000 IAU', 487300.00, null, 9001, null, 454700.00, null,
 null, null, null, null,
 null, null);
insert into ssbd_ellipsoid values ('2000021', 116, 'Spherical Lutetia 2000 IAU', 52500.00, null, 9001, null, null, null,
 null, null, null, null,
 null, null);
insert into ssbd_ellipsoid values ('2000021', 117, 'Triaxial Lutetia 2000 IAU', 62000.00, null, 9001, null, 46500.00, null,
 50500.00, null, null, null,
 null, null);
insert into ssbd_ellipsoid values ('2000216', 118, 'Measured Kleopatra 2000 IAU', 108500.00, null, 9001, null, 40500.00, null,
 47000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000433', 119, 'Mean Spherical Eros 2000 IAU', 7311.00, 10., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000433', 120, 'Best-fit Spherical Eros 2000 IAU', 9236., 100., 9001, null, 7311.00, null,
 7311.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');


insert into ssbd_ellipsoid values ('0', 121, 'Sun 2009 IAU', 696000000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('1:99', 122, 'Mercury 2009 IAU', 2439700.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2:99', 123, 'Venus 2009 IAU', 6051800.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('3:99', 124, 'Spherical Earth 2009 IAU', 6371008.40, .1, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('3:99', 125, 'Ellipsoidial Earth 2009 IAU', 6378136.60, .1, 9001, null, 6356751.90, .1,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('3:01', 126, 'Moon 2009 IAU', 1737400.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('4:99', 127, 'Spherical Mars 2009 IAU', 3389500.00, 200., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('4:99', 128, 'Ellipsoidal Mars 2009 IAU', 3396190.00, 100., 9001, null, 3376200.00, 100.,
null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('4:99', 129, 'Quadriaxial Mars 2009 IAU', 3396190.00, 100., 9001, null, 3373190.00, 100.,
 3379210.00, 100., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('4:01', 130, 'Spherical Phobos 2009 IAU', 11080.00, 40., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('4:01', 131, 'Triaxial Phobos 2009 IAU', 13000.00, null, 9001, null, 9100.00, null,
 11400.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('4:02', 132, 'Spherical Deimos 2009 IAU', 6200.00, 250., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('4:02', 133, 'Triaxial Deimos 2009 IAU', 7800.00, null, 9001, null, 5100.00, null,
 6000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('5:99', 134, 'Spherical Jupiter 2009 IAU', 69911000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('5:99', 135, 'Ellipsoidal Jupiter 2009 IAU', 71492000.00, 4000., 9001, null, 66854000.00, 10000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('5:01', 136, 'Spherical Io 2009 IAU', 1821490.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('5:01', 137, 'Triaxial Io 2009 IAU', 1829400.00, null, 9001, null, 1815700.00, null,
 1819400.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('5:02', 138, 'Spherical Europa 2009 IAU', 1560800.00, 300., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('5:02', 139, 'Triaxial Europa 2009 IAU', 1562600.00, null, 9001, null, 1560950.00, null,
 1560300.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('5:03', 140, 'Ganymede 2009 IAU', 2631200.00, 1700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('5:04', 141, 'Callisto 2009 IAU', 2410300.00, 1500., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('5:05', 142, 'Spherical Amalthea 2009 IAU', 83500.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('5:05', 143, 'Ellipsoidal Amalthea 2009 IAU', 125000.00, null, 9001, null, 64000.00, null,
 73000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('5:06', 144, 'Himalia 2009 IAU', 85000.00, 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('5:07', 145, 'Elara 2009 IAU', 40000.00, 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('5:08', 146, 'Pasiphae 2009 IAU', 18000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('5:09', 147, 'Sinope 2009 IAU', 14000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('5:10', 148, 'Lysithea 2009 IAU', 12000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('5:11', 149, 'Carme 2009 IAU', 15000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('5:12', 150, 'Ananke 2009 IAU', 10000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('5:13', 151, 'Leda 2009 IAU', 5000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('5:14', 152, 'Spherical Thebe 2009 IAU', 49300.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('5:14', 153, 'Triaxial Thebe 2009 IAU', 58000.00, null, 9001, null, 42000.00, null,
 49000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('5:15', 154, 'Spherical Adrastea 2009 IAU', 8200.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('5:15', 155, 'Ellipsoidal Adrastea 2009 IAU', 10000.00, null, 9001, null, 7000.00, null,
 8000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('5:16', 156, 'Spherical Metis 2009 IAU', 21500.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('5:16', 157, 'Ellipsoidal Metis 2009 IAU', 30000.00, null, 9001, null, 17000.00, null,
 20000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:99', 158, 'Spherical Saturn 2009 IAU', 58232000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:99', 160, 'Ellipsoidal Saturn 2009 IAU', 60268000.00, 4000., 9001, null, 54364000.00, 10000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:01', 161, 'Spherical Mimas 2009 IAU', 198200.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:01', 162, 'Triaxial Mimas 2009 IAU', 207800.00, 500., 9001, null, 190600.00, 300.,
 196700.00, 500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:02', 163, 'Spherical Enceladus 2009 IAU', 252100.00, 200., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:02', 164, 'Triaxial Enceladus 2009 IAU', 256600.00, 600., 9001, null, 248300.00, 200.,
 251400.00, 200., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:03', 165, 'Spherical Tethys 2009 IAU', 531000.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:03', 166, 'Triaxial Tethys 2009 IAU', 538400.00, 300., 9001, null, 526300.00, 600.,
 528300.00, 1100., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:04', 167, 'Spherical Dione 2009 IAU', 561400.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:04', 168, 'Triaxial Dione 2009 IAU', 563400.00, 600., 9001, null, 559600.00, 400.,
 561300.00, 500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:05', 169, 'Spherical Rhea 2009 IAU', 763500.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:05', 170, 'Triaxial Rhea 2009 IAU', 765000.00, 700., 9001, null, 762400.00, 600.,
 763100.00, 600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:06', 171, 'Spherical Titan 2009 IAU', 2574730.00, 90., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:06', 172, 'Triaxial Titan 2009 IAU', 2575150.00, 20., 9001, null, 2574470.00, 60.,
 2574780.00, 60., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:07', 173, 'Shperical Hyperion 2009 IAU', 135000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:07', 174, 'Triaxial Hyperion 2009 IAU', 180100.00, 2000., 9001, null, 102700.00, 4500.,
 133000.00, 4500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:08', 175, 'Spherical Iapetus 2009 IAU', 734300.00, 2800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:08', 176, 'Ellipsoidal Iapetus 2009 IAU', 745700.00, 2900., 9001, null, 712100.00, 1600.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:09', 177, 'Spherical Phoebe 2009 IAU', 106500.00, 700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:09', 178, 'Triaxial Phoebe 2009 IAU', 109400.00, 1400., 9001, null, 101800.00, 300.,
 108500.00, 600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:10', 179, 'Spherical Janus 2009 IAU', 89500.00, 1400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:10', 180, 'Triaxial Janus 2009 IAU', 101500.00, 1900., 9001, null, 76300.00, 1200.,
 92500.00, 1200., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:11', 181, 'Spherical Epimetheus 2009 IAU', 58100.00, 1.8, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:11', 182, 'Triaxial Epimetheus 2009 IAU', 64900.00, 2000., 9001, null, 53100.00, 700.,
 57000.00, 3700., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:12', 183, 'Spherical Helene 2009 IAU', 17600.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:12', 184, 'Triaxial Helene 2009 IAU', 21700.00, 500., 9001, null, 13000.00, 300.,
 19100.00, 300., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:13', 185, 'Spherical Telesto 2009 IAU', 12400.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:13', 186, 'Triaxial Telesto 2009 IAU', 16300.00, 500., 9001, null, 10000.00, 300.,
 11800.00, 300., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:14', 187, 'Spherical Calypso 2009 IAU', 10700.00, 700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:14', 188, 'Triaxial Calypso 2009 IAU', 15100.00, 300., 9001, null, 7000.00, 600.,
 11500.00, 2200., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:15', 189, 'Spherical Atlas 2009 IAU', 15100.00, 900., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:15', 190, 'Triaxial Atlas 2009 IAU', 20400.00, 1200., 9001, null, 9400.00, 800.,
 17700.00, 700., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:16', 191, 'Spherical Prometheus 2009 IAU', 43100.00, 2700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:16', 192, 'Triaxial Prometheus 2009 IAU', 67800.00, 3100., 9001, null, 29700.00, 1900.,
 39700.00, 3100., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:17', 193, 'Spherical Pandora 2009 IAU', 40700.00, 1500., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:17', 194, 'Triaxial Pandora 2009 IAU', 52000.00, 1800., 9001, null, 32000.00, 900.,
 40500.00, 2000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:18', 195, 'Spherical Pan 2009 IAU', 14100.00, 1300., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:18', 196, 'Triaxial Pan 2009 IAU', 17200.00, 1900., 9001, null, 10400.00, 840.,
 15700.00, 1300., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:32', 197, 'Methone 2009 IAU', 1600.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:33', 198, 'Spherical Pallene 2009 IAU', 2500.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:33', 199, 'Triaxial Pallene 2009 IAU', 2900.00, 600., 9001, null, 2000.00, 400.,
 2800.00, 800., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:34', 200, 'Spherical Polydeuces 2009 IAU', 1300.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:34', 201, 'Triaxial Polydeuces 2009 IAU', 1500.00, 600., 9001, null, 1000.00, 200.,
 1200.00, 400., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:35', 202, 'Spherical Daphnis 2009 IAU', 3800.00, 800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:35', 203, 'Triaxial Daphnis 2009 IAU', 4300.00, 700., 9001, null, 3200.00, 800.,
 4100.00, 900., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('6:49', 204, 'Anthe 2009 IAU', 1000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('7:99', 205, 'Spherical Uranus 2009 IAU', 25362000.00, 7000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('7:99', 206, 'Ellipsoidal Uranus 2009 IAU', 25559000.00, 4000., 9001, null, 24973000.00, 20000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('7:01', 207, 'Spherical Ariel 2009 IAU', 578900.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('7:01', 208, 'Triaxial Ariel 2009 IAU', 581100.00, 900., 9001, null, 577700.00, 1000.,
 577900.00, 600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('7:02', 209, 'Umbriel 2009 IAU', 584700.00, 2800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('7:03', 210, 'Titania 2009 IAU', 788900.00, 1800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('7:04', 211, 'Oberon 2009 IAU', 761400.00, 2600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('7:05', 212, 'Spherical Miranda 2009 IAU', 235800.00, 700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('7:05', 213, 'Triaxial Miranda 2009 IAU', 240400.00, 600., 9001, null, 232900.00, 1200.,
 234200.00, 900., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('7:06', 214, 'Cordelia 2009 IAU', 13000.00, 2000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('7:07', 215, 'Ophelia 2009 IAU', 15000.00, 2000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('7:08', 216, 'Bianca 2009 IAU', 21000.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('7:09', 217, 'Cressida 2009 IAU', 31000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('7:10', 218, 'Desdemona 2009 IAU', 27000.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('7:11', 219, 'Juliet 2009 IAU', 42000.00, 5000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('7:12', 220, 'Portia 2009 IAU', 54000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('7:13', 221, 'Rosalind 2009 IAU', 27000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('7:14', 222, 'Belinda 2009 IAU', 33000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('7:15', 223, 'Puck 2009 IAU', 77000.00, 5000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('8:99', 224, 'Spherical Neptune 2009 IAU', 24622000.00, 19000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('8:99', 225, 'Ellipsoidal Neptune 2009 IAU', 24764000.00, 15000., 9001, null, 24341000.00, 30000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('8:01', 226, 'Triton 2009 IAU', 1352600.00, 2400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('8:02', 227, 'Nereid 2009 IAU', 170000.00, 25000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('8:03', 228, 'Naiad 2009 IAU', 29000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('8:04', 229, 'Thalassa 2009 IAU', 40000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('8:05', 230, 'Despina 2009 IAU', 74000.00, 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('8:06', 231, 'Galatea 2009 IAU', 79000.00, 12000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('8:07', 232, 'Spherical Larissa 2009 IAU', 96000.00, 7000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('8:07', 233, 'Ellipsoidal Larissa 2009 IAU', 104000.00, null, 9001, null, 89000.00, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('8:08', 234, 'Spherical Proteus 2009 IAU', 208000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('8:08', 235, 'Triaxial Proteus 2009 IAU', 218000.00, null, 9001, null, 201000.00, null,
 208000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('9:99', 236, 'Pluto 2009 IAU', 1195000.00, 5000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('9:01', 237, 'Charon 2009 IAU', 605000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('1000005', 238, 'Effective Borrelly 2009 IAU', 4220.00, 50., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('1000005', 239, 'Measured Borrelly 2009 IAU', 3500.00, 200., 9001, null, null, null,
  null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('1000036', 240, 'Triaxial Halley 2009 IAU', 8000.00, 500., 9001, null, 4000.00, 250.,
 4000.00, 250., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('1000093', 241, 'Spherical Tempel 1 2009 IAU', 3000.00, 100., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('1000093', 242, 'Biaxial Tempel 1 2009 IAU', 3700.00, null, 9001, null, 2500.00, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('1000107', 243, 'Spherical Wild 2 2009 IAU', 1975.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('1000107', 244, 'Triaxial Wild 2 2009 IAU', 2700.00, null, 9001, null, 1500.00, null,
 1900.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('9511010', 245, 'Spherical Gaspra 2009 IAU', 6100.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('9511010', 246, 'Triaxial Gaspra 2009 IAU', 9100.00, null, 9001, null, 4400.00, null,
 5200.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2431010', 247, 'Spherical Ida 2009 IAU', 15650.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2431010', 248, 'Triaxial Ida 2009 IAU', 26800.00, null, 9001, null, 7600.00, null,
 12000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2000001', 249, 'Spherical Ceres 2009 IAU', 476200.00, 1700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2000001', 250, 'Ellipsoidal Ceres 2009 IAU', 487300.00, 1800., 9001, null, 454700.00, 1600.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2000004', 251, 'Vesta 2009 IAU', 289000.00, 5000., 9001, null, 229000.00, 5000.,
 280000.00, 5000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2000021', 252, 'Spherical Lutetia 2009 IAU', 52500.00, 2500., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2000021', 253, 'Triaxial Lutetia 2009 IAU', 62000.00, 2500., 9001, null, 46500.00, 6500.,
 50500.00, 2000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2000216', 254, 'Kleopatra 2009 IAU', 108500.00, null, 9001, null, 40500.00, null,
 47000.00, null, null, null,
 null, null);
insert into ssbd_ellipsoid values ('2000433', 255, 'Spherical Eros 2009 IAU', 8450.00, 20., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2000433', 256, 'Triaxial Eros 2009 IAU', 17000.00, null, 9001, null, 5500.00, null,
 5500.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2000511', 257, 'Spherical Davida 2009 IAU', 150000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2000511', 258, 'Triaxial Davida 2009 IAU', 180000.00, null, 9001, null, 127000.00, null,
 147000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2000253', 259, 'Spherical Mathilde 2009 IAU', 26500.00, 1300., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2000253', 260, 'Triaxial Mathilde 2009 IAU', 33000.00, null, 9001, null, 23000.00, null,
 24000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2002867', 261, 'Spherical Steins 2009 IAU', 2700.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2002867', 262, 'Triaxial Steins 2009 IAU', 3240.00, null, 9001, null, 2040.00, null,
 2730.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2004179', 263, 'Toutatis 2009 IAU', 2130.00, null, 9001, null, 850.00, null,
 1015.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2025143', 264, 'Itokawa 2009 IAU', 535.00, null, 9001, null, 209.00, null,
 294.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');






insert into ssbd_ellipsoid values ('0', 265, 'Sun 2015 IAU', 695700000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('1:99', 266, 'Spherical Mercury 2015 IAU', 2439400.00, 100., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('1:99', 267, 'Ellipsoidal Mercury 2015 IAU', 2440530.00, 40., 9001, null, 2438260.00, 40.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('1:99', 268, 'Triaxial Mercury 2015 IAU', 2440530.00, 40., 9001, null, 2438260.00, 40.,
 2439280.00, 40., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2:99', 269, 'Venus 2015 IAU', 6051800.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('3:99', 270, 'Spherical Earth 2015 IAU', 6371008.40, .1, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('3:99', 271, 'Ellipsoidal Earth 2015 IAU', 6378136.60, .1, 9001, null, 6356751.90, .1,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('3:99', 272, 'Ellipsoidal Earth 2015 IAU Resolution', 6378100., null, 9001, null, 6356800., null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('3:01', 273, 'Moon 2015 IAU', 1737400.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');

insert into ssbd_ellipsoid values ('4:99', 274, 'Spherical Mars 2015 IAU', 3389500.00, 200., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('4:99', 275, 'Ellipsoidal Mars 2015 IAU', 3396190.00, 10., 9001, null, 3376200.00, 10.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('4:99', 276, 'Quadriaxial Mars 2015 IAU', 3396190.00, null, 9001, null, 3373190.00, 10.,
 null, null, 3379210., 10.,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('4:01', 277, 'Spherical Phobos 2015 IAU', 11080.00, 40., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('4:01', 278, 'Triaxial Phobos 2015 IAU', 13000.00, null, 9001, null, 9100.00, null,
 11400.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('4:02', 279, 'Spherical Deimos 2015 IAU', 6200.00, 250., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('4:02', 280, 'Triaxial Deimos 2015 IAU', 7800.00, null, 9001, null, 5100.00, null,
 6000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');

insert into ssbd_ellipsoid values ('5:99', 281, 'Spherical Jupiter 2015 IAU', 69911000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('5:99', 282, 'Ellipsoidal Jupiter 2015 IAU', 71492000.00, 4000., 9001, null, 66854000.00, 10000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('5:01', 283, 'Spherical Io 2015 IAU', 1821490.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('5:01', 284, 'Triaxial Io 2015 IAU', 1829400.00, null, 9001, null, 1815700.00, null,
 1819400.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('5:02', 285, 'Spherical Europa 2015 IAU', 1560800.00, 300., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('5:02', 286, 'Triaxial Europa 2015 IAU', 1562600.00, null, 9001, null, 1559500.00, null,
 1560300.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('5:03', 287, 'Ganymede 2015 IAU', 2631200.00, 1700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('5:04', 288, 'Callisto 2015 IAU', 2410300.00, 1500., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('5:05', 289, 'Spherical Amalthea 2015 IAU', 83500.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('5:05', 290, 'Triaxial Amalthea 2015 IAU', 125000.00, null, 9001, null, 64000.00, null,
 73000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('5:06', 291, 'Himalia 2015 IAU', 85000.00, 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('5:07', 292, 'Elara 2015 IAU', 40000.00, 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('5:08', 293, 'Pasiphae 2015 IAU', 18000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('5:09', 294, 'Sinope 2015 IAU', 14000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('5:10', 295, 'Lysithea 2015 IAU', 12000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('5:11', 296, 'Carme 2015 IAU', 15000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('5:12', 297, 'Ananke 2015 IAU', 10000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('5:13', 298, 'Leda 2015 IAU', 5000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('5:14', 299, 'Spherical Thebe 2015 IAU', 49300.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('5:14', 300, 'Triaxial Thebe 2015 IAU', 58000.00, null, 9001, null, 42000.00, null,
 49000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('5:15', 301, 'Spherical Adrastea 2015 IAU', 8200.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('5:15', 302, 'Triaxial Adrastea 2015 IAU', 10000.00, null, 9001, null, 7000.00, null,
 8000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('5:16', 303, 'Spherical Metis 2015 IAU', 21500.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('5:16', 304, 'Triaxial Metis 2015 IAU', 30000.00, null, 9001, null, 17000.00, null,
 20000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');

insert into ssbd_ellipsoid values ('6:99', 305, 'Spherical Saturn 2015 IAU', 58232000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:99', 306, 'Ellipsoidal Saturn 2015 IAU', 60268000.00, 4000., 9001, null, 54364000.00, 10000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:01', 307, 'Spherical Mimas 2015 IAU', 198200.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:01', 308, 'Triaxial Mimas 2015 IAU', 207800.00, 500., 9001, null, 190600.00, 300.,
 196700.00, 500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:02', 309, 'Spherical Enceladus 2015 IAU', 252100.00, 200., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:02', 310, 'Triaxial Enceladus 2015 IAU', 256600.00, 600., 9001, null, 248300.00, 200.,
 251400.00, 200., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:03', 311, 'Spherical Tethys 2015 IAU', 531000.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:03', 312, 'Triaxial Tethys 2015 IAU', 538400.00, 300., 9001, null, 526300.00, 600.,
 528300.00, 1100., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:04', 313, 'Spherical Dione 2015 IAU', 561400.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:04', 314, 'Triaxial Dione 2015 IAU', 563400.00, 600., 9001, null, 559600.00, 400.,
 561300.00, 500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:05', 315, 'Spherical Rhea 2015 IAU', 763500.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:05', 316, 'Triaxial Rhea 2015 IAU', 765000.00, 700., 9001, null, 762400.00, 600.,
 763100.00, 600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:06', 317, 'Spherical Titan 2015 IAU', 2575000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:06', 318, 'Best-fit Spherical Titan 2015 IAU', 2574730.00, 90., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:06', 319, 'Triaxial Titan 2015 IAU', 2575150.00, 20., 9001, null, 2574470.00, 60.,
 2574780.00, 60., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:07', 320, 'Spherical Hyperion 2015 IAU', 135000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:07', 321, 'Triaxial Hyperion 2015 IAU', 180100.00, 2000., 9001, null, 102700.00, 4500.,
 133000.00, 4500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:08', 322, 'Spherical Iapetus 2015 IAU', 734300.00, 2800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:08', 323, 'Triaxial Iapetus 2015 IAU', 745700.00, 2900., 9001, null, 712100.00, 1600.,
 745700.00, 2900., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:09', 324, 'Spherical Phoebe 2015 IAU', 106500.00, 700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:09', 325, 'Triaxial Phoebe 2015 IAU', 109400.00, 1400., 9001, null, 101800.00, 300.,
 108500.00, 600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:10', 326, 'Spherical Janus 2015 IAU', 89200.00, 800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:10', 327, 'Triaxial Janus 2015 IAU', 101700.00, 1600., 9001, null, 76300.00, 400.,
 93000.00, 700., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:11', 328, 'Spherical Epimetheus 2015 IAU', 58200.00, 1200., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:11', 329, 'Triaxial Epimetheus 2015 IAU', 64900.00, 1300., 9001, null, 53000.00, 500.,
 57300.00, 2500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:12', 330, 'Spherical Helene 2015 IAU', 18000.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:12', 331, 'Triaxial Helene 2015 IAU', 22500.00, 500., 9001, null, 13300.00, 200.,
 19600.00, 300., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:13', 332, 'Spherical Telesto 2015 IAU', 12400.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:13', 333, 'Triaxial Telesto 2015 IAU', 16300.00, 500., 9001, null, 9800.00, 300.,
 11800.00, 300., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:14', 334, 'Spherical Calypso 2015 IAU', 9600.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:14', 335, 'Triaxial Calypso 2015 IAU', 15300.00, 300., 9001, null, 6300.00, 600.,
 9300.00, 2200., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:15', 336, 'Spherical Atlas 2015 IAU', 15100.00, 800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:15', 337, 'Triaxial Atlas 2015 IAU', 20500.00, 900., 9001, null, 9400.00, 800.,
 17800.00, 700., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:16', 338, 'Spherical Prometheus 2015 IAU', 43100.00, 1200., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:16', 339, 'Triaxial Prometheus 2015 IAU', 68200.00, 800., 9001, null, 28200.00, 800.,
 41600.00, 1800., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:17', 340, 'Spherical Pandora 2015 IAU', 40600.00, 1500., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:17', 341, 'Triaxial Pandora 2015 IAU', 52200.00, 1800., 9001, null, 31500.00, 900.,
 40800.00, 2000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:18', 342, 'Spherical Pan 2015 IAU', 14000.00, 1200., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:18', 343, 'Triaxial Pan 2015 IAU', 17200.00, 1700., 9001, null, 10400.00, 900.,
 15400.00, 1200., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:32', 344, 'Spherical Methone 2015 IAU', 1450.00, 30., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:32', 345, 'Triaxial Methone 2015 IAU', 1940.00, 20., 9001, null, 1210.00, 20.,
 1290.00, 40., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:33', 346, 'Spherical Pallene 2015 IAU', 2230.00, 70., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:33', 347, 'Triaxial Pallene 2015 IAU', 2880.00, 70., 9001, null, 1800.00, 70.,
 2080.00, 70., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:34', 348, 'Spherical Polydeuces 2015 IAU', 1300.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:34', 349, 'Triaxial Polydeuces 2015 IAU', 1500.00, 600., 9001, null, 1000.00, 200.,
 1200.00, 400., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:35', 350, 'Spherical Daphnis 2015 IAU', 3800.00, 800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:35', 351, 'Triaxial Daphnis 2015 IAU', 4600.00, 700., 9001, null, 2800.00, 800.,
 4500.00, 900., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:49', 352, 'Anthe 2015 IAU', 500.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:53', 353, 'Spherical Aegaeon 2015 IAU', 330.00, 60., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('6:53', 354, 'Triaxial Aegaeon 2015 IAU', 700.00, 50., 9001, null, 200.00, 80.,
 250.00, 60., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');

insert into ssbd_ellipsoid values ('7:99', 355, 'Spherical Uranus 2015 IAU', 25362000.00, 7000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('7:99', 356, 'Ellipsoidal Uranus 2015 IAU', 25559000.00, 4000., 9001, null, 24973000.00, 20000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('7:01', 357, 'Spherical Ariel 2015 IAU', 578900.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('7:01', 358, 'Triaxial Ariel 2015 IAU', 581100.00, 900., 9001, null, 577700.00, 100.,
 577900.00, 600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('7:02', 359, 'Umbriel 2015 IAU', 584700.00, 2800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('7:03', 360, 'Titania 2015 IAU', 788900.00, 1800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('7:04', 361, 'Oberon 2015 IAU', 761400.00, 2600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('7:05', 362, 'Spherical Miranda 2015 IAU', 235800.00, 700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('7:05', 363, 'Triaxial Miranda 2015 IAU', 240400.00, 600., 9001, null, 232900.00, 1200.,
 234200.00, 900., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('7:06', 364, 'Cordelia 2015 IAU', 13000.00, 2000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('7:07', 365, 'Ophelia 2015 IAU', 15000.00, 2000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('7:08', 366, 'Bianca 2015 IAU', 21000.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('7:09', 367, 'Cressida 2015 IAU', 31000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('7:10', 368, 'Desdemona 2015 IAU', 27000.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('7:11', 369, 'Juliet 2015 IAU', 42000.00, 5000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('7:12', 370, 'Portia 2015 IAU', 54000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('7:13', 371, 'Rosalind 2015 IAU', 27000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('7:14', 372, 'Belinda 2015 IAU', 33000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('7:15', 373, 'Puck 2015 IAU', 77000.00, 51900., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');

insert into ssbd_ellipsoid values ('8:99', 374, 'Spherical Neptune 2015 IAU', 24622000.00, 19000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('8:99', 375, 'Ellipsoidal Neptune 2015 IAU', 24764000.00, 15000., 9001, null, 24341000.00, 30000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('8:01', 376, 'Triton 2015 IAU', 1352600.00, 2400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('8:02', 377, 'Nereid 2015 IAU', 170000.00, 25000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('8:03', 378, 'Naiad 2015 IAU', 29000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('8:04', 379, 'Thalassa 2015 IAU', 40000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('8:05', 380, 'Despina 2015 IAU', 74000.00, 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('8:06', 381, 'Galatea 2015 IAU', 79000.00, 12000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('8:07', 382, 'Spherical Larissa 2015 IAU', 96000.00, 7000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('8:07', 383, 'Ellipsoidal Larissa 2015 IAU', 104000.00, null, 9001, null, 89000.00, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('8:08', 384, 'Spherical Proteus 2015 IAU', 208000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('8:08', 385, 'Triaxial Proteus 2015 IAU', 218000.00, null, 9001, null, 201000.00, null,
 208000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');

insert into ssbd_ellipsoid values ('9:99', 386, 'Pluto 2015 IAU', 1188300.00, 1600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('9:01', 387, 'Charon 2015 IAU', 606000.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('1000005', 388, 'Spherical Borrelly 2015 IAU', 4220.00, 50., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('1000005', 389, 'Measured Borrelly 2015 IAU', 3500.00, 200., 9001, null, -1, null,
  null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('1000012', 390, 'Spherical Churyumov-Gerasimenko 2015 IAU', 1650.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('1000012', 391, 'Triaxial Churyumov-Gerasimenko 2015 IAU', 2400.00, null, 9001, null, 1200.00, null,
 1550.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('1000036', 392, 'Halley 2015 IAU', 8000.00, 500., 9001, null, 4000.00, 250.,
 4000.00, 250., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('1000041', 393, 'Spherical Hartley 2 2015 IAU', 580.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('1000041', 394, 'Triaxial Hartley 2 2015 IAU', 340.00, null, 9001, null, 1160.00, null,
 1160.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('1000093', 395, 'Spherical Tempel 1 2015 IAU', 3000.00, 100., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('1000093', 396, 'Biaxial Tempel 1 2015 IAU', 3700.00, null, 9001, null, 2500., null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('1000107', 397, 'Spherical Wild 2 2015 IAU', 1975.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('1000107', 398, 'Triaxial Wild 2 2015 IAU', 2700.00, null, 9001, null, 1500.00, null,
 1900.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('9511010', 399, 'Spherical Gaspra 2015 IAU', 6100.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('9511010', 400, 'Triaxial Gaspra 2015 IAU', 9100.00, null, 9001, null, 4400.00, null,
 5200.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2431010', 401, 'Spherical Ida 2015 IAU', 15650.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2431010', 402, 'Triaxial Ida 2015 IAU', 26800.00, null, 9001, null, 7600.00, null,
 12000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2000001', 403, 'Spherical Ceres 2015 IAU', 470000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2000001', 404, 'Ellipsoidal Ceres 2015 IAU', 487300.00, null, 9001, null, 446000.00, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2000004', 405, 'Vesta 2015 IAU', 289000.00, 5000., 9001, null, 229000.00, 5000.,
 280000.00, 5000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2000016', 406, 'Spherical Psyche 2015 IAU', 113000.00, 23000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2000016', 407, 'Triaxial Psyche 2015 IAU', 139500.00, 13950., 9001, null, 94500.00, 9450.,
 116000.0, 11600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2000021', 408, 'Spherical Lutetia 2015 IAU', 52500.00, 2500., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2000021', 409, 'Triaxial Lutetia 2015 IAU', 62000.00, 2500., 9001, null, 46500.00, 6500.,
 50500.00, 2000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('-2000052', 410, 'Spherical 52 Europa 2015 IAU', 157500.00, 7000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('-2000052', 411, 'Triaxial 52 Europa 2015 IAU', 189500.00, 16000., 9001, null, 124500.00, 10000.,
 165000.00, 8000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2000216', 412, 'Kleopatra 2015 IAU', 108500.00, null, 9001, null, 40500.00, null,
 47000.00, null, null, null,
 null, null);
insert into ssbd_ellipsoid values ('2000433', 413, 'Spherical Eros 2015 IAU', 8450.00, 20., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2000433', 414, 'Triaxial Eros 2015 IAU', 17000.00, null, 9001, null, 5500.00, null,
 5500.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2000511', 415, 'Spherical Davida 2015 IAU', 150000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2000511', 416, 'Triaxial Davida 2015 IAU', 180000.00, null, 9001, null, 127000.00, null,
 147000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2000253', 417, 'Spherical Mathilde 2015 IAU', 26500.00, 1300., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2000253', 418, 'Triaxial Mathilde 2015 IAU', 33000.00, null, 9001, null, 23000.00, null,
 24000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2002867', 419, 'Spherical Steins 2015 IAU', 2700.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2002867', 420, 'Triaxial Steins 2015 IAU', 3240.00, null, 9001, null, 2040.00, null,
 2730.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2004179', 421, 'Toutatis 2015 IAU', 2130.00, null, 9001, null, 850.00, null,
 1015.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2025143', 422, 'Itokawa 2015 IAU', 268.00, null, 9001, null, 104.00, null,
 147.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');


insert into ssbd_primemeridiansystem values (1, 'Mercury crust system', '1:99', null, null);
insert into ssbd_primemeridiansystem values (2, 'Venus crust system', '2:99', null, null);
insert into ssbd_primemeridiansystem values (3, 'Mars crust system', '4:99', null, null);
insert into ssbd_primemeridiansystem values (4, 'System I Jupiter', '5:99', 'Refers to the mean atmospheric equatorial rotation.', null);
insert into ssbd_primemeridiansystem values (5, 'System II Jupiter', '5:99', 'Refers to the mean atmospheric rotation north of the south component of the north equatorial belt, and south of the north component of the south equatorial belt.', null);
insert into ssbd_primemeridiansystem values (6, 'System III Jupiter', '5:99', 'Refers to the magnetic field rotation.', null);
insert into ssbd_primemeridiansystem values (7, 'System I Saturn', '6:99', 'Refers to the mean atmospheric equatorial rotation.', null);
insert into ssbd_primemeridiansystem values (8, 'System II Saturn', '6:99', 'Refers to the mean atmospheric rotation north of the south component of the north equatorial belt, and south of the north component of the south equatorial belt.', null);
insert into ssbd_primemeridiansystem values (9, 'System III Saturn', '6:99', 'Refers to the magnetic field rotation.', null);
insert into ssbd_primemeridiansystem values (10, 'System I Uranus', '7:99', 'Refers to the mean atmospheric equatorial rotation.', null);
insert into ssbd_primemeridiansystem values (11, 'System II Uranus', '7:99', 'Refers to the mean atmospheric rotation north of the south component of the north equatorial belt, and south of the north component of the south equatorial belt.', null);
insert into ssbd_primemeridiansystem values (12, 'System III Uranus', '7:99', 'Refers to the magnetic field rotation.', null);
insert into ssbd_primemeridiansystem values (13, 'System II Neptune', '7:99', 'Refers to the rotation of optically observed features in the Neptunian atmosphere.', null);


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

insert into ssbd_coordinatesystem values ('spherical:3d:direct', 'Spherical 3D CS. Axes: latitude, longitude, radius. Orientations: north, sideral west, up. UoM: degrees, degrees, metres.', 'spherical', 3, null, null);
insert into ssbd_coordinatesystem values ('ellipsoidal:3d:direct', 'Ellipsoidal 3D CS. Axes: latitude, longitude, ellipsoidal height. Orientations: north, sideral west, up. UoM: degree, degree, metre.', 'ellipsoidal', 3, null, null);

insert into ssbd_coordinateaxis values (60, 'spherical:3d:direct', 9926, 'north', 'Lat', 9122, 1);
insert into ssbd_coordinateaxis values (61, 'spherical:3d:direct', 9927, 'sideral west', 'Long', 9122, 2);
insert into ssbd_coordinateaxis values (62, 'spherical:3d:direct', 9928, 'up', 'R', 9001, 3);
insert into ssbd_coordinateaxis values (108, 'ellipsoidal:3d:direct', 9901, 'north', 'Lat', 9122, 1);
insert into ssbd_coordinateaxis values (109, 'ellipsoidal:3d:direct', 9902, 'sideral west', 'Lon', 9122, 2);
insert into ssbd_coordinateaxis values (110, 'ellipsoidal:3d:direct', 9903, 'up', 'h', 9001, 3);


insert into ssbd_coordinatereferencesystem values (1, 'Mercury 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 1, null, null, null, null, null, null);
insert into ssbd_coordinatereferencesystem values (2, 'Mercury 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 1, null, null, null, null, null, null);


insert into ssbd_coordinatereferencesystemrange values (1, 2, 61, null, null);
insert into ssbd_coordinatereferencesystemrange values (2, 2, 109, null, null);

commit;
