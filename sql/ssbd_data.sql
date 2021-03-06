-- title: SSBD (Solar System Body Database) data
--
--
--
-- author: Samuel Andrés

begin;

insert into ssbd_change values ('2020:1','2020-06-28','2020-06-28','Samuel Andrés','init ssbd','all','all',null,null);

-- les codes des planètes et de leurs satellites naturels sont construits à partir du répertoire NAIF, mais en séparant
-- les barycentres par des traits d'union plutôt que de multiplier par 100 le numéro du barycentre de la planète
--
-- ainsi, le code NAIF 299 devient 2-99
--
-- de manière à conserver pour le moment la convention des codes NAIF, le 99 symbolise le corps le plus massif d'un
-- d'un système de masses
--
-- les identifiants des phénomènes sont construits par concaténation d'un suffixe numérique à l'identifiant du
-- barycentre de son système de masses, séparé par un trait d'union
--
-- le 0 est l'identifiant réservé au barycentre du système constitué par l'ensemble des masses ; dans le cas du système
-- solaire il s'agit du barycentre du système solaire il est omis de la construction des identifiants des autres
-- phénomènes
--
-- exemples :
-- - le code de la Terre est 3-99 (et non 0-3-99)
-- - le code du barycentre du système martien est 4 (et non 0-4)
--
-- à la différence de son code NAIF, le code du soleil est 99 (et non pas 10)
--
-- les codes des autes corps sont empruntés au répertoire NAIF
-- les codes préfixés par ? sont ceux qui n'ont pas été trouvés dans le répertoire NAIF
insert into ssbd_phenomenon values ('sun-0', 'Solar System Barycenter', null, null);
insert into ssbd_phenomenon values ('sun-99', 'Sun', null, null);
insert into ssbd_phenomenon values ('sun-1-99', 'Mercury', null, null);
insert into ssbd_phenomenon values ('sun-2-99', 'Venus', null, null);
insert into ssbd_phenomenon values ('sun-3', 'Earth-Moon barycenter', null, null);
insert into ssbd_phenomenon values ('sun-3-99', 'Earth', null, null);
insert into ssbd_phenomenon values ('sun-3-1', 'Moon', null, null);
insert into ssbd_phenomenon values ('sun-4-99', 'Mars', null, null);
insert into ssbd_phenomenon values ('sun-4-1', 'Phobos', null, null);
insert into ssbd_phenomenon values ('sun-4-2', 'Deimos', null, null);
insert into ssbd_phenomenon values ('sun-5-99', 'Jupiter', null, null);
insert into ssbd_phenomenon values ('sun-5-1', 'Io', null, null);
insert into ssbd_phenomenon values ('sun-5-2', 'Europa', null, null);
insert into ssbd_phenomenon values ('sun-5-3', 'Ganymede', null, null);
insert into ssbd_phenomenon values ('sun-5-4', 'Callisto', null, null);
insert into ssbd_phenomenon values ('sun-5-5', 'Amalthea', null, null);
insert into ssbd_phenomenon values ('sun-5-6', 'Himalia', null, null);
insert into ssbd_phenomenon values ('sun-5-7', 'Elara', null, null);
insert into ssbd_phenomenon values ('sun-5-8', 'Pasiphae', null, null);
insert into ssbd_phenomenon values ('sun-5-9', 'Sinope', null, null);
insert into ssbd_phenomenon values ('sun-5-10', 'Lysithea', null, null);
insert into ssbd_phenomenon values ('sun-5-11', 'Carme', null, null);
insert into ssbd_phenomenon values ('sun-5-12', 'Ananke', null, null);
insert into ssbd_phenomenon values ('sun-5-13', 'Leda', null, null);
insert into ssbd_phenomenon values ('sun-5-14', 'Thebe', null, null);
insert into ssbd_phenomenon values ('sun-5-15', 'Adrastea', null, null);
insert into ssbd_phenomenon values ('sun-5-16', 'Metis', null, null);
insert into ssbd_phenomenon values ('sun-5-17', 'Callirrhoe', null, null);
insert into ssbd_phenomenon values ('sun-5-18', 'Themisto', null, null);
insert into ssbd_phenomenon values ('sun-5-19', 'Magaclite', null, null);
insert into ssbd_phenomenon values ('sun-5-20', 'Taygete', null, null);
insert into ssbd_phenomenon values ('sun-5-21', 'Chaldene', null, null);
insert into ssbd_phenomenon values ('sun-5-22', 'Harpalyke', null, null);
insert into ssbd_phenomenon values ('sun-5-23', 'Kalyke', null, null);
insert into ssbd_phenomenon values ('sun-5-24', 'Iocaste', null, null);
insert into ssbd_phenomenon values ('sun-5-25', 'Erinome', null, null);
insert into ssbd_phenomenon values ('sun-5-26', 'Isonoe', null, null);
insert into ssbd_phenomenon values ('sun-5-27', 'Praxidike', null, null);
insert into ssbd_phenomenon values ('sun-5-28', 'Autonoe', null, null);
insert into ssbd_phenomenon values ('sun-5-29', 'Thyone', null, null);
insert into ssbd_phenomenon values ('sun-5-30', 'Hermippe', null, null);
insert into ssbd_phenomenon values ('sun-5-31', 'Aitne', null, null);
insert into ssbd_phenomenon values ('sun-5-32', 'Eurydome', null, null);
insert into ssbd_phenomenon values ('sun-5-33', 'Euanthe', null, null);
insert into ssbd_phenomenon values ('sun-5-34', 'Euporie', null, null);
insert into ssbd_phenomenon values ('sun-5-35', 'Orthosie', null, null);
insert into ssbd_phenomenon values ('sun-5-36', 'Sponde', null, null);
insert into ssbd_phenomenon values ('sun-5-37', 'Kale', null, null);
insert into ssbd_phenomenon values ('sun-5-38', 'Pasithee', null, null);
insert into ssbd_phenomenon values ('sun-5-39', 'Hegemone', null, null);
insert into ssbd_phenomenon values ('sun-5-40', 'Mneme', null, null);
insert into ssbd_phenomenon values ('sun-5-41', 'Aoede', null, null);
insert into ssbd_phenomenon values ('sun-5-42', 'Thelxinoe', null, null);
insert into ssbd_phenomenon values ('sun-5-43', 'Arche', null, null);
insert into ssbd_phenomenon values ('sun-5-44', 'Kallichore', null, null);
insert into ssbd_phenomenon values ('sun-5-45', 'Helike', null, null);
insert into ssbd_phenomenon values ('sun-5-46', 'Carpo', null, null);
insert into ssbd_phenomenon values ('sun-5-47', 'Eukelade', null, null);
insert into ssbd_phenomenon values ('sun-5-48', 'Cyllene', null, null);
insert into ssbd_phenomenon values ('sun-5-49', 'Kore', null, null);
insert into ssbd_phenomenon values ('sun-5-50', 'Herse', null, null);
insert into ssbd_phenomenon values ('sun-6-99', 'Saturn', null, null);
insert into ssbd_phenomenon values ('sun-6-1', 'Mimas', null, null);
insert into ssbd_phenomenon values ('sun-6-2', 'Enceladus', null, null);
insert into ssbd_phenomenon values ('sun-6-3', 'Tethys', null, null);
insert into ssbd_phenomenon values ('sun-6-4', 'Dione', null, null);
insert into ssbd_phenomenon values ('sun-6-5', 'Rhea', null, null);
insert into ssbd_phenomenon values ('sun-6-6', 'Titan', null, null);
insert into ssbd_phenomenon values ('sun-6-7', 'Hyperion', null, null);
insert into ssbd_phenomenon values ('sun-6-8', 'Iapetus', null, null);
insert into ssbd_phenomenon values ('sun-6-9', 'Phoebe', null, null);
insert into ssbd_phenomenon values ('sun-6-10', 'Janus', null, null);
insert into ssbd_phenomenon values ('sun-6-11', 'Epimetheus', null, null);
insert into ssbd_phenomenon values ('sun-6-12', 'Helene', null, null);
insert into ssbd_phenomenon values ('sun-6-13', 'Telesto', null, null);
insert into ssbd_phenomenon values ('sun-6-14', 'Calypso', null, null);
insert into ssbd_phenomenon values ('sun-6-15', 'Atlas', null, null);
insert into ssbd_phenomenon values ('sun-6-16', 'Prometheus', null, null);
insert into ssbd_phenomenon values ('sun-6-17', 'Pandora', null, null);
insert into ssbd_phenomenon values ('sun-6-18', 'Pan', null, null);
insert into ssbd_phenomenon values ('sun-6-19', 'Ymir', null, null);
insert into ssbd_phenomenon values ('sun-6-20', 'Paaliaq', null, null);
insert into ssbd_phenomenon values ('sun-6-21', 'Tarvos', null, null);
insert into ssbd_phenomenon values ('sun-6-22', 'Ijiraq', null, null);
insert into ssbd_phenomenon values ('sun-6-23', 'Suttungr', null, null);
insert into ssbd_phenomenon values ('sun-6-24', 'Kiviuq', null, null);
insert into ssbd_phenomenon values ('sun-6-25', 'Mundilfari', null, null);
insert into ssbd_phenomenon values ('sun-6-26', 'Albiorix', null, null);
insert into ssbd_phenomenon values ('sun-6-27', 'Skathi', null, null);
insert into ssbd_phenomenon values ('sun-6-28', 'Erriapo', null, null);
insert into ssbd_phenomenon values ('sun-6-29', 'Siarnaq', null, null);
insert into ssbd_phenomenon values ('sun-6-30', 'Thrymr', null, null);
insert into ssbd_phenomenon values ('sun-6-31', 'Narvi', null, null);
insert into ssbd_phenomenon values ('sun-6-32', 'Methone', null, null);
insert into ssbd_phenomenon values ('sun-6-33', 'Pallene', null, null);
insert into ssbd_phenomenon values ('sun-6-34', 'Polydeuces', null, null);
insert into ssbd_phenomenon values ('sun-6-35', 'Daphnis', null, null);
insert into ssbd_phenomenon values ('sun-6-36', 'Aegir', null, null);
insert into ssbd_phenomenon values ('sun-6-37', 'Bebhionn', null, null);
insert into ssbd_phenomenon values ('sun-6-38', 'Bergelmir', null, null);
insert into ssbd_phenomenon values ('sun-6-39', 'Bestla', null, null);
insert into ssbd_phenomenon values ('sun-6-40', 'Farbauti', null, null);
insert into ssbd_phenomenon values ('sun-6-41', 'Fenrir', null, null);
insert into ssbd_phenomenon values ('sun-6-42', 'Fornjot', null, null);
insert into ssbd_phenomenon values ('sun-6-43', 'Hati', null, null);
insert into ssbd_phenomenon values ('sun-6-44', 'Hyrrokkin', null, null);
insert into ssbd_phenomenon values ('sun-6-45', 'Kari', null, null);
insert into ssbd_phenomenon values ('sun-6-46', 'Loge', null, null);
insert into ssbd_phenomenon values ('sun-6-47', 'Skoll', null, null);
insert into ssbd_phenomenon values ('sun-6-48', 'Sutur', null, null);
insert into ssbd_phenomenon values ('sun-6-49', 'Anthe', null, null);
insert into ssbd_phenomenon values ('sun-6-50', 'Jarnsaxa', null, null);
insert into ssbd_phenomenon values ('sun-6-51', 'Greip', null, null);
insert into ssbd_phenomenon values ('sun-6-52', 'Tarqeq', null, null);
insert into ssbd_phenomenon values ('sun-6-53', 'Aegaeon', null, null);
insert into ssbd_phenomenon values ('sun-7-99', 'Uranus', null, null);
insert into ssbd_phenomenon values ('sun-7-1', 'Ariel', null, null);
insert into ssbd_phenomenon values ('sun-7-2', 'Umbriel', null, null);
insert into ssbd_phenomenon values ('sun-7-3', 'Titania', null, null);
insert into ssbd_phenomenon values ('sun-7-4', 'Oberon', null, null);
insert into ssbd_phenomenon values ('sun-7-5', 'Miranda', null, null);
insert into ssbd_phenomenon values ('sun-7-6', 'Cordelia', null, null);
insert into ssbd_phenomenon values ('sun-7-7', 'Ophelia', null, null);
insert into ssbd_phenomenon values ('sun-7-8', 'Bianca', null, null);
insert into ssbd_phenomenon values ('sun-7-9', 'Cressida', null, null);
insert into ssbd_phenomenon values ('sun-7-10', 'Desdemona', null, null);
insert into ssbd_phenomenon values ('sun-7-11', 'Juliet', null, null);
insert into ssbd_phenomenon values ('sun-7-12', 'Portia', null, null);
insert into ssbd_phenomenon values ('sun-7-13', 'Rosalind', null, null);
insert into ssbd_phenomenon values ('sun-7-14', 'Belinda', null, null);
insert into ssbd_phenomenon values ('sun-7-15', 'Puck', null, null);
insert into ssbd_phenomenon values ('sun-7-16', 'Caliban', null, null);
insert into ssbd_phenomenon values ('sun-7-17', 'Sycorax', null, null);
insert into ssbd_phenomenon values ('sun-7-18', 'Prospero', null, null);
insert into ssbd_phenomenon values ('sun-7-19', 'Setebos', null, null);
insert into ssbd_phenomenon values ('sun-7-20', 'Stephano', null, null);
insert into ssbd_phenomenon values ('sun-7-21', 'Trinculo', null, null);
insert into ssbd_phenomenon values ('sun-7-22', 'Francisco', null, null);
insert into ssbd_phenomenon values ('sun-7-23', 'Margaret', null, null);
insert into ssbd_phenomenon values ('sun-7-24', 'Ferdinand', null, null);
insert into ssbd_phenomenon values ('sun-7-25', 'Perdita', null, null);
insert into ssbd_phenomenon values ('sun-7-26', 'Mab', null, null);
insert into ssbd_phenomenon values ('sun-7-27', 'Cupid', null, null);
insert into ssbd_phenomenon values ('sun-8-99', 'Neptune', null, null);
insert into ssbd_phenomenon values ('sun-8-1', 'Triton', null, null);
insert into ssbd_phenomenon values ('sun-8-2', 'Nereid', null, null);
insert into ssbd_phenomenon values ('sun-8-3', 'Naiad', null, null);
insert into ssbd_phenomenon values ('sun-8-4', 'Thalassa', null, null);
insert into ssbd_phenomenon values ('sun-8-5', 'Despina', null, null);
insert into ssbd_phenomenon values ('sun-8-6', 'Galatea', null, null);
insert into ssbd_phenomenon values ('sun-8-7', 'Larissa', null, null);
insert into ssbd_phenomenon values ('sun-8-8', 'Proteus', null, null);
insert into ssbd_phenomenon values ('sun-8-9', 'Halimede', null, null);
insert into ssbd_phenomenon values ('sun-8-10', 'Psamathe', null, null);
insert into ssbd_phenomenon values ('sun-8-11', 'Sao', null, null);
insert into ssbd_phenomenon values ('sun-8-12', 'Laomedeia', null, null);
insert into ssbd_phenomenon values ('sun-8-13', 'Neso', null, null);
insert into ssbd_phenomenon values ('sun-9-99', 'Pluto', null, null);
insert into ssbd_phenomenon values ('sun-9-1', 'Charon', null, null);
insert into ssbd_phenomenon values ('sun-1000005', 'Borrelly', null, null);
insert into ssbd_phenomenon values ('sun-1000012', 'Churyumov-Gerasimenko', null, null);
insert into ssbd_phenomenon values ('sun-1000036', 'Halley', null, null);
insert into ssbd_phenomenon values ('sun-1000041', 'Hartley 2', null, null);
insert into ssbd_phenomenon values ('sun-1000093', 'Tempel 1', null, null);
insert into ssbd_phenomenon values ('sun-1000107', 'Wild 2', null, null);
insert into ssbd_phenomenon values ('sun-9511010', 'Gaspra', null, null);
insert into ssbd_phenomenon values ('sun-2431010', 'Ida', null, null);
insert into ssbd_phenomenon values ('sun-2431011', 'Dactyl', null, null);
insert into ssbd_phenomenon values ('sun-2000001', 'Ceres', null, null);
insert into ssbd_phenomenon values ('sun-2000002', 'Pallas', null, null);
insert into ssbd_phenomenon values ('sun-2000004', 'Vesta', null, null);
insert into ssbd_phenomenon values ('sun-2000016', 'Psyche', null, null);
insert into ssbd_phenomenon values ('sun-2000021', 'Lutetia', null, null);
insert into ssbd_phenomenon values ('sun-2000216', 'Kleopatra', null, null);
insert into ssbd_phenomenon values ('sun-2000433', 'Eros', null, null);
insert into ssbd_phenomenon values ('sun-2000511', 'Davida', null, null);
insert into ssbd_phenomenon values ('sun-2000253', 'Mathilde', null, null);
insert into ssbd_phenomenon values ('sun-2002867', 'Steins', null, null);
insert into ssbd_phenomenon values ('sun-2009969', 'Braille', null, null); -- synonyme 1992KD
insert into ssbd_phenomenon values ('sun-2004015', 'Wilson-Harrington', null, null);
insert into ssbd_phenomenon values ('sun-2004179', 'Toutatis', null, null);
insert into ssbd_phenomenon values ('sun-2025143', 'Itokawa', null, null);
insert into ssbd_phenomenon values ('sun-?2000052', '52 Europa', null, null);

-- les codes des ellipsoides sont ainsi construits :
-- <version de publication>:(<code du corps>:)<mot-clef caractéristique>
--
-- le code du corps est une partie optionnelle au sens où le lien direct entre un ellipsoïde et un corps n'est pas
-- obligatoire.
insert into ssbd_ellipsoid values ('2000:sun-1-99:default', 'sun-1-99', 'Mercury 2000 IAU', 2439700.00, 1000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-2-99:default', 'sun-2-99', 'Venus 2000 IAU', 6051800.00, 1000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-3-99:spherical', 'sun-3-99', 'Spherical Earth 2000 IAU', 6371000.00, 10., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-3-99:ellipsoidal', 'sun-3-99', 'Ellipsoidal Earth 2000 IAU', 6378140.00, 10., 'EPSG::9001', null, 6356750.00, 10.,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-4-99:spherical', 'sun-4-99', 'Spherical Mars 2000 IAU', 3389500.00, 200., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-4-99:ellipsoidal', 'sun-4-99', 'Ellipsoidal Mars 2000 IAU', 3396190.00, 100., 'EPSG::9001', null, 3376200.00, 100.,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-4-99:default', 'sun-4-99', 'Quadriaxial Mars 2000 IAU', 3396190.00, 100., 'EPSG::9001', null, 3373190.00, 100.,
 null, null, 3379210.00, 100.,
 'This ellipsoid is considered quadriaxial even if subplanetary and along orbit equatorial axes are equal.',
 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-5-99:spherical', 'sun-5-99', 'Spherical Jupiter 2000 IAU', 69911000.00, 6000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-5-99:ellipsoidal', 'sun-5-99', 'Ellipsoidal Jupiter 2000 IAU', 71492000.00,  4000., 'EPSG::9001', null, 66854000.00, 10000.,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-6-99:spherical', 'sun-6-99', 'Spherical Saturn 2000 IAU', 58232000.00, 6000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-6-99:ellipsoidal', 'sun-6-99', 'Ellipsoidal Saturn 2000 IAU', 60268000.00,  4000., 'EPSG::9001', null, 54364000.00, 10000.,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-7-99:spherical', 'sun-7-99', 'Spherical Uranus 2000 IAU', 25362000.00, 7000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-7-99:ellipsoidal', 'sun-7-99', 'Ellipsoidal Uranus 2000 IAU', 25559000.00,  4000., 'EPSG::9001', null, 24973000.00, 20000.,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-8-99:spherical', 'sun-8-99', 'Spherical Neptune 2000 IAU', 24622000.00, 19000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-8-99:ellipsoidal', 'sun-8-99', 'Ellipsoidal Neptune 2000 IAU', 24764000.00,  15000., 'EPSG::9001', null, 24341000.00, 30000.,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-9-99:spherical', 'sun-9-99', 'Spherical Pluto 2000 IAU', 1195000.00,  5000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);

insert into ssbd_ellipsoid values ('2000:sun-3-1:spherical', 'sun-3-1', 'Spherical Moon 2000 IAU', 1737400.00, 1000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-4-1:spherical', 'sun-4-1', 'Spherical Phobos 2000 IAU', 11100.00, 150., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-4-1:triaxial', 'sun-4-1', 'Triaxial Phobos 2000 IAU', 13400.00, null, 'EPSG::9001', null, 9200.00, null,
 11200.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-4-2:spherical', 'sun-4-2', 'Spherical Deimos 2000 IAU', 6200.00, 180., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-4-2:triaxial', 'sun-4-2', 'Triaxial Deimos 2000 IAU', 7500.00, null, 'EPSG::9001', null, 5200.00, null,
 6100.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-5-16:spherical', 'sun-5-16', 'Spherical Metis 2000 IAU', 21500., 4000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-5-16:ellipsoidal', 'sun-5-16', 'Ellipsoidal Metis 2000 IAU', 30000., null, 'EPSG::9001', null, 20000., null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-5-15:spherical', 'sun-5-15', 'Spherical Adrastea 2000 IAU', 8200., 4000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-5-15:triaxial', 'sun-5-15', 'Triaxial Adrastea 2000 IAU', 10000., null, 'EPSG::9001', null, 7000., null,
 8000., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-5-5:spherical', 'sun-5-5', 'Spherical Amalthea 2000 IAU', 83500., 3000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-5-5:triaxial', 'sun-5-5', 'Triaxial Amalthea 2000 IAU', 125000., null, 'EPSG::9001', null, 64000., null,
 73000., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-5-14:spherical', 'sun-5-14', 'Spherical Thebe 2000 IAU', 49300., 4000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-5-14:triaxial', 'sun-5-14', 'Triaxial Thebe 2000 IAU', 58000., null, 'EPSG::9001', null, 42000., null,
 49000., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-5-1:spherical', 'sun-5-1', 'Spherical Io 2000 IAU', 1821460., null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-5-1:triaxial', 'sun-5-1', 'Triaxial Io 2000 IAU', 1829400., null, 'EPSG::9001', null, 1815700., null,
 1819300., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-5-2:spherical', 'sun-5-2', 'Spherical Europa 2000 IAU', 1562090., null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-5-2:triaxial', 'sun-5-2', 'Triaxial Europa 2000 IAU', 1564130., null, 'EPSG::9001', null, 1560930., null,
 1561230., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-5-3:spherical', 'sun-5-3', 'Spherical Ganymede 2000 IAU', 2632345., null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-5-3:triaxial', 'sun-5-3', 'Triaxial Ganymede 2000 IAU', 2632400., null, 'EPSG::9001', null, 2632350., null,
 2632290., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-5-4:spherical', 'sun-5-4', 'Spherical Callisto 2000 IAU', 2409300., null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-5-4:triaxial', 'sun-5-4', 'Triaxial Callisto 2000 IAU', 2409400., null, 'EPSG::9001', null, 2409300., null,
 2409200., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-5-13:default', 'sun-5-13', 'Leda 2000 IAU', 5000., null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-5-6:default', 'sun-5-6', 'Himalia 2000 IAU', 85000., 10000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-5-10:default', 'sun-5-10', 'Lysithea 2000 IAU', 12000., null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-5-7:default', 'sun-5-7', 'Elara 2000 IAU', 40000., 10000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-5-12:default', 'sun-5-12', 'Ananke 2000 IAU', 10000., null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-5-11:default', 'sun-5-11', 'Carme 2000 IAU', 15000., null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-5-8:default', 'sun-5-8', 'Pasiphae 2000 IAU', 18000., null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-5-9:default', 'sun-5-9', 'Sinope 2000 IAU', 14000., null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);

insert into ssbd_ellipsoid values ('2000:sun-6-1:spherical', 'sun-6-1', 'Spherical Mimas 2000 IAU', 198600.00, 600., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-6-1:triaxial', 'sun-6-1', 'Triaxial Mimas 2000 IAU', 209100.00, 500., 'EPSG::9001', null, 191400.00, 500.,
 196200.00, 500., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-6-2:spherical', 'sun-6-2', 'Spherical Enceladus 2000 IAU', 249400.00, 300., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-6-2:triaxial', 'sun-6-2', 'Triaxial Enceladus 2000 IAU', 256300.00, 300., 'EPSG::9001', null, 244600.00, 500.,
 247300.00, 300., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-6-3:spherical', 'sun-6-3', 'Spherical Tethys 2000 IAU', 529800.00, 1500., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-6-3:triaxial', 'sun-6-3', 'Triaxial Tethys 2000 IAU', 535600.00, 1200., 'EPSG::9001', null, 525800.00, 1200.,
 528200.00, 1200., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-6-4:default', 'sun-6-4', 'Dione 2000 IAU', 560000.00, 5000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-6-5:default', 'sun-6-5', 'Rhea 2000 IAU', 764000.00, 4000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-6-6:default', 'sun-6-6', 'Titan 2000 IAU', 2575000.00, 2000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-6-7:spherical', 'sun-6-7', 'Spherical Hyperion 2000 IAU', 133000.00, 8000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-6-7:triaxial', 'sun-6-7', 'Triaxial Hyperion 2000 IAU', 164000.00, 8000., 'EPSG::9001', null, 107000.00, 8000.,
 130000.00, 8000., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-6-8:default', 'sun-6-8', 'Iapetus 2000 IAU', 718000.00, 8000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-6-9:spherical', 'sun-6-9', 'Spherical Phoebe 2000 IAU', 110000.00, 10000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-6-9:triaxial', 'sun-6-9', 'Triaxial Phoebe 2000 IAU', 115000.00, 10000., 'EPSG::9001', null, 105000.00, 10000.,
 110000.00, 10000., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-6-10:spherical', 'sun-6-10', 'Spherical Janus 2000 IAU', 88800.00, 4000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-6-10:triaxial', 'sun-6-10', 'Triaxial Janus 2000 IAU', 97000.00, null, 'EPSG::9001', null, 77000.00, null,
 95000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-6-11:spherical', 'sun-6-11', 'Spherical Epimetheus 2000 IAU', 59500.00, 3000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-6-11:triaxial', 'sun-6-11', 'Triaxial Epimetheus 2000 IAU', 69000.00, null, 'EPSG::9001', null, 55000.00, null,
 55000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-6-12:spherical', 'sun-6-12', 'Spherical Helene 2000 IAU', 16000.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
-- TODO : rayon polaire d'Helene suspect, de même que l'axis_b
insert into ssbd_ellipsoid values ('2000:sun-6-12:ellipsoidal', 'sun-6-12', 'Ellipsoidal Helene 2000 IAU', 17500.00, 2500., 'EPSG::9001', null, 700.00, null,
 17500.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-6-13:spherical', 'sun-6-13', 'Spherical Telesto 2000 IAU', 11000.00, 4000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-6-13:triaxial', 'sun-6-13', 'Triaxial Telesto 2000 IAU', 15000.00, 2500., 'EPSG::9001', null, 7500.00, 2500.,
 12500.00, 5000., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-6-14:spherical', 'sun-6-14', 'Spherical Calypso 2000 IAU', 9500.00, 4000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-6-14:triaxial', 'sun-6-14', 'Triaxial Calypso 2000 IAU', 15000.00, null, 'EPSG::9001', null, 8000.00, null,
 8000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-6-15:spherical', 'sun-6-15', 'Spherical Atlas 2000 IAU', 16000.00, 4000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-6-15:triaxial', 'sun-6-15', 'Triaxial Atlas 2000 IAU', 18500.00, null, 'EPSG::9001', null, 13500.00, null,
 17200.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-6-16:spherical', 'sun-6-16', 'Spherical Prometheus 2000 IAU', 50100.00, 3000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-6-16:triaxial', 'sun-6-16', 'Triaxial Prometheus 2000 IAU', 74000.00, null, 'EPSG::9001', null, 34000.00, null,
 50000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-6-17:spherical', 'sun-6-17', 'Spherical Pandora 2000 IAU', 41900.00, 2000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-6-17:triaxial', 'sun-6-17', 'Triaxial Pandora 2000 IAU', 55000.00, null, 'EPSG::9001', null, 31000.00, null,
 44000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-6-18:default', 'sun-6-18', 'Pan 2000 IAU', 10000., 3000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);

insert into ssbd_ellipsoid values ('2000:sun-6-32:default', 'sun-6-32', 'Methone 2000 IAU', 1600.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, null,'IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-6-33:default', 'sun-6-33', 'Pallene 2000 IAU', 2500.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, null,'IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-6-34:default', 'sun-6-34', 'Polydeuces 2000 IAU', 1300.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, null,'IAU','2000-01-01','2020:1',0);

insert into ssbd_ellipsoid values ('2000:sun-7-1:spherical', 'sun-7-1', 'Spherical Ariel 2000 IAU', 578900.00, 600., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-7-1:triaxial', 'sun-7-1', 'Triaxial Ariel 2000 IAU', 581100.00, 900., 'EPSG::9001', null, 577700.00, 1000.,
 577900.00, 600., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-7-2:default', 'sun-7-2', 'Umbriel 2000 IAU', 584700.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-7-3:default', 'sun-7-3', 'Titania 2000 IAU', 788900.00, 1800., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-7-4:default', 'sun-7-4', 'Oberon 2000 IAU', 761400.00, 2600., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-7-5:spherical', 'sun-7-5', 'Spherical Miranda 2000 IAU', 235800.00, 700., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-7-5:triaxial', 'sun-7-5', 'Triaxial Miranda 2000 IAU', 240400.00, 600., 'EPSG::9001', null, 232900.00, 1200.,
 234200.00, 900., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-7-6:default', 'sun-7-6', 'Cordelia 2000 IAU', 13000.00, 2000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-7-7:default', 'sun-7-7', 'Ophelia 2000 IAU', 15000.00, 2000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-7-8:default', 'sun-7-8', 'Bianca 2000 IAU', 21000.00, 3000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-7-9:default', 'sun-7-9', 'Cressida 2000 IAU', 31000.00, 4000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-7-10:default', 'sun-7-10', 'Desdemona 2000 IAU', 27000.00, 3000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-7-11:default', 'sun-7-11', 'Juliet 2000 IAU', 42000.00, 5000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-7-12:default', 'sun-7-12', 'Portia 2000 IAU', 54000.00, 6000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-7-13:default', 'sun-7-13', 'Rosalind 2000 IAU', 27000.00, 4000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-7-14:default', 'sun-7-14', 'Belinda 2000 IAU', 33000.00, 4000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-7-15:default', 'sun-7-15', 'Puck 2000 IAU', 77000.00, 5000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);


insert into ssbd_ellipsoid values ('2000:sun-8-1:default', 'sun-8-1', 'Triton 2000 IAU', 1352600.00, 2400., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-8-2:default', 'sun-8-2', 'Nereid 2000 IAU', 170000.00, 25000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-8-3:default', 'sun-8-3', 'Naiad 2000 IAU', 29000.00, 6000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-8-4:default', 'sun-8-4', 'Thalassa 2000 IAU', 40000.00, 8000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-8-5:default', 'sun-8-5', 'Despina 2000 IAU', 74000.00, 1000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-8-6:default', 'sun-8-6', 'Galatea 2000 IAU', 79000.00, 12000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-8-7:spherical', 'sun-8-7', 'Spherical Larissa 2000 IAU', 96000.00, 7000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-8-7:ellipsoidal', 'sun-8-7', 'Ellipsoidal Larissa 2000 IAU', 104000.00, null, 'EPSG::9001', null, 89000.00, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-8-8:spherical', 'sun-8-8', 'Spherical Proteus 2000 IAU', 208000.00, 8000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:sun-8-8:triaxial', 'sun-8-8', 'Triaxial Proteus 2000 IAU', 218000.00, null, 'EPSG::9001', null, 201000.00, null,
 208000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);


insert into ssbd_ellipsoid values ('2000:sun-9-1:default', 'sun-9-1', 'Charon 2000 IAU', 593000.00, 13000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);

insert into ssbd_ellipsoid values ('2000:9511010:spherical', 'sun-9511010', 'Spherical Gaspra 2000 IAU', 6100.00, 400., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:9511010:measured', 'sun-9511010', 'Measured Ellipsoid Gaspra 2000 IAU', 9100.00, null, 'EPSG::9001', null, 4400.00, null,
 5200.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:9511010:bestfit', 'sun-9511010', 'Best-fit Ellipsoid Gaspra 2000 IAU', 9100.00, null, 'EPSG::9001', null, 4700.00, null,
 5200.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:2431010:spherical', 'sun-2431010', 'Spherical Ida 2000 IAU', 15650.00, 600., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:2431010:measured', 'sun-2431010', 'Measured Ida 2000 IAU', 26800.00, null, 'EPSG::9001', null, 7600.00, null,
 12000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:2431010:bestfit', 'sun-2431010', 'Best-fit Ellipsoid Ida 2000 IAU', 30000.00, null, 'EPSG::9001', null, 9300.00, null,
 12600.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:2000001:spherical', 'sun-2000001', 'Spherical Ceres 2000 IAU', 476200.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, null,'IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:2000001:ellipsoidal', 'sun-2000001', 'Ellipsoidal Ceres 2000 IAU', 487300.00, null, 'EPSG::9001', null, 454700.00, null,
 null, null, null, null,
 null, null,'IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:2000021:spherical', 'sun-2000021', 'Spherical Lutetia 2000 IAU', 52500.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, null,'IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:2000021:triaxial', 'sun-2000021', 'Triaxial Lutetia 2000 IAU', 62000.00, null, 'EPSG::9001', null, 46500.00, null,
 50500.00, null, null, null,
 null, null,'IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:2000216:measured', 'sun-2000216', 'Measured Kleopatra 2000 IAU', 108500.00, null, 'EPSG::9001', null, 40500.00, null,
 47000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:2000433:default', 'sun-2000433', 'Mean Spherical Eros 2000 IAU', 7311.00, 10., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2000:2000433:bestfit', 'sun-2000433', 'Best-fit Spherical Eros 2000 IAU', 9236., 100., 'EPSG::9001', null, 7311.00, null,
 7311.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000','IAU','2000-01-01','2020:1',0);


insert into ssbd_ellipsoid values ('2009:0:default', 'sun-99', 'Sun 2009 IAU', 696000000.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-1-99:default', 'sun-1-99', 'Mercury 2009 IAU', 2439700.00, 1000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-2-99:default', 'sun-2-99', 'Venus 2009 IAU', 6051800.00, 1000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-3-99:spherical', 'sun-3-99', 'Spherical Earth 2009 IAU', 6371008.40, .1, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-3-99:default', 'sun-3-99', 'Ellipsoidial Earth 2009 IAU', 6378136.60, .1, 'EPSG::9001', null, 6356751.90, .1,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-3-1:default', 'sun-3-1', 'Moon 2009 IAU', 1737400.00, 1000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-4-99:spherical', 'sun-4-99', 'Spherical Mars 2009 IAU', 3389500.00, 200., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-4-99:ellipsoidal', 'sun-4-99', 'Ellipsoidal Mars 2009 IAU', 3396190.00, 100., 'EPSG::9001', null, 3376200.00, 100.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-4-99:default', 'sun-4-99', 'Quadriaxial Mars 2009 IAU', 3396190.00, 100., 'EPSG::9001', null, 3373190.00, 100.,
 null, null, 3379210.00, 100.,
 'This ellipsoid is considered quadriaxial even if subplanetary and along orbit equatorial axes are equal.',
 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-4-1:spherical', 'sun-4-1', 'Spherical Phobos 2009 IAU', 11080.00, 40., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-4-1:triaxial', 'sun-4-1', 'Triaxial Phobos 2009 IAU', 13000.00, null, 'EPSG::9001', null, 9100.00, null,
 11400.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-4-2:spherical', 'sun-4-2', 'Spherical Deimos 2009 IAU', 6200.00, 250., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-4-2:triaxial', 'sun-4-2', 'Triaxial Deimos 2009 IAU', 7800.00, null, 'EPSG::9001', null, 5100.00, null,
 6000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-5-99:spherical', 'sun-5-99', 'Spherical Jupiter 2009 IAU', 69911000.00, 6000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-5-99:ellipsoidal', 'sun-5-99', 'Ellipsoidal Jupiter 2009 IAU', 71492000.00, 4000., 'EPSG::9001', null, 66854000.00, 10000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-5-1:spherical', 'sun-5-1', 'Spherical Io 2009 IAU', 1821490.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-5-1:triaxial', 'sun-5-1', 'Triaxial Io 2009 IAU', 1829400.00, null, 'EPSG::9001', null, 1815700.00, null,
 1819400.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-5-2:spherical', 'sun-5-2', 'Spherical Europa 2009 IAU', 1560800.00, 300., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-5-2:triaxial', 'sun-5-2', 'Triaxial Europa 2009 IAU', 1562600.00, null, 'EPSG::9001', null, 1560950.00, null,
 1560300.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-5-3:default', 'sun-5-3', 'Ganymede 2009 IAU', 2631200.00, 1700., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-5-4:default', 'sun-5-4', 'Callisto 2009 IAU', 2410300.00, 1500., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-5-5:spherical', 'sun-5-5', 'Spherical Amalthea 2009 IAU', 83500.00, 3000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-5-5:triaxial', 'sun-5-5', 'Ellipsoidal Amalthea 2009 IAU', 125000.00, null, 'EPSG::9001', null, 64000.00, null,
 73000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-5-6:default', 'sun-5-6', 'Himalia 2009 IAU', 85000.00, 10000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-5-7:default', 'sun-5-7', 'Elara 2009 IAU', 40000.00, 10000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-5-8:default', 'sun-5-8', 'Pasiphae 2009 IAU', 18000.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-5-9:default', 'sun-5-9', 'Sinope 2009 IAU', 14000.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-5-10:default', 'sun-5-10', 'Lysithea 2009 IAU', 12000.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-5-11:default', 'sun-5-11', 'Carme 2009 IAU', 15000.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-5-12:default', 'sun-5-12', 'Ananke 2009 IAU', 10000.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-5-13:default', 'sun-5-13', 'Leda 2009 IAU', 5000.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-5-14:spherical', 'sun-5-14', 'Spherical Thebe 2009 IAU', 49300.00, 4000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-5-14:triaxial', 'sun-5-14', 'Triaxial Thebe 2009 IAU', 58000.00, null, 'EPSG::9001', null, 42000.00, null,
 49000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-5-15:spherical', 'sun-5-15', 'Spherical Adrastea 2009 IAU', 8200.00, 4000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-5-15:triaxial', 'sun-5-15', 'Ellipsoidal Adrastea 2009 IAU', 10000.00, null, 'EPSG::9001', null, 7000.00, null,
 8000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-5-16:spherical', 'sun-5-16', 'Spherical Metis 2009 IAU', 21500.00, 4000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-5-16:triaxial', 'sun-5-16', 'Ellipsoidal Metis 2009 IAU', 30000.00, null, 'EPSG::9001', null, 17000.00, null,
 20000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-99:spherical', 'sun-6-99', 'Spherical Saturn 2009 IAU', 58232000.00, 6000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-99:ellipsoidal', 'sun-6-99', 'Ellipsoidal Saturn 2009 IAU', 60268000.00, 4000., 'EPSG::9001', null, 54364000.00, 10000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-1:spherical', 'sun-6-1', 'Spherical Mimas 2009 IAU', 198200.00, 400., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-1:triaxial', 'sun-6-1', 'Triaxial Mimas 2009 IAU', 207800.00, 500., 'EPSG::9001', null, 190600.00, 300.,
 196700.00, 500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-2:spherical', 'sun-6-2', 'Spherical Enceladus 2009 IAU', 252100.00, 200., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-2:triaxial', 'sun-6-2', 'Triaxial Enceladus 2009 IAU', 256600.00, 600., 'EPSG::9001', null, 248300.00, 200.,
 251400.00, 200., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-3:spherical', 'sun-6-3', 'Spherical Tethys 2009 IAU', 531000.00, 600., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-3:triaxial', 'sun-6-3', 'Triaxial Tethys 2009 IAU', 538400.00, 300., 'EPSG::9001', null, 526300.00, 600.,
 528300.00, 1100., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-4:spherical', 'sun-6-4', 'Spherical Dione 2009 IAU', 561400.00, 400., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-4:triaxial', 'sun-6-4', 'Triaxial Dione 2009 IAU', 563400.00, 600., 'EPSG::9001', null, 559600.00, 400.,
 561300.00, 500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-5:spherical', 'sun-6-5', 'Spherical Rhea 2009 IAU', 763500.00, 600., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-5:triaxial', 'sun-6-5', 'Triaxial Rhea 2009 IAU', 765000.00, 700., 'EPSG::9001', null, 762400.00, 600.,
 763100.00, 600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-6:spherical', 'sun-6-6', 'Spherical Titan 2009 IAU', 2574730.00, 90., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-6:triaxial', 'sun-6-6', 'Triaxial Titan 2009 IAU', 2575150.00, 20., 'EPSG::9001', null, 2574470.00, 60.,
 2574780.00, 60., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-7:default', 'sun-6-7', 'Shperical Hyperion 2009 IAU', 135000.00, 4000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-7:triaxial', 'sun-6-7', 'Triaxial Hyperion 2009 IAU', 180100.00, 2000., 'EPSG::9001', null, 102700.00, 4500.,
 133000.00, 4500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-8:spherical', 'sun-6-8', 'Spherical Iapetus 2009 IAU', 734300.00, 2800., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-8:ellipsoidal', 'sun-6-8', 'Ellipsoidal Iapetus 2009 IAU', 745700.00, 2900., 'EPSG::9001', null, 712100.00, 1600.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-9:spherical', 'sun-6-9', 'Spherical Phoebe 2009 IAU', 106500.00, 700., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-9:triaxial', 'sun-6-9', 'Triaxial Phoebe 2009 IAU', 109400.00, 1400., 'EPSG::9001', null, 101800.00, 300.,
 108500.00, 600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-10:spherical', 'sun-6-10', 'Spherical Janus 2009 IAU', 89500.00, 1400., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-10:triaxial', 'sun-6-10', 'Triaxial Janus 2009 IAU', 101500.00, 1900., 'EPSG::9001', null, 76300.00, 1200.,
 92500.00, 1200., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-11:spherical', 'sun-6-11', 'Spherical Epimetheus 2009 IAU', 58100.00, 1.8, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-11:triaxial', 'sun-6-11', 'Triaxial Epimetheus 2009 IAU', 64900.00, 2000., 'EPSG::9001', null, 53100.00, 700.,
 57000.00, 3700., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-12:spherical', 'sun-6-12', 'Spherical Helene 2009 IAU', 17600.00, 400., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-12:triaxial', 'sun-6-12', 'Triaxial Helene 2009 IAU', 21700.00, 500., 'EPSG::9001', null, 13000.00, 300.,
 19100.00, 300., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-13:spherical', 'sun-6-13', 'Spherical Telesto 2009 IAU', 12400.00, 400., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-13:triaxial', 'sun-6-13', 'Triaxial Telesto 2009 IAU', 16300.00, 500., 'EPSG::9001', null, 10000.00, 300.,
 11800.00, 300., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-14:spherical', 'sun-6-14', 'Spherical Calypso 2009 IAU', 10700.00, 700., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-14:triaxial', 'sun-6-14', 'Triaxial Calypso 2009 IAU', 15100.00, 300., 'EPSG::9001', null, 7000.00, 600.,
 11500.00, 2200., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-15:spherical', 'sun-6-15', 'Spherical Atlas 2009 IAU', 15100.00, 900., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-15:triaxial', 'sun-6-15', 'Triaxial Atlas 2009 IAU', 20400.00, 1200., 'EPSG::9001', null, 9400.00, 800.,
 17700.00, 700., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-16:spherical', 'sun-6-16', 'Spherical Prometheus 2009 IAU', 43100.00, 2700., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-16:triaxial', 'sun-6-16', 'Triaxial Prometheus 2009 IAU', 67800.00, 3100., 'EPSG::9001', null, 29700.00, 1900.,
 39700.00, 3100., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-17:spherical', 'sun-6-17', 'Spherical Pandora 2009 IAU', 40700.00, 1500., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-17:triaxial', 'sun-6-17', 'Triaxial Pandora 2009 IAU', 52000.00, 1800., 'EPSG::9001', null, 32000.00, 900.,
 40500.00, 2000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-18:spherical', 'sun-6-18', 'Spherical Pan 2009 IAU', 14100.00, 1300., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-18:triaxial', 'sun-6-18', 'Triaxial Pan 2009 IAU', 17200.00, 1900., 'EPSG::9001', null, 10400.00, 840.,
 15700.00, 1300., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-32:default', 'sun-6-32', 'Methone 2009 IAU', 1600.00, 600., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-33:spherical', 'sun-6-33', 'Spherical Pallene 2009 IAU', 2500.00, 600., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-33:triaxial', 'sun-6-33', 'Triaxial Pallene 2009 IAU', 2900.00, 600., 'EPSG::9001', null, 2000.00, 400.,
 2800.00, 800., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-34:spherical', 'sun-6-34', 'Spherical Polydeuces 2009 IAU', 1300.00, 400., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-34:triaxial', 'sun-6-34', 'Triaxial Polydeuces 2009 IAU', 1500.00, 600., 'EPSG::9001', null, 1000.00, 200.,
 1200.00, 400., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-35:spherical', 'sun-6-35', 'Spherical Daphnis 2009 IAU', 3800.00, 800., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-35:triaxial', 'sun-6-35', 'Triaxial Daphnis 2009 IAU', 4300.00, 700., 'EPSG::9001', null, 3200.00, 800.,
 4100.00, 900., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-6-49:default', 'sun-6-49', 'Anthe 2009 IAU', 1000.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-7-99:spherical', 'sun-7-99', 'Spherical Uranus 2009 IAU', 25362000.00, 7000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-7-99:ellipsoidal', 'sun-7-99', 'Ellipsoidal Uranus 2009 IAU', 25559000.00, 4000., 'EPSG::9001', null, 24973000.00, 20000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-7-1:spherical', 'sun-7-1', 'Spherical Ariel 2009 IAU', 578900.00, 600., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-7-1:triaxial', 'sun-7-1', 'Triaxial Ariel 2009 IAU', 581100.00, 900., 'EPSG::9001', null, 577700.00, 1000.,
 577900.00, 600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-7-2:default', 'sun-7-2', 'Umbriel 2009 IAU', 584700.00, 2800., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-7-3:default', 'sun-7-3', 'Titania 2009 IAU', 788900.00, 1800., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-7-4:default', 'sun-7-4', 'Oberon 2009 IAU', 761400.00, 2600., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-7-5:spherical', 'sun-7-5', 'Spherical Miranda 2009 IAU', 235800.00, 700., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-7-5:triaxial', 'sun-7-5', 'Triaxial Miranda 2009 IAU', 240400.00, 600., 'EPSG::9001', null, 232900.00, 1200.,
 234200.00, 900., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-7-6:default', 'sun-7-6', 'Cordelia 2009 IAU', 13000.00, 2000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-7-7:default', 'sun-7-7', 'Ophelia 2009 IAU', 15000.00, 2000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-7-8:default', 'sun-7-8', 'Bianca 2009 IAU', 21000.00, 3000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-7-9:default', 'sun-7-9', 'Cressida 2009 IAU', 31000.00, 4000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-7-10:default', 'sun-7-10', 'Desdemona 2009 IAU', 27000.00, 3000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-7-11:default', 'sun-7-11', 'Juliet 2009 IAU', 42000.00, 5000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-7-12:default', 'sun-7-12', 'Portia 2009 IAU', 54000.00, 6000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-7-13:default', 'sun-7-13', 'Rosalind 2009 IAU', 27000.00, 4000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-7-14:default', 'sun-7-14', 'Belinda 2009 IAU', 33000.00, 4000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-7-15:default', 'sun-7-15', 'Puck 2009 IAU', 77000.00, 5000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-8-99:spherical', 'sun-8-99', 'Spherical Neptune 2009 IAU', 24622000.00, 19000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-8-99:ellipsoidal', 'sun-8-99', 'Ellipsoidal Neptune 2009 IAU', 24764000.00, 15000., 'EPSG::9001', null, 24341000.00, 30000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-8-1:default', 'sun-8-1', 'Triton 2009 IAU', 1352600.00, 2400., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-8-2:default', 'sun-8-2', 'Nereid 2009 IAU', 170000.00, 25000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-8-3:default', 'sun-8-3', 'Naiad 2009 IAU', 29000.00, 6000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-8-4:default', 'sun-8-4', 'Thalassa 2009 IAU', 40000.00, 8000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-8-5:default', 'sun-8-5', 'Despina 2009 IAU', 74000.00, 10000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-8-6:default', 'sun-8-6', 'Galatea 2009 IAU', 79000.00, 12000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-8-7:spherical', 'sun-8-7', 'Spherical Larissa 2009 IAU', 96000.00, 7000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-8-7:ellipsoidal', 'sun-8-7', 'Ellipsoidal Larissa 2009 IAU', 104000.00, null, 'EPSG::9001', null, 89000.00, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-8-8:spherical', 'sun-8-8', 'Spherical Proteus 2009 IAU', 208000.00, 8000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-8-8:triaxial', 'sun-8-8', 'Triaxial Proteus 2009 IAU', 218000.00, null, 'EPSG::9001', null, 201000.00, null,
 208000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-9-99:default', 'sun-9-99', 'Pluto 2009 IAU', 1195000.00, 5000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:sun-9-1:default', 'sun-9-1', 'Charon 2009 IAU', 605000.00, 8000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:1000005:default', 'sun-1000005', 'Effective Borrelly 2009 IAU', 4220.00, 50., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:1000005:measured', 'sun-1000005', 'Measured Borrelly 2009 IAU', 3500.00, 200., 'EPSG::9001', null, null, null,
  null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:1000036:triaxial', 'sun-1000036', 'Triaxial Halley 2009 IAU', 8000.00, 500., 'EPSG::9001', null, 4000.00, 250.,
 4000.00, 250., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:1000093:spherical', 'sun-1000093', 'Spherical Tempel 1 2009 IAU', 3000.00, 100., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:1000093:default', 'sun-1000093', 'Biaxial Tempel 1 2009 IAU', 3700.00, null, 'EPSG::9001', null, 2500.00, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:1000107:spherical', 'sun-1000107', 'Spherical Wild 2 2009 IAU', 1975.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:1000107:triaxial', 'sun-1000107', 'Triaxial Wild 2 2009 IAU', 2700.00, null, 'EPSG::9001', null, 1500.00, null,
 1900.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:9511010:spherical', 'sun-9511010', 'Spherical Gaspra 2009 IAU', 6100.00, 400., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:9511010:triaxial', 'sun-9511010', 'Triaxial Gaspra 2009 IAU', 9100.00, null, 'EPSG::9001', null, 4400.00, null,
 5200.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:2431010:spherical', 'sun-2431010', 'Spherical Ida 2009 IAU', 15650.00, 600., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:2431010:triaxial', 'sun-2431010', 'Triaxial Ida 2009 IAU', 26800.00, null, 'EPSG::9001', null, 7600.00, null,
 12000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:2000001:spherical', 'sun-2000001', 'Spherical Ceres 2009 IAU', 476200.00, 1700., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:2000001:ellipsoidal', 'sun-2000001', 'Ellipsoidal Ceres 2009 IAU', 487300.00, 1800., 'EPSG::9001', null, 454700.00, 1600.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:2000004:default', 'sun-2000004', 'Vesta 2009 IAU', 289000.00, 5000., 'EPSG::9001', null, 229000.00, 5000.,
 280000.00, 5000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:2000021:spherical', 'sun-2000021', 'Spherical Lutetia 2009 IAU', 52500.00, 2500., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:2000021:triaxial', 'sun-2000021', 'Triaxial Lutetia 2009 IAU', 62000.00, 2500., 'EPSG::9001', null, 46500.00, 6500.,
 50500.00, 2000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:2000216:default', 'sun-2000216', 'Kleopatra 2009 IAU', 108500.00, null, 'EPSG::9001', null, 40500.00, null,
 47000.00, null, null, null,
 null, null,'IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:2000433:spherical', 'sun-2000433', 'Spherical Eros 2009 IAU', 8450.00, 20., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:2000433:triaxial', 'sun-2000433', 'Triaxial Eros 2009 IAU', 17000.00, null, 'EPSG::9001', null, 5500.00, null,
 5500.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:2000511:spherical', 'sun-2000511', 'Spherical Davida 2009 IAU', 150000.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:2000511:triaxial', 'sun-2000511', 'Triaxial Davida 2009 IAU', 180000.00, null, 'EPSG::9001', null, 127000.00, null,
 147000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:2000253:spherical', 'sun-2000253', 'Spherical Mathilde 2009 IAU', 26500.00, 1300., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:2000253:triaxial', 'sun-2000253', 'Triaxial Mathilde 2009 IAU', 33000.00, null, 'EPSG::9001', null, 23000.00, null,
 24000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:2002867:spherical', 'sun-2002867', 'Spherical Steins 2009 IAU', 2700.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:2002867:triaxial', 'sun-2002867', 'Triaxial Steins 2009 IAU', 3240.00, null, 'EPSG::9001', null, 2040.00, null,
 2730.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:2004179:default', 'sun-2004179', 'Toutatis 2009 IAU', 2130.00, null, 'EPSG::9001', null, 850.00, null,
 1015.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2009:2025143:default', 'sun-2025143', 'Itokawa 2009 IAU', 535.00, null, 'EPSG::9001', null, 209.00, null,
 294.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009','IAU','2009-01-01','2020:1',0);






insert into ssbd_ellipsoid values ('2015:0:default', 'sun-99', 'Sun 2015 IAU', 695700000.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-1-99:spherical', 'sun-1-99', 'Spherical Mercury 2015 IAU', 2439400.00, 100., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-1-99:ellipsoidal', 'sun-1-99', 'Ellipsoidal Mercury 2015 IAU', 2440530.00, 40., 'EPSG::9001', null, 2438260.00, 40.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-1-99:triaxial', 'sun-1-99', 'Triaxial Mercury 2015 IAU', 2440530.00, 40., 'EPSG::9001', null, 2438260.00, 40.,
 2439280.00, 40., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-2-99:default', 'sun-2-99', 'Venus 2015 IAU', 6051800.00, 1000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-3-99:spherical', 'sun-3-99', 'Spherical Earth 2015 IAU', 6371008.40, .1, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-3-99:ellipsoidal', 'sun-3-99', 'Ellipsoidal Earth 2015 IAU', 6378136.60, .1, 'EPSG::9001', null, 6356751.90, .1,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-3-99:ellipsoidal-iau', 'sun-3-99', 'Ellipsoidal Earth 2015 IAU Resolution', 6378100., null, 'EPSG::9001', null, 6356800., null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-3-1:default', 'sun-3-1', 'Moon 2015 IAU', 1737400.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);

insert into ssbd_ellipsoid values ('2015:sun-4-99:spherical', 'sun-4-99', 'Spherical Mars 2015 IAU', 3389500.00, 200., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-4-99:ellipsoidal', 'sun-4-99', 'Ellipsoidal Mars 2015 IAU', 3396190.00, 10., 'EPSG::9001', null, 3376200.00, 10.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-4-99:default', 'sun-4-99', 'Quadriaxial Mars 2015 IAU', 3396190.00, null, 'EPSG::9001', null, 3373190.00, 10.,
 null, null, 3379210., 10.,
 'This ellipsoid is considered quadriaxial even if subplanetary and along orbit equatorial axes are equal.',
 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-4-1:spherical', 'sun-4-1', 'Spherical Phobos 2015 IAU', 11080.00, 40., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-4-1:triaxial', 'sun-4-1', 'Triaxial Phobos 2015 IAU', 13000.00, null, 'EPSG::9001', null, 9100.00, null,
 11400.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-4-2:spherical', 'sun-4-2', 'Spherical Deimos 2015 IAU', 6200.00, 250., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-4-2:triaxial', 'sun-4-2', 'Triaxial Deimos 2015 IAU', 7800.00, null, 'EPSG::9001', null, 5100.00, null,
 6000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);

insert into ssbd_ellipsoid values ('2015:sun-5-99:spherical', 'sun-5-99', 'Spherical Jupiter 2015 IAU', 69911000.00, 6000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-5-99:ellipsoidal', 'sun-5-99', 'Ellipsoidal Jupiter 2015 IAU', 71492000.00, 4000., 'EPSG::9001', null, 66854000.00, 10000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-5-1:spherical', 'sun-5-1', 'Spherical Io 2015 IAU', 1821490.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-5-1:triaxial', 'sun-5-1', 'Triaxial Io 2015 IAU', 1829400.00, null, 'EPSG::9001', null, 1815700.00, null,
 1819400.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-5-2:spherical', 'sun-5-2', 'Spherical Europa 2015 IAU', 1560800.00, 300., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-5-2:triaxial', 'sun-5-2', 'Triaxial Europa 2015 IAU', 1562600.00, null, 'EPSG::9001', null, 1559500.00, null,
 1560300.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-5-3:default', 'sun-5-3', 'Ganymede 2015 IAU', 2631200.00, 1700., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-5-4:default', 'sun-5-4', 'Callisto 2015 IAU', 2410300.00, 1500., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-5-5:spherical', 'sun-5-5', 'Spherical Amalthea 2015 IAU', 83500.00, 3000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-5-5:triaxial', 'sun-5-5', 'Triaxial Amalthea 2015 IAU', 125000.00, null, 'EPSG::9001', null, 64000.00, null,
 73000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-5-6:default', 'sun-5-6', 'Himalia 2015 IAU', 85000.00, 10000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-5-7:default', 'sun-5-7', 'Elara 2015 IAU', 40000.00, 10000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-5-8:default', 'sun-5-8', 'Pasiphae 2015 IAU', 18000.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-5-9:default', 'sun-5-9', 'Sinope 2015 IAU', 14000.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-5-10:default', 'sun-5-10', 'Lysithea 2015 IAU', 12000.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-5-11:default', 'sun-5-11', 'Carme 2015 IAU', 15000.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-5-12:default', 'sun-5-12', 'Ananke 2015 IAU', 10000.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-5-13:default', 'sun-5-13', 'Leda 2015 IAU', 5000.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-5-14:spherical', 'sun-5-14', 'Spherical Thebe 2015 IAU', 49300.00, 4000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-5-14:triaxial', 'sun-5-14', 'Triaxial Thebe 2015 IAU', 58000.00, null, 'EPSG::9001', null, 42000.00, null,
 49000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-5-15:spherical', 'sun-5-15', 'Spherical Adrastea 2015 IAU', 8200.00, 4000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-5-15:triaxial', 'sun-5-15', 'Triaxial Adrastea 2015 IAU', 10000.00, null, 'EPSG::9001', null, 7000.00, null,
 8000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-5-16:spherical', 'sun-5-16', 'Spherical Metis 2015 IAU', 21500.00, 4000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-5-16:triaxial', 'sun-5-16', 'Triaxial Metis 2015 IAU', 30000.00, null, 'EPSG::9001', null, 17000.00, null,
 20000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);

insert into ssbd_ellipsoid values ('2015:sun-6-99:spherical', 'sun-6-99', 'Spherical Saturn 2015 IAU', 58232000.00, 6000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-99:ellipsoidal', 'sun-6-99', 'Ellipsoidal Saturn 2015 IAU', 60268000.00, 4000., 'EPSG::9001', null, 54364000.00, 10000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-1:spherical', 'sun-6-1', 'Spherical Mimas 2015 IAU', 198200.00, 400., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-1:triaxial', 'sun-6-1', 'Triaxial Mimas 2015 IAU', 207800.00, 500., 'EPSG::9001', null, 190600.00, 300.,
 196700.00, 500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-2:spherical', 'sun-6-2', 'Spherical Enceladus 2015 IAU', 252100.00, 200., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-2:triaxial', 'sun-6-2', 'Triaxial Enceladus 2015 IAU', 256600.00, 600., 'EPSG::9001', null, 248300.00, 200.,
 251400.00, 200., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-3:spherical', 'sun-6-3', 'Spherical Tethys 2015 IAU', 531000.00, 600., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-3:triaxial', 'sun-6-3', 'Triaxial Tethys 2015 IAU', 538400.00, 300., 'EPSG::9001', null, 526300.00, 600.,
 528300.00, 1100., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-4:spherical', 'sun-6-4', 'Spherical Dione 2015 IAU', 561400.00, 400., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-4:triaxial', 'sun-6-4', 'Triaxial Dione 2015 IAU', 563400.00, 600., 'EPSG::9001', null, 559600.00, 400.,
 561300.00, 500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-5:spherical', 'sun-6-5', 'Spherical Rhea 2015 IAU', 763500.00, 600., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-5:triaxial', 'sun-6-5', 'Triaxial Rhea 2015 IAU', 765000.00, 700., 'EPSG::9001', null, 762400.00, 600.,
 763100.00, 600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-6:spherical', 'sun-6-6', 'Spherical Titan 2015 IAU', 2575000.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-6:bestfit', 'sun-6-6', 'Best-fit Spherical Titan 2015 IAU', 2574730.00, 90., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-6:triaxial', 'sun-6-6', 'Triaxial Titan 2015 IAU', 2575150.00, 20., 'EPSG::9001', null, 2574470.00, 60.,
 2574780.00, 60., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-7:spherical', 'sun-6-7', 'Spherical Hyperion 2015 IAU', 135000.00, 4000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-7:triaxial', 'sun-6-7', 'Triaxial Hyperion 2015 IAU', 180100.00, 2000., 'EPSG::9001', null, 102700.00, 4500.,
 133000.00, 4500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-8:spherical', 'sun-6-8', 'Spherical Iapetus 2015 IAU', 734300.00, 2800., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-8:triaxial', 'sun-6-8', 'Triaxial Iapetus 2015 IAU', 745700.00, 2900., 'EPSG::9001', null, 712100.00, 1600.,
 745700.00, 2900., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-9:spherical', 'sun-6-9', 'Spherical Phoebe 2015 IAU', 106500.00, 700., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-9:triaxial', 'sun-6-9', 'Triaxial Phoebe 2015 IAU', 109400.00, 1400., 'EPSG::9001', null, 101800.00, 300.,
 108500.00, 600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-10:spherical', 'sun-6-10', 'Spherical Janus 2015 IAU', 89200.00, 800., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-10:triaxial', 'sun-6-10', 'Triaxial Janus 2015 IAU', 101700.00, 1600., 'EPSG::9001', null, 76300.00, 400.,
 93000.00, 700., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-11:spherical', 'sun-6-11', 'Spherical Epimetheus 2015 IAU', 58200.00, 1200., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-11:triaxial', 'sun-6-11', 'Triaxial Epimetheus 2015 IAU', 64900.00, 1300., 'EPSG::9001', null, 53000.00, 500.,
 57300.00, 2500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-12:spherical', 'sun-6-12', 'Spherical Helene 2015 IAU', 18000.00, 400., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-12:triaxial', 'sun-6-12', 'Triaxial Helene 2015 IAU', 22500.00, 500., 'EPSG::9001', null, 13300.00, 200.,
 19600.00, 300., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-13:spherical', 'sun-6-13', 'Spherical Telesto 2015 IAU', 12400.00, 400., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-13:triaxial', 'sun-6-13', 'Triaxial Telesto 2015 IAU', 16300.00, 500., 'EPSG::9001', null, 9800.00, 300.,
 11800.00, 300., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-14:spherical', 'sun-6-14', 'Spherical Calypso 2015 IAU', 9600.00, 600., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-14:triaxial', 'sun-6-14', 'Triaxial Calypso 2015 IAU', 15300.00, 300., 'EPSG::9001', null, 6300.00, 600.,
 9300.00, 2200., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-15:spherical', 'sun-6-15', 'Spherical Atlas 2015 IAU', 15100.00, 800., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-15:triaxial', 'sun-6-15', 'Triaxial Atlas 2015 IAU', 20500.00, 900., 'EPSG::9001', null, 9400.00, 800.,
 17800.00, 700., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-16:spherical', 'sun-6-16', 'Spherical Prometheus 2015 IAU', 43100.00, 1200., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-16:triaxial', 'sun-6-16', 'Triaxial Prometheus 2015 IAU', 68200.00, 800., 'EPSG::9001', null, 28200.00, 800.,
 41600.00, 1800., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-17:spherical', 'sun-6-17', 'Spherical Pandora 2015 IAU', 40600.00, 1500., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-17:triaxial', 'sun-6-17', 'Triaxial Pandora 2015 IAU', 52200.00, 1800., 'EPSG::9001', null, 31500.00, 900.,
 40800.00, 2000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-18:spherical', 'sun-6-18', 'Spherical Pan 2015 IAU', 14000.00, 1200., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-18:triaxial', 'sun-6-18', 'Triaxial Pan 2015 IAU', 17200.00, 1700., 'EPSG::9001', null, 10400.00, 900.,
 15400.00, 1200., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-32:spherical', 'sun-6-32', 'Spherical Methone 2015 IAU', 1450.00, 30., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-32:triaxial', 'sun-6-32', 'Triaxial Methone 2015 IAU', 1940.00, 20., 'EPSG::9001', null, 1210.00, 20.,
 1290.00, 40., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-33:spherical', 'sun-6-33', 'Spherical Pallene 2015 IAU', 2230.00, 70., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-33:triaxial', 'sun-6-33', 'Triaxial Pallene 2015 IAU', 2880.00, 70., 'EPSG::9001', null, 1800.00, 70.,
 2080.00, 70., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-34:spherical', 'sun-6-34', 'Spherical Polydeuces 2015 IAU', 1300.00, 400., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-34:triaxial', 'sun-6-34', 'Triaxial Polydeuces 2015 IAU', 1500.00, 600., 'EPSG::9001', null, 1000.00, 200.,
 1200.00, 400., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-35:spherical', 'sun-6-35', 'Spherical Daphnis 2015 IAU', 3800.00, 800., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-35:triaxial', 'sun-6-35', 'Triaxial Daphnis 2015 IAU', 4600.00, 700., 'EPSG::9001', null, 2800.00, 800.,
 4500.00, 900., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-49:default', 'sun-6-49', 'Anthe 2015 IAU', 500.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-53:spherical', 'sun-6-53', 'Spherical Aegaeon 2015 IAU', 330.00, 60., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-6-53:triaxial', 'sun-6-53', 'Triaxial Aegaeon 2015 IAU', 700.00, 50., 'EPSG::9001', null, 200.00, 80.,
 250.00, 60., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);

insert into ssbd_ellipsoid values ('2015:sun-7-99:spherical', 'sun-7-99', 'Spherical Uranus 2015 IAU', 25362000.00, 7000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-7-99:ellipsoidal', 'sun-7-99', 'Ellipsoidal Uranus 2015 IAU', 25559000.00, 4000., 'EPSG::9001', null, 24973000.00, 20000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-7-1:spherical', 'sun-7-1', 'Spherical Ariel 2015 IAU', 578900.00, 600., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-7-1:triaxial', 'sun-7-1', 'Triaxial Ariel 2015 IAU', 581100.00, 900., 'EPSG::9001', null, 577700.00, 100.,
 577900.00, 600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-7-2:default', 'sun-7-2', 'Umbriel 2015 IAU', 584700.00, 2800., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-7-3:default', 'sun-7-3', 'Titania 2015 IAU', 788900.00, 1800., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-7-4:default', 'sun-7-4', 'Oberon 2015 IAU', 761400.00, 2600., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-7-5:spherical', 'sun-7-5', 'Spherical Miranda 2015 IAU', 235800.00, 700., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-7-5:triaxial', 'sun-7-5', 'Triaxial Miranda 2015 IAU', 240400.00, 600., 'EPSG::9001', null, 232900.00, 1200.,
 234200.00, 900., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-7-6:default', 'sun-7-6', 'Cordelia 2015 IAU', 13000.00, 2000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-7-7:default', 'sun-7-7', 'Ophelia 2015 IAU', 15000.00, 2000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-7-8:default', 'sun-7-8', 'Bianca 2015 IAU', 21000.00, 3000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-7-9:default', 'sun-7-9', 'Cressida 2015 IAU', 31000.00, 4000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-7-10:default', 'sun-7-10', 'Desdemona 2015 IAU', 27000.00, 3000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-7-11:default', 'sun-7-11', 'Juliet 2015 IAU', 42000.00, 5000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-7-12:default', 'sun-7-12', 'Portia 2015 IAU', 54000.00, 6000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-7-13:default', 'sun-7-13', 'Rosalind 2015 IAU', 27000.00, 4000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-7-14:default', 'sun-7-14', 'Belinda 2015 IAU', 33000.00, 4000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-7-15:default', 'sun-7-15', 'Puck 2015 IAU', 77000.00, 51900., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);

insert into ssbd_ellipsoid values ('2015:sun-8-99:spherical', 'sun-8-99', 'Spherical Neptune 2015 IAU', 24622000.00, 19000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-8-99:ellipsoidal', 'sun-8-99', 'Ellipsoidal Neptune 2015 IAU', 24764000.00, 15000., 'EPSG::9001', null, 24341000.00, 30000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-8-1:default', 'sun-8-1', 'Triton 2015 IAU', 1352600.00, 2400., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-8-2:default', 'sun-8-2', 'Nereid 2015 IAU', 170000.00, 25000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-8-3:default', 'sun-8-3', 'Naiad 2015 IAU', 29000.00, 6000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-8-4:default', 'sun-8-4', 'Thalassa 2015 IAU', 40000.00, 8000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-8-5:default', 'sun-8-5', 'Despina 2015 IAU', 74000.00, 10000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-8-6:default', 'sun-8-6', 'Galatea 2015 IAU', 79000.00, 12000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-8-7:spherical', 'sun-8-7', 'Spherical Larissa 2015 IAU', 96000.00, 7000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-8-7:ellipsoidal', 'sun-8-7', 'Ellipsoidal Larissa 2015 IAU', 104000.00, null, 'EPSG::9001', null, 89000.00, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-8-8:spherical', 'sun-8-8', 'Spherical Proteus 2015 IAU', 208000.00, 8000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-8-8:triaxial', 'sun-8-8', 'Triaxial Proteus 2015 IAU', 218000.00, null, 'EPSG::9001', null, 201000.00, null,
 208000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);

insert into ssbd_ellipsoid values ('2015:sun-9-99:default', 'sun-9-99', 'Pluto 2015 IAU', 1188300.00, 1600., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:sun-9-1:default', 'sun-9-1', 'Charon 2015 IAU', 606000.00, 1000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:1000005:spherical', 'sun-1000005', 'Spherical Borrelly 2015 IAU', 4220.00, 50., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:1000005:measured', 'sun-1000005', 'Measured Borrelly 2015 IAU', 3500.00, 200., 'EPSG::9001', null, -1, null,
  null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:1000012:spherical', 'sun-1000012', 'Spherical Churyumov-Gerasimenko 2015 IAU', 1650.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:1000012:triaxial', 'sun-1000012', 'Triaxial Churyumov-Gerasimenko 2015 IAU', 2400.00, null, 'EPSG::9001', null, 1200.00, null,
 1550.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:1000036:default', 'sun-1000036', 'Halley 2015 IAU', 8000.00, 500., 'EPSG::9001', null, 4000.00, 250.,
 4000.00, 250., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:1000041:spherical', 'sun-1000041', 'Spherical Hartley 2 2015 IAU', 580.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:1000041:triaxial', 'sun-1000041', 'Triaxial Hartley 2 2015 IAU', 340.00, null, 'EPSG::9001', null, 1160.00, null,
 1160.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:1000093:spherical', 'sun-1000093', 'Spherical Tempel 1 2015 IAU', 3000.00, 100., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:1000093:default', 'sun-1000093', 'Biaxial Tempel 1 2015 IAU', 3700.00, null, 'EPSG::9001', null, 2500., null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:1000107:spherical', 'sun-1000107', 'Spherical Wild 2 2015 IAU', 1975.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:1000107:triaxial', 'sun-1000107', 'Triaxial Wild 2 2015 IAU', 2700.00, null, 'EPSG::9001', null, 1500.00, null,
 1900.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:9511010:spherical', 'sun-9511010', 'Spherical Gaspra 2015 IAU', 6100.00, 400., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:9511010:triaxial', 'sun-9511010', 'Triaxial Gaspra 2015 IAU', 9100.00, null, 'EPSG::9001', null, 4400.00, null,
 5200.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:2431010:spherical', 'sun-2431010', 'Spherical Ida 2015 IAU', 15650.00, 600., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:2431010:triaxial', 'sun-2431010', 'Triaxial Ida 2015 IAU', 26800.00, null, 'EPSG::9001', null, 7600.00, null,
 12000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:2000001:spherical', 'sun-2000001', 'Spherical Ceres 2015 IAU', 470000.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:2000001:ellipsoidal', 'sun-2000001', 'Ellipsoidal Ceres 2015 IAU', 487300.00, null, 'EPSG::9001', null, 446000.00, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:2000004:default', 'sun-2000004', 'Vesta 2015 IAU', 289000.00, 5000., 'EPSG::9001', null, 229000.00, 5000.,
 280000.00, 5000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:2000016:spherical', 'sun-2000016', 'Spherical Psyche 2015 IAU', 113000.00, 23000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:2000016:triaxial', 'sun-2000016', 'Triaxial Psyche 2015 IAU', 139500.00, 13950., 'EPSG::9001', null, 94500.00, 9450.,
 116000.0, 11600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:2000021:spherical', 'sun-2000021', 'Spherical Lutetia 2015 IAU', 52500.00, 2500., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:2000021:triaxial', 'sun-2000021', 'Triaxial Lutetia 2015 IAU', 62000.00, 2500., 'EPSG::9001', null, 46500.00, 6500.,
 50500.00, 2000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:?2000052:spherical', 'sun-?2000052', 'Spherical 52 Europa 2015 IAU', 157500.00, 7000., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:?2000052:triaxial', 'sun-?2000052', 'Triaxial 52 Europa 2015 IAU', 189500.00, 16000., 'EPSG::9001', null, 124500.00, 10000.,
 165000.00, 8000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:2000216:default', 'sun-2000216', 'Kleopatra 2015 IAU', 108500.00, null, 'EPSG::9001', null, 40500.00, null,
 47000.00, null, null, null,
 null, null,'IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:2000433:spherical', 'sun-2000433', 'Spherical Eros 2015 IAU', 8450.00, 20., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:2000433:triaxial', 'sun-2000433', 'Triaxial Eros 2015 IAU', 17000.00, null, 'EPSG::9001', null, 5500.00, null,
 5500.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:2000511:spherical', 'sun-2000511', 'Spherical Davida 2015 IAU', 150000.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:2000511:triaxial', 'sun-2000511', 'Triaxial Davida 2015 IAU', 180000.00, null, 'EPSG::9001', null, 127000.00, null,
 147000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:2000253:spherical', 'sun-2000253', 'Spherical Mathilde 2015 IAU', 26500.00, 1300., 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:2000253:triaxial', 'sun-2000253', 'Triaxial Mathilde 2015 IAU', 33000.00, null, 'EPSG::9001', null, 23000.00, null,
 24000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:2002867:spherical', 'sun-2002867', 'Spherical Steins 2015 IAU', 2700.00, null, 'EPSG::9001', null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:2002867:triaxial', 'sun-2002867', 'Triaxial Steins 2015 IAU', 3240.00, null, 'EPSG::9001', null, 2040.00, null,
 2730.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:2004179:default', 'sun-2004179', 'Toutatis 2015 IAU', 2130.00, null, 'EPSG::9001', null, 850.00, null,
 1015.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);
insert into ssbd_ellipsoid values ('2015:2025143:default', 'sun-2025143', 'Itokawa 2015 IAU', 268.00, null, 'EPSG::9001', null, 104.00, null,
 147.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015','IAU','2015-01-01','2020:1',0);

-- on construit un identifiant de système de méridiens origines de la manière suivante :
-- <identifiant de corps>:<identifiant du système pour le corps>
--
-- exemple : 'sun-1-99:crust' identifie le système de méridiens origines attachés à la croûte de Mercure
insert into ssbd_primemeridiansystem values ('sun-1-99', 'crust', 'Mercury crust system', 0.004264857, 0.000000364,
'EPSG::1035', null, 'set information source','IAU','2015-01-01','2020:1',0);
insert into ssbd_primemeridiansystem values ('sun-2-99', 'crust', 'Venus crust system', null, 0.,
'EPSG::1035', null, 'set information source','IAU','2015-01-01','2020:1',0);
insert into ssbd_primemeridiansystem values ('sun-3-99', 'crust', 'Earth crust system', null, 0.,
'EPSG::1035', null, 'set information source','set data source','2015-01-01','2020:1',0);
insert into ssbd_primemeridiansystem values ('sun-4-99', 'crust', 'Mars crust system', null, 0.,
'EPSG::1035', null, 'set information source','IAU','2015-01-01','2020:1',0);
insert into ssbd_primemeridiansystem values ('sun-5-99', '1', 'System I Jupiter', null, 0.,
'EPSG::1035', 'Refers to the mean atmospheric equatorial rotation.', 'set information source','IAU','2015-01-01','2020:1',0);
insert into ssbd_primemeridiansystem values ('sun-5-99', '2', 'System II Jupiter', null, 0.,
'EPSG::1035', 'Refers to the mean atmospheric rotation north of the south component of the north equatorial belt, and south of the north component of the south equatorial belt.', 'set information source','IAU','2015-01-01','2020:1',0);
insert into ssbd_primemeridiansystem values ('sun-5-99', '3', 'System III Jupiter', null, 0.,
'EPSG::1035', 'Refers to the magnetic field rotation.', 'set information source','IAU','2015-01-01','2020:1',0);
insert into ssbd_primemeridiansystem values ('sun-6-99', '1', 'System I Saturn', null, 0.,
'EPSG::1035', 'Refers to the mean atmospheric equatorial rotation.', 'set information source','IAU','2015-01-01','2020:1',0);
insert into ssbd_primemeridiansystem values ('sun-6-99', '2', 'System II Saturn', null, 0.,
'EPSG::1035', 'Refers to the mean atmospheric rotation north of the south component of the north equatorial belt, and south of the north component of the south equatorial belt.', 'set information source','IAU','2015-01-01','2020:1',0);
insert into ssbd_primemeridiansystem values ('sun-6-99', '3', 'System III Saturn', null, 0.,
'EPSG::1035', 'Refers to the magnetic field rotation.', 'set information source','IAU','2015-01-01','2020:1',0);
insert into ssbd_primemeridiansystem values ('sun-7-99', '1', 'System I Uranus', null, 0.,
'EPSG::1035', 'Refers to the mean atmospheric equatorial rotation.', 'set information source','IAU','2015-01-01','2020:1',0);
insert into ssbd_primemeridiansystem values ('sun-7-99', '2', 'System II Uranus', null, 0.,
'EPSG::1035', 'Refers to the mean atmospheric rotation north of the south component of the north equatorial belt, and south of the north component of the south equatorial belt.', 'set information source','IAU','2015-01-01','2020:1',0);
insert into ssbd_primemeridiansystem values ('sun-7-99', '3', 'System III Uranus', null, 0.,
'EPSG::1035', 'Refers to the magnetic field rotation.', 'set information source','IAU','2015-01-01','2020:1',0);
insert into ssbd_primemeridiansystem values ('sun-8-99', '2', 'System II Neptune', null, 0.,
'EPSG::1035', 'Refers to the rotation of optically observed features in the Neptunian atmosphere.', 'set information source','IAU','2015-01-01','2020:1',0);

-- on construit un identifiant de méridien origine de la manière suivante :
-- <identifiant de sytème de méridien origine>:<identifiant de méridien origine dans le système>
--
-- exemple 'sun-1-99:crust:hun_kal' identifie le méridien origine 'Hun Kal' du système de méridiens origines attachés à
-- la croûte de Mercure
insert into ssbd_primemeridian values ('sun-1-99', 'crust', 'hun_kal', 'Hun Kal Mercury Meridian', 0., 'prograde', 20., 20., 'prograde',
'EPSG::9102', null, 'set information source','IAU','2015-01-01','2020:1',0);
insert into ssbd_primemeridian values ('sun-2-99', 'crust', 'ariadne', 'Ariadne Venus Meridian', 0., 'prograde', .0, .0, 'prograde',
'EPSG::9102', null, 'set information source','IAU','2015-01-01','2020:1',0);
insert into ssbd_primemeridian values ('sun-3-99', 'crust', 'greenwich', 'Greenwich Earth Meridian', 0., 'prograde', .0, .0, 'prograde',
'EPSG::9102', null, 'set information source','IAU','2015-01-01','2020:1',0);
insert into ssbd_primemeridian values ('sun-4-99', 'crust', 'airy-0', 'Airy-0 Mars Meridian', 0., 'prograde', .0, .0, 'prograde',
'EPSG::9102', null, 'set information source','IAU','2015-01-01','2020:1',0);
insert into ssbd_primemeridian values ('sun-5-99', '1', 'pm', 'System I Jupiter Meridian', 0., 'prograde', .0, .0, 'prograde',
'EPSG::9102', null, 'set information source','IAU','2015-01-01','2020:1',0);
insert into ssbd_primemeridian values ('sun-5-99', '2', 'pm', 'System II Jupiter Meridian', 0., 'prograde', .0, .0, 'prograde',
'EPSG::9102', null, 'set information source','IAU','2015-01-01','2020:1',0);
insert into ssbd_primemeridian values ('sun-5-99', '3', 'pm', 'System III Jupiter Meridian', 0., 'prograde', .0, .0, 'prograde',
'EPSG::9102', null, 'set information source','IAU','2015-01-01','2020:1',0);
insert into ssbd_primemeridian values ('sun-6-99', '1', 'pm', 'System I Saturn Meridian', 0., 'prograde', .0, .0, 'prograde',
'EPSG::9102', null, 'set information source','IAU','2015-01-01','2020:1',0);
insert into ssbd_primemeridian values ('sun-6-99', '2', 'pm', 'System II Saturn Meridian', 0., 'prograde', .0, .0, 'prograde',
'EPSG::9102', null, 'set information source','IAU','2015-01-01','2020:1',0);
insert into ssbd_primemeridian values ('sun-6-99', '3', 'pm', 'System III Saturn Meridian', 0., 'prograde', .0, .0, 'prograde',
'EPSG::9102', null, 'set information source','IAU','2015-01-01','2020:1',0);
insert into ssbd_primemeridian values ('sun-7-99', '1', 'pm', 'System I Uranus Meridian', 0., 'prograde', .0, .0, 'prograde',
'EPSG::9102', null, 'set information source','IAU','2015-01-01','2020:1',0);
insert into ssbd_primemeridian values ('sun-7-99', '2', 'pm', 'System II Uranus Meridian', 0., 'prograde', .0, .0, 'prograde',
'EPSG::9102', null, 'set information source','IAU','2015-01-01','2020:1',0);
insert into ssbd_primemeridian values ('sun-7-99', '3', 'pm', 'System III Uranus Meridian', 0., 'prograde', .0, .0, 'prograde',
'EPSG::9102', null, 'set information source','IAU','2015-01-01','2020:1',0);
insert into ssbd_primemeridian values ('sun-8-99', '2', 'pm', 'System II Neptune Meridian', 0., 'prograde', .0, .0, 'prograde',
'EPSG::9102', null, 'set information source','IAU','2015-01-01','2020:1',0);

insert into ssbd_datum values ('sun-1-99:2000:default', 'Mercury 2000', 'geodetic', null, null, '2000:sun-1-99:default', 'sun-1-99', 'crust', 'hun_kal', 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-2-99:2000:default', 'Venus 2000', 'geodetic', null, null, '2000:sun-2-99:default', 'sun-2-99', 'crust', 'ariadne', 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-3-99:2000:spherical', 'Spherical Earth 2000', 'geodetic', null, null, '2000:sun-3-99:spherical', 'sun-3-99', 'crust', 'greenwich', 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-3-99:2000:ellipsoidal', 'Ellipsoidal Earth 2000', 'geodetic', null, null, '2000:sun-3-99:ellipsoidal', 'sun-3-99', 'crust', 'greenwich', 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-4-99:2000:spherical', 'Spherical Mars 2000', 'geodetic', null, null, '2000:sun-4-99:spherical', 'sun-4-99', 'crust', 'airy-0', 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-4-99:2000:ellipsoidal', 'Ellipsoidal Mars 2000', 'geodetic', null, null, '2000:sun-4-99:ellipsoidal', 'sun-4-99', 'crust', 'airy-0', 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-4-99:2000:default', 'Quadriaxial Mars 2000', 'geodetic', null, null, '2000:sun-4-99:default', 'sun-4-99', 'crust', 'airy-0', 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-99:2000:spherical', 'Spherical Jupiter 2000', 'geodetic', null, null, '2000:sun-5-99:spherical', 'sun-5-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-99:2000:ellipsoidal', 'Ellipsoidal Jupiter 2000', 'geodetic', null, null, '2000:sun-5-99:ellipsoidal', 'sun-5-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-99:2000:spherical', 'Spherical Saturn 2000', 'geodetic', null, null, '2000:sun-6-99:spherical', 'sun-6-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-99:2000:ellipsoidal', 'Ellipsoidal Saturn 2000', 'geodetic', null, null, '2000:sun-6-99:ellipsoidal', 'sun-6-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-99:2000:spherical', 'Spherical Uranus 2000', 'geodetic', null, null, '2000:sun-7-99:spherical', 'sun-7-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-99:2000:ellipsoidal', 'Ellipsoidal Uranus 2000', 'geodetic', null, null, '2000:sun-7-99:ellipsoidal', 'sun-7-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-99:2000:spherical', 'Spherical Neptune 2000', 'geodetic', null, null, '2000:sun-8-99:spherical', 'sun-8-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-99:2000:ellipsoidal', 'Ellipsoidal Neptune 2000', 'geodetic', null, null, '2000:sun-8-99:ellipsoidal', 'sun-8-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-9-99:2000:spherical', 'Spherical Pluto 2000', 'geodetic', null, null, '2000:sun-9-99:spherical', 'sun-9-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);

insert into ssbd_datum values ('sun-3-1:2000:spherical', 'Spherical Moon 2000', 'geodetic', null, null, '2000:sun-3-1:spherical', 'sun-3-1', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-4-1:2000:spherical', 'Spherical Phobos 2000', 'geodetic', null, null, '2000:sun-4-1:spherical', 'sun-4-1', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-4-1:2000:triaxial', 'Triaxial Phobos 2000', 'geodetic', null, null, '2000:sun-4-1:triaxial', 'sun-4-1', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-4-2:2000:spherical', 'Spherical Deimos 2000', 'geodetic', null, null, '2000:sun-4-2:spherical', 'sun-4-2', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-4-2:2000:triaxial', 'Triaxial Deimos 2000', 'geodetic', null, null, '2000:sun-4-2:triaxial', 'sun-4-2', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-16:2000:spherical', 'Spherical Metis 2000', 'geodetic', null, null, '2000:sun-5-16:spherical', 'sun-5-16', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-16:2000:ellipsoidal', 'Ellipsoidal Metis 2000', 'geodetic', null, null, '2000:sun-5-16:ellipsoidal', 'sun-5-16', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-15:2000:spherical', 'Spherical Adrastea 2000', 'geodetic', null, null, '2000:sun-5-15:spherical', 'sun-5-15', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-15:2000:triaxial', 'Triaxial Adrastea 2000', 'geodetic', null, null, '2000:sun-5-15:triaxial', 'sun-5-15', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-5:2000:spherical', 'Spherical Amalthea 2000', 'geodetic', null, null, '2000:sun-5-5:spherical', 'sun-5-5', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-5:2000:triaxial', 'Triaxial Amalthea 2000', 'geodetic', null, null, '2000:sun-5-5:triaxial', 'sun-5-5', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-14:2000:spherical', 'Spherical Thebe 2000', 'geodetic', null, null, '2000:sun-5-14:spherical', 'sun-5-14', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-14:2000:triaxial', 'Triaxial Thebe 2000', 'geodetic', null, null, '2000:sun-5-14:triaxial', 'sun-5-14', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-1:2000:spherical', 'Spherical Io 2000', 'geodetic', null, null, '2000:sun-5-1:spherical', 'sun-5-1', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-1:2000:triaxial', 'Triaxial Io 2000', 'geodetic', null, null, '2000:sun-5-1:triaxial', 'sun-5-1', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-2:2000:spherical', 'Spherical Europa 2000', 'geodetic', null, null, '2000:sun-5-2:spherical', 'sun-5-2', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-2:2000:triaxial', 'Triaxial Europa 2000', 'geodetic', null, null, '2000:sun-5-2:triaxial', 'sun-5-2', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-3:2000:spherical', 'Spherical Ganymede 2000', 'geodetic', null, null, '2000:sun-5-3:spherical', 'sun-5-3', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-3:2000:triaxial', 'Triaxial Ganymede 2000', 'geodetic', null, null, '2000:sun-5-3:triaxial', 'sun-5-3', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-4:2000:spherical', 'Spherical Callisto 2000', 'geodetic', null, null, '2000:sun-5-4:spherical', 'sun-5-4', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-4:2000:triaxial', 'Triaxial Callisto 2000', 'geodetic', null, null, '2000:sun-5-4:triaxial', 'sun-5-4', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-13:2000:default', 'Leda 2000', 'geodetic', null, null, '2000:sun-5-13:default', 'sun-5-13', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-6:2000:default', 'Himalia 2000', 'geodetic', null, null, '2000:sun-5-6:default', 'sun-5-6', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-10:2000:default', 'Lysithea 2000', 'geodetic', null, null, '2000:sun-5-10:default', 'sun-5-10', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-7:2000:default', 'Elara 2000', 'geodetic', null, null, '2000:sun-5-7:default', 'sun-5-7', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-12:2000:default', 'Ananke 2000', 'geodetic', null, null, '2000:sun-5-12:default', 'sun-5-12', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-11:2000:default', 'Carme 2000', 'geodetic', null, null, '2000:sun-5-11:default', 'sun-5-11', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-8:2000:default', 'Pasiphae 2000', 'geodetic', null, null, '2000:sun-5-8:default', 'sun-5-8', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-9:2000:default', 'Sinope 2000', 'geodetic', null, null, '2000:sun-5-9:default', 'sun-5-9', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);

insert into ssbd_datum values ('sun-6-1:2000:spherical', 'Spherical Mimas 2000', 'geodetic', null, null, '2000:sun-6-1:spherical', 'sun-6-1', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-1:2000:triaxial', 'Triaxial Mimas 2000', 'geodetic', null, null, '2000:sun-6-1:triaxial', 'sun-6-1', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-2:2000:spherical', 'Spherical Enceladus 2000', 'geodetic', null, null, '2000:sun-6-2:spherical', 'sun-6-2', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-2:2000:triaxial', 'Triaxial Enceladus 2000', 'geodetic', null, null, '2000:sun-6-2:triaxial', 'sun-6-2', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-3:2000:spherical', 'Spherical Tethys 2000', 'geodetic', null, null, '2000:sun-6-3:spherical', 'sun-6-3', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-3:2000:triaxial', 'Triaxial Tethys 2000', 'geodetic', null, null, '2000:sun-6-3:triaxial', 'sun-6-3', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-4:2000:default', 'Dione 2000', 'geodetic', null, null, '2000:sun-6-4:default', 'sun-6-4', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-5:2000:default', 'Rhea 2000', 'geodetic', null, null, '2000:sun-6-5:default', 'sun-6-5', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-6:2000:default', 'Titan 2000', 'geodetic', null, null, '2000:sun-6-6:default', 'sun-6-6', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-7:2000:spherical', 'Spherical Hyperion 2000', 'geodetic', null, null, '2000:sun-6-7:spherical', 'sun-6-7', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-7:2000:triaxial', 'Triaxial Hyperion 2000', 'geodetic', null, null, '2000:sun-6-7:triaxial', 'sun-6-7', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-8:2000:default', 'Iapetus 2000', 'geodetic', null, null, '2000:sun-6-8:default', 'sun-6-8', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-9:2000:spherical', 'Spherical Phoebe 2000', 'geodetic', null, null, '2000:sun-6-9:spherical', 'sun-6-9', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-9:2000:triaxial', 'Triaxial Phoebe 2000', 'geodetic', null, null, '2000:sun-6-9:triaxial', 'sun-6-9', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-10:2000:spherical', 'Spherical Janus 2000', 'geodetic', null, null, '2000:sun-6-10:spherical', 'sun-6-10', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-10:2000:triaxial', 'Triaxial Janus 2000', 'geodetic', null, null, '2000:sun-6-10:triaxial', 'sun-6-10', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-11:2000:spherical', 'Spherical Epimetheus 2000', 'geodetic', null, null, '2000:sun-6-11:spherical', 'sun-6-11', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-11:2000:triaxial', 'Triaxial Epimetheus 2000', 'geodetic', null, null, '2000:sun-6-11:triaxial', 'sun-6-11', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-12:2000:spherical', 'Spherical Helene 2000', 'geodetic', null, null, '2000:sun-6-12:spherical', 'sun-6-12', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
-- TODO : rayon polaire d'Helene suspect, de même que l'axis_b
insert into ssbd_datum values ('sun-6-12:2000:ellipsoidal', 'Ellipsoidal Helene 2000', 'geodetic', null, null, '2000:sun-6-12:ellipsoidal', 'sun-6-12', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-13:2000:spherical', 'Spherical Telesto 2000', 'geodetic', null, null, '2000:sun-6-13:spherical', 'sun-6-13', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-13:2000:triaxial', 'Triaxial Telesto 2000', 'geodetic', null, null, '2000:sun-6-13:triaxial', 'sun-6-13', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-14:2000:spherical', 'Spherical Calypso 2000', 'geodetic', null, null, '2000:sun-6-14:spherical', 'sun-6-14', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-14:2000:triaxial', 'Triaxial Calypso 2000', 'geodetic', null, null, '2000:sun-6-14:triaxial', 'sun-6-14', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-15:2000:spherical', 'Spherical Atlas 2000', 'geodetic', null, null, '2000:sun-6-15:spherical', 'sun-6-15', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-15:2000:triaxial', 'Triaxial Atlas 2000', 'geodetic', null, null, '2000:sun-6-15:triaxial', 'sun-6-15', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-16:2000:spherical', 'Spherical Prometheus 2000', 'geodetic', null, null, '2000:sun-6-16:spherical', 'sun-6-16', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-16:2000:triaxial', 'Triaxial Prometheus 2000', 'geodetic', null, null, '2000:sun-6-16:triaxial', 'sun-6-16', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-17:2000:spherical', 'Spherical Pandora 2000', 'geodetic', null, null, '2000:sun-6-17:spherical', 'sun-6-17', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-17:2000:triaxial', 'Triaxial Pandora 2000', 'geodetic', null, null, '2000:sun-6-17:triaxial', 'sun-6-17', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-18:2000:default', 'Pan 2000', 'geodetic', null, null, '2000:sun-6-18:default', 'sun-6-18', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);

insert into ssbd_datum values ('sun-6-32:2000:default', 'Methone 2000', 'geodetic', null, null, '2000:sun-6-32:default', 'sun-6-32', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-33:2000:default', 'Pallene 2000', 'geodetic', null, null, '2000:sun-6-33:default', 'sun-6-33', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-34:2000:default', 'Polydeuces 2000', 'geodetic', null, null, '2000:sun-6-34:default', 'sun-6-34', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);

insert into ssbd_datum values ('sun-7-1:2000:spherical', 'Spherical Ariel 2000', 'geodetic', null, null, '2000:sun-7-1:spherical', 'sun-7-1', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-1:2000:triaxial', 'Triaxial Ariel 2000', 'geodetic', null, null, '2000:sun-7-1:triaxial', 'sun-7-1', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-2:2000:default', 'Umbriel 2000', 'geodetic', null, null, '2000:sun-7-2:default', 'sun-7-2', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-3:2000:default', 'Titania 2000', 'geodetic', null, null, '2000:sun-7-3:default', 'sun-7-3', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-4:2000:default', 'Oberon 2000', 'geodetic', null, null, '2000:sun-7-4:default', 'sun-7-4', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-5:2000:spherical', 'Spherical Miranda 2000', 'geodetic', null, null, '2000:sun-7-5:spherical', 'sun-7-5', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-5:2000:triaxial', 'Triaxial Miranda 2000', 'geodetic', null, null, '2000:sun-7-5:triaxial', 'sun-7-5', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-6:2000:default', 'Cordelia 2000', 'geodetic', null, null, '2000:sun-7-6:default', 'sun-7-6', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-7:2000:default', 'Ophelia 2000', 'geodetic', null, null, '2000:sun-7-7:default', 'sun-7-7', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-8:2000:default', 'Bianca 2000', 'geodetic', null, null, '2000:sun-7-8:default', 'sun-7-8', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-9:2000:default', 'Cressida 2000', 'geodetic', null, null, '2000:sun-7-9:default', 'sun-7-9', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-10:2000:default', 'Desdemona 2000', 'geodetic', null, null, '2000:sun-7-10:default', 'sun-7-10', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-11:2000:default', 'Juliet 2000', 'geodetic', null, null, '2000:sun-7-11:default', 'sun-7-11', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-12:2000:default', 'Portia 2000', 'geodetic', null, null, '2000:sun-7-12:default', 'sun-7-12', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-13:2000:default', 'Rosalind 2000', 'geodetic', null, null, '2000:sun-7-13:default', 'sun-7-13', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-14:2000:default', 'Belinda 2000', 'geodetic', null, null, '2000:sun-7-14:default', 'sun-7-14', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-15:2000:default', 'Puck 2000', 'geodetic', null, null, '2000:sun-7-15:default', 'sun-7-15', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);


insert into ssbd_datum values ('sun-8-1:2000:default', 'Triton 2000', 'geodetic', null, null, '2000:sun-8-1:default', 'sun-8-1', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-2:2000:default', 'Nereid 2000', 'geodetic', null, null, '2000:sun-8-2:default', 'sun-8-2', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-3:2000:default', 'Naiad 2000', 'geodetic', null, null, '2000:sun-8-3:default', 'sun-8-3', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-4:2000:default', 'Thalassa 2000', 'geodetic', null, null, '2000:sun-8-4:default', 'sun-8-4', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-5:2000:default', 'Despina 2000', 'geodetic', null, null, '2000:sun-8-5:default', 'sun-8-5', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-6:2000:default', 'Galatea 2000', 'geodetic', null, null, '2000:sun-8-6:default', 'sun-8-6', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-7:2000:spherical', 'Spherical Larissa 2000', 'geodetic', null, null, '2000:sun-8-7:spherical', 'sun-8-7', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-7:2000:ellipsoidal', 'Ellipsoidal Larissa 2000', 'geodetic', null, null, '2000:sun-8-7:ellipsoidal', 'sun-8-7', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-8:2000:spherical', 'Spherical Proteus 2000', 'geodetic', null, null, '2000:sun-8-8:spherical', 'sun-8-8', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-8:2000:triaxial', 'Triaxial Proteus 2000', 'geodetic', null, null, '2000:sun-8-8:triaxial', 'sun-8-8', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);


insert into ssbd_datum values ('sun-9-1:2000:default', 'Charon 2000', 'geodetic', null, null, '2000:sun-9-1:default', 'sun-9-1', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);

insert into ssbd_datum values ('9511010:2000:spherical', 'Spherical Gaspra 2000', 'geodetic', null, null, '2000:9511010:spherical', '9511010', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('9511010:2000:measured', 'Measured Ellipsoid Gaspra 2000', 'geodetic', null, null, '2000:9511010:measured', '9511010', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('9511010:2000:bestfit', 'Best-fit Ellipsoid Gaspra 2000', 'geodetic', null, null, '2000:9511010:bestfit', '9511010', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('2431010:2000:spherical', 'Spherical Ida 2000', 'geodetic', null, null, '2000:2431010:spherical', '2431010', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('2431010:2000:measured', 'Measured Ida 2000', 'geodetic', null, null, '2000:2431010:measured', '2431010', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('2431010:2000:bestfit', 'Best-fit Ellipsoid Ida 2000', 'geodetic', null, null, '2000:2431010:bestfit', '2431010', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('2000001:2000:spherical', 'Spherical Ceres 2000', 'geodetic', null, null, '2000:2000001:spherical', '2000001', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('2000001:2000:ellipsoidal', 'Ellipsoidal Ceres 2000', 'geodetic', null, null, '2000:2000001:ellipsoidal', '2000001', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('2000021:2000:spherical', 'Spherical Lutetia 2000', 'geodetic', null, null, '2000:2000021:spherical', '2000021', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('2000021:2000:triaxial', 'Triaxial Lutetia 2000', 'geodetic', null, null, '2000:2000021:triaxial', '2000021', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('2000216:2000:measured', 'Measured Kleopatra 2000', 'geodetic', null, null, '2000:2000216:measured', '2000216', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('2000433:2000:default', 'Mean Spherical Eros 2000', 'geodetic', null, null, '2000:2000433:default', '2000433', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);
insert into ssbd_datum values ('2000433:2000:bestfit', 'Best-fit Spherical Eros 2000', 'geodetic', null, null, '2000:2000433:bestfit', '2000433', null, null, 'Planetology.', null, 'set information source', 'IAU', '2000-01-01', '2020:1', 0);


insert into ssbd_datum values ('0:2009:default', 'Sun 2009', 'geodetic', null, null, '2009:0:default', '0', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-1-99:2009:default', 'Mercury 2009', 'geodetic', null, null, '2009:sun-1-99:default', 'sun-1-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-2-99:2009:default', 'Venus 2009', 'geodetic', null, null, '2009:sun-2-99:default', 'sun-2-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-3-99:2009:spherical', 'Spherical Earth 2009', 'geodetic', null, null, '2009:sun-3-99:spherical', 'sun-3-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-3-99:2009:default', 'Ellipsoidial Earth 2009', 'geodetic', null, null, '2009:sun-3-99:default', 'sun-3-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-3-1:2009:default', 'Moon 2009', 'geodetic', null, null, '2009:sun-3-1:default', 'sun-3-1', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-4-99:2009:spherical', 'Spherical Mars 2009', 'geodetic', null, null, '2009:sun-4-99:spherical', 'sun-4-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-4-99:2009:ellipsoidal', 'Ellipsoidal Mars 2009', 'geodetic', null, null, '2009:sun-4-99:ellipsoidal', 'sun-4-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-4-99:2009:default', 'Quadriaxial Mars 2009', 'geodetic', null, null, '2009:sun-4-99:default', 'sun-4-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-4-1:2009:spherical', 'Spherical Phobos 2009', 'geodetic', null, null, '2009:sun-4-1:spherical', 'sun-4-1', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-4-1:2009:triaxial', 'Triaxial Phobos 2009', 'geodetic', null, null, '2009:sun-4-1:triaxial', 'sun-4-1', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-4-2:2009:spherical', 'Spherical Deimos 2009', 'geodetic', null, null, '2009:sun-4-2:spherical', 'sun-4-2', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-4-2:2009:triaxial', 'Triaxial Deimos 2009', 'geodetic', null, null, '2009:sun-4-2:triaxial', 'sun-4-2', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-99:2009:spherical', 'Spherical Jupiter 2009', 'geodetic', null, null, '2009:sun-5-99:spherical', 'sun-5-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-99:2009:ellipsoidal', 'Ellipsoidal Jupiter 2009', 'geodetic', null, null, '2009:sun-5-99:ellipsoidal', 'sun-5-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-1:2009:spherical', 'Spherical Io 2009', 'geodetic', null, null, '2009:sun-5-1:spherical', 'sun-5-1', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-1:2009:triaxial', 'Triaxial Io 2009', 'geodetic', null, null, '2009:sun-5-1:triaxial', 'sun-5-1', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-2:2009:spherical', 'Spherical Europa 2009', 'geodetic', null, null, '2009:sun-5-2:spherical', 'sun-5-2', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-2:2009:triaxial', 'Triaxial Europa 2009', 'geodetic', null, null, '2009:sun-5-2:triaxial', 'sun-5-2', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-3:2009:default', 'Ganymede 2009', 'geodetic', null, null, '2009:sun-5-3:default', 'sun-5-3', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-4:2009:default', 'Callisto 2009', 'geodetic', null, null, '2009:sun-5-4:default', 'sun-5-4', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-5:2009:spherical', 'Spherical Amalthea 2009', 'geodetic', null, null, '2009:sun-5-5:spherical', 'sun-5-5', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-5:2009:triaxial', 'Ellipsoidal Amalthea 2009', 'geodetic', null, null, '2009:sun-5-5:triaxial', 'sun-5-5', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-6:2009:default', 'Himalia 2009', 'geodetic', null, null, '2009:sun-5-6:default', 'sun-5-6', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-7:2009:default', 'Elara 2009', 'geodetic', null, null, '2009:sun-5-7:default', 'sun-5-7', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-8:2009:default', 'Pasiphae 2009', 'geodetic', null, null, '2009:sun-5-8:default', 'sun-5-8', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-9:2009:default', 'Sinope 2009', 'geodetic', null, null, '2009:sun-5-9:default', 'sun-5-9', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-10:2009:default', 'Lysithea 2009', 'geodetic', null, null, '2009:sun-5-10:default', 'sun-5-10', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-11:2009:default', 'Carme 2009', 'geodetic', null, null, '2009:sun-5-11:default', 'sun-5-11', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-12:2009:default', 'Ananke 2009', 'geodetic', null, null, '2009:sun-5-12:default', 'sun-5-12', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-13:2009:default', 'Leda 2009', 'geodetic', null, null, '2009:sun-5-13:default', 'sun-5-13', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-14:2009:spherical', 'Spherical Thebe 2009', 'geodetic', null, null, '2009:sun-5-14:spherical', 'sun-5-14', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-14:2009:triaxial', 'Triaxial Thebe 2009', 'geodetic', null, null, '2009:sun-5-14:triaxial', 'sun-5-14', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-15:2009:spherical', 'Spherical Adrastea 2009', 'geodetic', null, null, '2009:sun-5-15:spherical', 'sun-5-15', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-15:2009:triaxial', 'Ellipsoidal Adrastea 2009', 'geodetic', null, null, '2009:sun-5-15:triaxial', 'sun-5-15', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-16:2009:spherical', 'Spherical Metis 2009', 'geodetic', null, null, '2009:sun-5-16:spherical', 'sun-5-16', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-16:2009:triaxial', 'Ellipsoidal Metis 2009', 'geodetic', null, null, '2009:sun-5-16:triaxial', 'sun-5-16', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-99:2009:spherical', 'Spherical Saturn 2009', 'geodetic', null, null, '2009:sun-6-99:spherical', 'sun-6-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-99:2009:ellipsoidal', 'Ellipsoidal Saturn 2009', 'geodetic', null, null, '2009:sun-6-99:ellipsoidal', 'sun-6-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-1:2009:spherical', 'Spherical Mimas 2009', 'geodetic', null, null, '2009:sun-6-1:spherical', 'sun-6-1', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-1:2009:triaxial', 'Triaxial Mimas 2009', 'geodetic', null, null, '2009:sun-6-1:triaxial', 'sun-6-1', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-2:2009:spherical', 'Spherical Enceladus 2009', 'geodetic', null, null, '2009:sun-6-2:spherical', 'sun-6-2', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-2:2009:triaxial', 'Triaxial Enceladus 2009', 'geodetic', null, null, '2009:sun-6-2:triaxial', 'sun-6-2', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-3:2009:spherical', 'Spherical Tethys 2009', 'geodetic', null, null, '2009:sun-6-3:spherical', 'sun-6-3', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-3:2009:triaxial', 'Triaxial Tethys 2009', 'geodetic', null, null, '2009:sun-6-3:triaxial', 'sun-6-3', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-4:2009:spherical', 'Spherical Dione 2009', 'geodetic', null, null, '2009:sun-6-4:spherical', 'sun-6-4', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-4:2009:triaxial', 'Triaxial Dione 2009', 'geodetic', null, null, '2009:sun-6-4:triaxial', 'sun-6-4', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-5:2009:spherical', 'Spherical Rhea 2009', 'geodetic', null, null, '2009:sun-6-5:spherical', 'sun-6-5', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-5:2009:triaxial', 'Triaxial Rhea 2009', 'geodetic', null, null, '2009:sun-6-5:triaxial', 'sun-6-5', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-6:2009:spherical', 'Spherical Titan 2009', 'geodetic', null, null, '2009:sun-6-6:spherical', 'sun-6-6', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-6:2009:triaxial', 'Triaxial Titan 2009', 'geodetic', null, null, '2009:sun-6-6:triaxial', 'sun-6-6', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-7:2009:default', 'Shperical Hyperion 2009', 'geodetic', null, null, '2009:sun-6-7:default', 'sun-6-7', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-7:2009:triaxial', 'Triaxial Hyperion 2009', 'geodetic', null, null, '2009:sun-6-7:triaxial', 'sun-6-7', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-8:2009:spherical', 'Spherical Iapetus 2009', 'geodetic', null, null, '2009:sun-6-8:spherical', 'sun-6-8', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-8:2009:ellipsoidal', 'Ellipsoidal Iapetus 2009', 'geodetic', null, null, '2009:sun-6-8:ellipsoidal', 'sun-6-8', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-9:2009:spherical', 'Spherical Phoebe 2009', 'geodetic', null, null, '2009:sun-6-9:spherical', 'sun-6-9', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-9:2009:triaxial', 'Triaxial Phoebe 2009', 'geodetic', null, null, '2009:sun-6-9:triaxial', 'sun-6-9', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-10:2009:spherical', 'Spherical Janus 2009', 'geodetic', null, null, '2009:sun-6-10:spherical', 'sun-6-10', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-10:2009:triaxial', 'Triaxial Janus 2009', 'geodetic', null, null, '2009:sun-6-10:triaxial', 'sun-6-10', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-11:2009:spherical', 'Spherical Epimetheus 2009', 'geodetic', null, null, '2009:sun-6-11:spherical', 'sun-6-11', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-11:2009:triaxial', 'Triaxial Epimetheus 2009', 'geodetic', null, null, '2009:sun-6-11:triaxial', 'sun-6-11', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-12:2009:spherical', 'Spherical Helene 2009', 'geodetic', null, null, '2009:sun-6-12:spherical', 'sun-6-12', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-12:2009:triaxial', 'Triaxial Helene 2009', 'geodetic', null, null, '2009:sun-6-12:triaxial', 'sun-6-12', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-13:2009:spherical', 'Spherical Telesto 2009', 'geodetic', null, null, '2009:sun-6-13:spherical', 'sun-6-13', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-13:2009:triaxial', 'Triaxial Telesto 2009', 'geodetic', null, null, '2009:sun-6-13:triaxial', 'sun-6-13', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-14:2009:spherical', 'Spherical Calypso 2009', 'geodetic', null, null, '2009:sun-6-14:spherical', 'sun-6-14', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-14:2009:triaxial', 'Triaxial Calypso 2009', 'geodetic', null, null, '2009:sun-6-14:triaxial', 'sun-6-14', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-15:2009:spherical', 'Spherical Atlas 2009', 'geodetic', null, null, '2009:sun-6-15:spherical', 'sun-6-15', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-15:2009:triaxial', 'Triaxial Atlas 2009', 'geodetic', null, null, '2009:sun-6-15:triaxial', 'sun-6-15', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-16:2009:spherical', 'Spherical Prometheus 2009', 'geodetic', null, null, '2009:sun-6-16:spherical', 'sun-6-16', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-16:2009:triaxial', 'Triaxial Prometheus 2009', 'geodetic', null, null, '2009:sun-6-16:triaxial', 'sun-6-16', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-17:2009:spherical', 'Spherical Pandora 2009', 'geodetic', null, null, '2009:sun-6-17:spherical', 'sun-6-17', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-17:2009:triaxial', 'Triaxial Pandora 2009', 'geodetic', null, null, '2009:sun-6-17:triaxial', 'sun-6-17', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-18:2009:spherical', 'Spherical Pan 2009', 'geodetic', null, null, '2009:sun-6-18:spherical', 'sun-6-18', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-18:2009:triaxial', 'Triaxial Pan 2009', 'geodetic', null, null, '2009:sun-6-18:triaxial', 'sun-6-18', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-32:2009:default', 'Methone 2009', 'geodetic', null, null, '2009:sun-6-32:default', 'sun-6-32', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-33:2009:spherical', 'Spherical Pallene 2009', 'geodetic', null, null, '2009:sun-6-33:spherical', 'sun-6-33', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-33:2009:triaxial', 'Triaxial Pallene 2009', 'geodetic', null, null, '2009:sun-6-33:triaxial', 'sun-6-33', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-34:2009:spherical', 'Spherical Polydeuces 2009', 'geodetic', null, null, '2009:sun-6-34:spherical', 'sun-6-34', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-34:2009:triaxial', 'Triaxial Polydeuces 2009', 'geodetic', null, null, '2009:sun-6-34:triaxial', 'sun-6-34', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-35:2009:spherical', 'Spherical Daphnis 2009', 'geodetic', null, null, '2009:sun-6-35:spherical', 'sun-6-35', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-35:2009:triaxial', 'Triaxial Daphnis 2009', 'geodetic', null, null, '2009:sun-6-35:triaxial', 'sun-6-35', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-49:2009:default', 'Anthe 2009', 'geodetic', null, null, '2009:sun-6-49:default', 'sun-6-49', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-99:2009:spherical', 'Spherical Uranus 2009', 'geodetic', null, null, '2009:sun-7-99:spherical', 'sun-7-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-99:2009:ellipsoidal', 'Ellipsoidal Uranus 2009', 'geodetic', null, null, '2009:sun-7-99:ellipsoidal', 'sun-7-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-1:2009:spherical', 'Spherical Ariel 2009', 'geodetic', null, null, '2009:sun-7-1:spherical', 'sun-7-1', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-1:2009:triaxial', 'Triaxial Ariel 2009', 'geodetic', null, null, '2009:sun-7-1:triaxial', 'sun-7-1', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-2:2009:default', 'Umbriel 2009', 'geodetic', null, null, '2009:sun-7-2:default', 'sun-7-2', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-3:2009:default', 'Titania 2009', 'geodetic', null, null, '2009:sun-7-3:default', 'sun-7-3', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-4:2009:default', 'Oberon 2009', 'geodetic', null, null, '2009:sun-7-4:default', 'sun-7-4', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-5:2009:spherical', 'Spherical Miranda 2009', 'geodetic', null, null, '2009:sun-7-5:spherical', 'sun-7-5', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-5:2009:triaxial', 'Triaxial Miranda 2009', 'geodetic', null, null, '2009:sun-7-5:triaxial', 'sun-7-5', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-6:2009:default', 'Cordelia 2009', 'geodetic', null, null, '2009:sun-7-6:default', 'sun-7-6', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-7:2009:default', 'Ophelia 2009', 'geodetic', null, null, '2009:sun-7-7:default', 'sun-7-7', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-8:2009:default', 'Bianca 2009', 'geodetic', null, null, '2009:sun-7-8:default', 'sun-7-8', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-9:2009:default', 'Cressida 2009', 'geodetic', null, null, '2009:sun-7-9:default', 'sun-7-9', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-10:2009:default', 'Desdemona 2009', 'geodetic', null, null, '2009:sun-7-10:default', 'sun-7-10', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-11:2009:default', 'Juliet 2009', 'geodetic', null, null, '2009:sun-7-11:default', 'sun-7-11', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-12:2009:default', 'Portia 2009', 'geodetic', null, null, '2009:sun-7-12:default', 'sun-7-12', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-13:2009:default', 'Rosalind 2009', 'geodetic', null, null, '2009:sun-7-13:default', 'sun-7-13', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-14:2009:default', 'Belinda 2009', 'geodetic', null, null, '2009:sun-7-14:default', 'sun-7-14', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-15:2009:default', 'Puck 2009', 'geodetic', null, null, '2009:sun-7-15:default', 'sun-7-15', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-99:2009:spherical', 'Spherical Neptune 2009', 'geodetic', null, null, '2009:sun-8-99:spherical', 'sun-8-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-99:2009:ellipsoidal', 'Ellipsoidal Neptune 2009', 'geodetic', null, null, '2009:sun-8-99:ellipsoidal', 'sun-8-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-1:2009:default', 'Triton 2009', 'geodetic', null, null, '2009:sun-8-1:default', 'sun-8-1', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-2:2009:default', 'Nereid 2009', 'geodetic', null, null, '2009:sun-8-2:default', 'sun-8-2', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-3:2009:default', 'Naiad 2009', 'geodetic', null, null, '2009:sun-8-3:default', 'sun-8-3', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-4:2009:default', 'Thalassa 2009', 'geodetic', null, null, '2009:sun-8-4:default', 'sun-8-4', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-5:2009:default', 'Despina 2009', 'geodetic', null, null, '2009:sun-8-5:default', 'sun-8-5', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-6:2009:default', 'Galatea 2009', 'geodetic', null, null, '2009:sun-8-6:default', 'sun-8-6', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-7:2009:spherical', 'Spherical Larissa 2009', 'geodetic', null, null, '2009:sun-8-7:spherical', 'sun-8-7', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-7:2009:ellipsoidal', 'Ellipsoidal Larissa 2009', 'geodetic', null, null, '2009:sun-8-7:ellipsoidal', 'sun-8-7', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-8:2009:spherical', 'Spherical Proteus 2009', 'geodetic', null, null, '2009:sun-8-8:spherical', 'sun-8-8', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-8:2009:triaxial', 'Triaxial Proteus 2009', 'geodetic', null, null, '2009:sun-8-8:triaxial', 'sun-8-8', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-9-99:2009:default', 'Pluto 2009', 'geodetic', null, null, '2009:sun-9-99:default', 'sun-9-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-9-1:2009:default', 'Charon 2009', 'geodetic', null, null, '2009:sun-9-1:default', 'sun-9-1', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('1000005:2009:default', 'Effective Borrelly 2009', 'geodetic', null, null, '2009:1000005:default', '1000005', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('1000005:2009:measured', 'Measured Borrelly 2009', 'geodetic', null, null, '2009:1000005:measured', '1000005', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('1000036:2009:triaxial', 'Triaxial Halley 2009', 'geodetic', null, null, '2009:1000036:triaxial', '1000036', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('1000093:2009:spherical', 'Spherical Tempel 1 2009', 'geodetic', null, null, '2009:1000093:spherical', '1000093', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('1000093:2009:default', 'Biaxial Tempel 1 2009', 'geodetic', null, null, '2009:1000093:default', '1000093', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('1000107:2009:spherical', 'Spherical Wild 2 2009', 'geodetic', null, null, '2009:1000107:spherical', '1000107', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('1000107:2009:triaxial', 'Triaxial Wild 2 2009', 'geodetic', null, null, '2009:1000107:triaxial', '1000107', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('9511010:2009:spherical', 'Spherical Gaspra 2009', 'geodetic', null, null, '2009:9511010:spherical', '9511010', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('9511010:2009:triaxial', 'Triaxial Gaspra 2009', 'geodetic', null, null, '2009:9511010:triaxial', '9511010', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('2431010:2009:spherical', 'Spherical Ida 2009', 'geodetic', null, null, '2009:2431010:spherical', '2431010', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('2431010:2009:triaxial', 'Triaxial Ida 2009', 'geodetic', null, null, '2009:2431010:triaxial', '2431010', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('2000001:2009:spherical', 'Spherical Ceres 2009', 'geodetic', null, null, '2009:2000001:spherical', '2000001', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('2000001:2009:ellipsoidal', 'Ellipsoidal Ceres 2009', 'geodetic', null, null, '2009:2000001:ellipsoidal', '2000001', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('2000004:2009:default', 'Vesta 2009', 'geodetic', null, null, '2009:2000004:default', '2000004', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('2000021:2009:spherical', 'Spherical Lutetia 2009', 'geodetic', null, null, '2009:2000021:spherical', '2000021', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('2000021:2009:triaxial', 'Triaxial Lutetia 2009', 'geodetic', null, null, '2009:2000021:triaxial', '2000021', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('2000216:2009:default', 'Kleopatra 2009', 'geodetic', null, null, '2009:2000216:default', '2000216', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('2000433:2009:spherical', 'Spherical Eros 2009', 'geodetic', null, null, '2009:2000433:spherical', '2000433', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('2000433:2009:triaxial', 'Triaxial Eros 2009', 'geodetic', null, null, '2009:2000433:triaxial', '2000433', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('2000511:2009:spherical', 'Spherical Davida 2009', 'geodetic', null, null, '2009:2000511:spherical', '2000511', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('2000511:2009:triaxial', 'Triaxial Davida 2009', 'geodetic', null, null, '2009:2000511:triaxial', '2000511', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('2000253:2009:spherical', 'Spherical Mathilde 2009', 'geodetic', null, null, '2009:2000253:spherical', '2000253', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('2000253:2009:triaxial', 'Triaxial Mathilde 2009', 'geodetic', null, null, '2009:2000253:triaxial', '2000253', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('2002867:2009:spherical', 'Spherical Steins 2009', 'geodetic', null, null, '2009:2002867:spherical', '2002867', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('2002867:2009:triaxial', 'Triaxial Steins 2009', 'geodetic', null, null, '2009:2002867:triaxial', '2002867', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('2004179:2009:default', 'Toutatis 2009', 'geodetic', null, null, '2009:2004179:default', '2004179', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);
insert into ssbd_datum values ('2025143:2009:default', 'Itokawa 2009', 'geodetic', null, null, '2009:2025143:default', '2025143', null, null, 'Planetology.', null, 'set information source', 'IAU', '2009-01-01', '2020:1', 0);






insert into ssbd_datum values ('0:2015:default', 'Sun 2015', 'geodetic', null, null, '2015:0:default', '0', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-1-99:2015:spherical', 'Spherical Mercury 2015', 'geodetic', null, null, '2015:sun-1-99:spherical', 'sun-1-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-1-99:2015:ellipsoidal', 'Ellipsoidal Mercury 2015', 'geodetic', null, null, '2015:sun-1-99:ellipsoidal', 'sun-1-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-1-99:2015:triaxial', 'Triaxial Mercury 2015', 'geodetic', null, null, '2015:sun-1-99:triaxial', 'sun-1-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-2-99:2015:default', 'Venus 2015', 'geodetic', null, null, '2015:sun-2-99:default', 'sun-2-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-3-99:2015:spherical', 'Spherical Earth 2015', 'geodetic', null, null, '2015:sun-3-99:spherical', 'sun-3-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-3-99:2015:ellipsoidal', 'Ellipsoidal Earth 2015', 'geodetic', null, null, '2015:sun-3-99:ellipsoidal', 'sun-3-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-3-99:2015:ellipsoidal-iau', 'Ellipsoidal Earth 2015', 'geodetic', null, null, '2015:sun-3-99:ellipsoidal-iau', 'sun-3-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-3-1:2015:default', 'Moon 2015', 'geodetic', null, null, '2015:sun-3-1:default', 'sun-3-1', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);

insert into ssbd_datum values ('sun-4-99:2015:spherical', 'Spherical Mars 2015', 'geodetic', null, null, '2015:sun-4-99:spherical', 'sun-4-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-4-99:2015:ellipsoidal', 'Ellipsoidal Mars 2015', 'geodetic', null, null, '2015:sun-4-99:ellipsoidal', 'sun-4-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-4-99:2015:default', 'Quadriaxial Mars 2015', 'geodetic', null, null, '2015:sun-4-99:default', 'sun-4-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-4-1:2015:spherical', 'Spherical Phobos 2015', 'geodetic', null, null, '2015:sun-4-1:spherical', 'sun-4-1', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-4-1:2015:triaxial', 'Triaxial Phobos 2015', 'geodetic', null, null, '2015:sun-4-1:triaxial', 'sun-4-1', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-4-2:2015:spherical', 'Spherical Deimos 2015', 'geodetic', null, null, '2015:sun-4-2:spherical', 'sun-4-2', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-4-2:2015:triaxial', 'Triaxial Deimos 2015', 'geodetic', null, null, '2015:sun-4-2:triaxial', 'sun-4-2', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);

insert into ssbd_datum values ('sun-5-99:2015:spherical', 'Spherical Jupiter 2015', 'geodetic', null, null, '2015:sun-5-99:spherical', 'sun-5-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-99:2015:ellipsoidal', 'Ellipsoidal Jupiter 2015', 'geodetic', null, null, '2015:sun-5-99:ellipsoidal', 'sun-5-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-1:2015:spherical', 'Spherical Io 2015', 'geodetic', null, null, '2015:sun-5-1:spherical', 'sun-5-1', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-1:2015:triaxial', 'Triaxial Io 2015', 'geodetic', null, null, '2015:sun-5-1:triaxial', 'sun-5-1', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-2:2015:spherical', 'Spherical Europa 2015', 'geodetic', null, null, '2015:sun-5-2:spherical', 'sun-5-2', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-2:2015:triaxial', 'Triaxial Europa 2015', 'geodetic', null, null, '2015:sun-5-2:triaxial', 'sun-5-2', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-3:2015:default', 'Ganymede 2015', 'geodetic', null, null, '2015:sun-5-3:default', 'sun-5-3', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-4:2015:default', 'Callisto 2015', 'geodetic', null, null, '2015:sun-5-4:default', 'sun-5-4', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-5:2015:spherical', 'Spherical Amalthea 2015', 'geodetic', null, null, '2015:sun-5-5:spherical', 'sun-5-5', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-5:2015:triaxial', 'Triaxial Amalthea 2015', 'geodetic', null, null, '2015:sun-5-5:triaxial', 'sun-5-5', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-6:2015:default', 'Himalia 2015', 'geodetic', null, null, '2015:sun-5-6:default', 'sun-5-6', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-7:2015:default', 'Elara 2015', 'geodetic', null, null, '2015:sun-5-7:default', 'sun-5-7', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-8:2015:default', 'Pasiphae 2015', 'geodetic', null, null, '2015:sun-5-8:default', 'sun-5-8', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-9:2015:default', 'Sinope 2015', 'geodetic', null, null, '2015:sun-5-9:default', 'sun-5-9', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-10:2015:default', 'Lysithea 2015', 'geodetic', null, null, '2015:sun-5-10:default', 'sun-5-10', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-11:2015:default', 'Carme 2015', 'geodetic', null, null, '2015:sun-5-11:default', 'sun-5-11', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-12:2015:default', 'Ananke 2015', 'geodetic', null, null, '2015:sun-5-12:default', 'sun-5-12', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-13:2015:default', 'Leda 2015', 'geodetic', null, null, '2015:sun-5-13:default', 'sun-5-13', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-14:2015:spherical', 'Spherical Thebe 2015', 'geodetic', null, null, '2015:sun-5-14:spherical', 'sun-5-14', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-14:2015:triaxial', 'Triaxial Thebe 2015', 'geodetic', null, null, '2015:sun-5-14:triaxial', 'sun-5-14', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-15:2015:spherical', 'Spherical Adrastea 2015', 'geodetic', null, null, '2015:sun-5-15:spherical', 'sun-5-15', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-15:2015:triaxial', 'Triaxial Adrastea 2015', 'geodetic', null, null, '2015:sun-5-15:triaxial', 'sun-5-15', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-16:2015:spherical', 'Spherical Metis 2015', 'geodetic', null, null, '2015:sun-5-16:spherical', 'sun-5-16', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-5-16:2015:triaxial', 'Triaxial Metis 2015', 'geodetic', null, null, '2015:sun-5-16:triaxial', 'sun-5-16', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);

insert into ssbd_datum values ('sun-6-99:2015:spherical', 'Spherical Saturn 2015', 'geodetic', null, null, '2015:sun-6-99:spherical', 'sun-6-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-99:2015:ellipsoidal', 'Ellipsoidal Saturn 2015', 'geodetic', null, null, '2015:sun-6-99:ellipsoidal', 'sun-6-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-1:2015:spherical', 'Spherical Mimas 2015', 'geodetic', null, null, '2015:sun-6-1:spherical', 'sun-6-1', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-1:2015:triaxial', 'Triaxial Mimas 2015', 'geodetic', null, null, '2015:sun-6-1:triaxial', 'sun-6-1', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-2:2015:spherical', 'Spherical Enceladus 2015', 'geodetic', null, null, '2015:sun-6-2:spherical', 'sun-6-2', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-2:2015:triaxial', 'Triaxial Enceladus 2015', 'geodetic', null, null, '2015:sun-6-2:triaxial', 'sun-6-2', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-3:2015:spherical', 'Spherical Tethys 2015', 'geodetic', null, null, '2015:sun-6-3:spherical', 'sun-6-3', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-3:2015:triaxial', 'Triaxial Tethys 2015', 'geodetic', null, null, '2015:sun-6-3:triaxial', 'sun-6-3', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-4:2015:spherical', 'Spherical Dione 2015', 'geodetic', null, null, '2015:sun-6-4:spherical', 'sun-6-4', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-4:2015:triaxial', 'Triaxial Dione 2015', 'geodetic', null, null, '2015:sun-6-4:triaxial', 'sun-6-4', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-5:2015:spherical', 'Spherical Rhea 2015', 'geodetic', null, null, '2015:sun-6-5:spherical', 'sun-6-5', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-5:2015:triaxial', 'Triaxial Rhea 2015', 'geodetic', null, null, '2015:sun-6-5:triaxial', 'sun-6-5', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-6:2015:spherical', 'Spherical Titan 2015', 'geodetic', null, null, '2015:sun-6-6:spherical', 'sun-6-6', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-6:2015:bestfit', 'Best-fit Spherical Titan 2015', 'geodetic', null, null, '2015:sun-6-6:bestfit', 'sun-6-6', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-6:2015:triaxial', 'Triaxial Titan 2015', 'geodetic', null, null, '2015:sun-6-6:triaxial', 'sun-6-6', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-7:2015:spherical', 'Spherical Hyperion 2015', 'geodetic', null, null, '2015:sun-6-7:spherical', 'sun-6-7', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-7:2015:triaxial', 'Triaxial Hyperion 2015', 'geodetic', null, null, '2015:sun-6-7:triaxial', 'sun-6-7', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-8:2015:spherical', 'Spherical Iapetus 2015', 'geodetic', null, null, '2015:sun-6-8:spherical', 'sun-6-8', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-8:2015:triaxial', 'Triaxial Iapetus 2015', 'geodetic', null, null, '2015:sun-6-8:triaxial', 'sun-6-8', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-9:2015:spherical', 'Spherical Phoebe 2015', 'geodetic', null, null, '2015:sun-6-9:spherical', 'sun-6-9', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-9:2015:triaxial', 'Triaxial Phoebe 2015', 'geodetic', null, null, '2015:sun-6-9:triaxial', 'sun-6-9', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-10:2015:spherical', 'Spherical Janus 2015', 'geodetic', null, null, '2015:sun-6-10:spherical', 'sun-6-10', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-10:2015:triaxial', 'Triaxial Janus 2015', 'geodetic', null, null, '2015:sun-6-10:triaxial', 'sun-6-10', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-11:2015:spherical', 'Spherical Epimetheus 2015', 'geodetic', null, null, '2015:sun-6-11:spherical', 'sun-6-11', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-11:2015:triaxial', 'Triaxial Epimetheus 2015', 'geodetic', null, null, '2015:sun-6-11:triaxial', 'sun-6-11', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-12:2015:spherical', 'Spherical Helene 2015', 'geodetic', null, null, '2015:sun-6-12:spherical', 'sun-6-12', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-12:2015:triaxial', 'Triaxial Helene 2015', 'geodetic', null, null, '2015:sun-6-12:triaxial', 'sun-6-12', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-13:2015:spherical', 'Spherical Telesto 2015', 'geodetic', null, null, '2015:sun-6-13:spherical', 'sun-6-13', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-13:2015:triaxial', 'Triaxial Telesto 2015', 'geodetic', null, null, '2015:sun-6-13:triaxial', 'sun-6-13', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-14:2015:spherical', 'Spherical Calypso 2015', 'geodetic', null, null, '2015:sun-6-14:spherical', 'sun-6-14', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-14:2015:triaxial', 'Triaxial Calypso 2015', 'geodetic', null, null, '2015:sun-6-14:triaxial', 'sun-6-14', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-15:2015:spherical', 'Spherical Atlas 2015', 'geodetic', null, null, '2015:sun-6-15:spherical', 'sun-6-15', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-15:2015:triaxial', 'Triaxial Atlas 2015', 'geodetic', null, null, '2015:sun-6-15:triaxial', 'sun-6-15', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-16:2015:spherical', 'Spherical Prometheus 2015', 'geodetic', null, null, '2015:sun-6-16:spherical', 'sun-6-16', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-16:2015:triaxial', 'Triaxial Prometheus 2015', 'geodetic', null, null, '2015:sun-6-16:triaxial', 'sun-6-16', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-17:2015:spherical', 'Spherical Pandora 2015', 'geodetic', null, null, '2015:sun-6-17:spherical', 'sun-6-17', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-17:2015:triaxial', 'Triaxial Pandora 2015', 'geodetic', null, null, '2015:sun-6-17:triaxial', 'sun-6-17', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-18:2015:spherical', 'Spherical Pan 2015', 'geodetic', null, null, '2015:sun-6-18:spherical', 'sun-6-18', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-18:2015:triaxial', 'Triaxial Pan 2015', 'geodetic', null, null, '2015:sun-6-18:triaxial', 'sun-6-18', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-32:2015:spherical', 'Spherical Methone 2015', 'geodetic', null, null, '2015:sun-6-32:spherical', 'sun-6-32', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-32:2015:triaxial', 'Triaxial Methone 2015', 'geodetic', null, null, '2015:sun-6-32:triaxial', 'sun-6-32', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-33:2015:spherical', 'Spherical Pallene 2015', 'geodetic', null, null, '2015:sun-6-33:spherical', 'sun-6-33', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-33:2015:triaxial', 'Triaxial Pallene 2015', 'geodetic', null, null, '2015:sun-6-33:triaxial', 'sun-6-33', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-34:2015:spherical', 'Spherical Polydeuces 2015', 'geodetic', null, null, '2015:sun-6-34:spherical', 'sun-6-34', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-34:2015:triaxial', 'Triaxial Polydeuces 2015', 'geodetic', null, null, '2015:sun-6-34:triaxial', 'sun-6-34', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-35:2015:spherical', 'Spherical Daphnis 2015', 'geodetic', null, null, '2015:sun-6-35:spherical', 'sun-6-35', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-35:2015:triaxial', 'Triaxial Daphnis 2015', 'geodetic', null, null, '2015:sun-6-35:triaxial', 'sun-6-35', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-49:2015:default', 'Anthe 2015', 'geodetic', null, null, '2015:sun-6-49:default', 'sun-6-49', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-53:2015:spherical', 'Spherical Aegaeon 2015', 'geodetic', null, null, '2015:sun-6-53:spherical', 'sun-6-53', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-6-53:2015:triaxial', 'Triaxial Aegaeon 2015', 'geodetic', null, null, '2015:sun-6-53:triaxial', 'sun-6-53', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);

insert into ssbd_datum values ('sun-7-99:2015:spherical', 'Spherical Uranus 2015', 'geodetic', null, null, '2015:sun-7-99:spherical', 'sun-7-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-99:2015:ellipsoidal', 'Ellipsoidal Uranus 2015', 'geodetic', null, null, '2015:sun-7-99:ellipsoidal', 'sun-7-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-1:2015:spherical', 'Spherical Ariel 2015', 'geodetic', null, null, '2015:sun-7-1:spherical', 'sun-7-1', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-1:2015:triaxial', 'Triaxial Ariel 2015', 'geodetic', null, null, '2015:sun-7-1:triaxial', 'sun-7-1', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-2:2015:default', 'Umbriel 2015', 'geodetic', null, null, '2015:sun-7-2:default', 'sun-7-2', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-3:2015:default', 'Titania 2015', 'geodetic', null, null, '2015:sun-7-3:default', 'sun-7-3', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-4:2015:default', 'Oberon 2015', 'geodetic', null, null, '2015:sun-7-4:default', 'sun-7-4', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-5:2015:spherical', 'Spherical Miranda 2015', 'geodetic', null, null, '2015:sun-7-5:spherical', 'sun-7-5', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-5:2015:triaxial', 'Triaxial Miranda 2015', 'geodetic', null, null, '2015:sun-7-5:triaxial', 'sun-7-5', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-6:2015:default', 'Cordelia 2015', 'geodetic', null, null, '2015:sun-7-6:default', 'sun-7-6', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-7:2015:default', 'Ophelia 2015', 'geodetic', null, null, '2015:sun-7-7:default', 'sun-7-7', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-8:2015:default', 'Bianca 2015', 'geodetic', null, null, '2015:sun-7-8:default', 'sun-7-8', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-9:2015:default', 'Cressida 2015', 'geodetic', null, null, '2015:sun-7-9:default', 'sun-7-9', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-10:2015:default', 'Desdemona 2015', 'geodetic', null, null, '2015:sun-7-10:default', 'sun-7-10', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-11:2015:default', 'Juliet 2015', 'geodetic', null, null, '2015:sun-7-11:default', 'sun-7-11', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-12:2015:default', 'Portia 2015', 'geodetic', null, null, '2015:sun-7-12:default', 'sun-7-12', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-13:2015:default', 'Rosalind 2015', 'geodetic', null, null, '2015:sun-7-13:default', 'sun-7-13', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-14:2015:default', 'Belinda 2015', 'geodetic', null, null, '2015:sun-7-14:default', 'sun-7-14', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-7-15:2015:default', 'Puck 2015', 'geodetic', null, null, '2015:sun-7-15:default', 'sun-7-15', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);

insert into ssbd_datum values ('sun-8-99:2015:spherical', 'Spherical Neptune 2015', 'geodetic', null, null, '2015:sun-8-99:spherical', 'sun-8-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-99:2015:ellipsoidal', 'Ellipsoidal Neptune 2015', 'geodetic', null, null, '2015:sun-8-99:ellipsoidal', 'sun-8-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-1:2015:default', 'Triton 2015', 'geodetic', null, null, '2015:sun-8-1:default', 'sun-8-1', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-2:2015:default', 'Nereid 2015', 'geodetic', null, null, '2015:sun-8-2:default', 'sun-8-2', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-3:2015:default', 'Naiad 2015', 'geodetic', null, null, '2015:sun-8-3:default', 'sun-8-3', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-4:2015:default', 'Thalassa 2015', 'geodetic', null, null, '2015:sun-8-4:default', 'sun-8-4', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-5:2015:default', 'Despina 2015', 'geodetic', null, null, '2015:sun-8-5:default', 'sun-8-5', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-6:2015:default', 'Galatea 2015', 'geodetic', null, null, '2015:sun-8-6:default', 'sun-8-6', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-7:2015:spherical', 'Spherical Larissa 2015', 'geodetic', null, null, '2015:sun-8-7:spherical', 'sun-8-7', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-7:2015:ellipsoidal', 'Ellipsoidal Larissa 2015', 'geodetic', null, null, '2015:sun-8-7:ellipsoidal', 'sun-8-7', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-8:2015:spherical', 'Spherical Proteus 2015', 'geodetic', null, null, '2015:sun-8-8:spherical', 'sun-8-8', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-8-8:2015:triaxial', 'Triaxial Proteus 2015', 'geodetic', null, null, '2015:sun-8-8:triaxial', 'sun-8-8', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);

insert into ssbd_datum values ('sun-9-99:2015:default', 'Pluto 2015', 'geodetic', null, null, '2015:sun-9-99:default', 'sun-9-99', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('sun-9-1:2015:default', 'Charon 2015', 'geodetic', null, null, '2015:sun-9-1:default', 'sun-9-1', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('1000005:2015:spherical', 'Spherical Borrelly 2015', 'geodetic', null, null, '2015:1000005:spherical', '1000005', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('1000005:2015:measured', 'Measured Borrelly 2015', 'geodetic', null, null, '2015:1000005:measured', '1000005', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('1000012:2015:spherical', 'Spherical Churyumov-Gerasimenko 2015', 'geodetic', null, null, '2015:1000012:spherical', '1000012', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('1000012:2015:triaxial', 'Triaxial Churyumov-Gerasimenko 2015', 'geodetic', null, null, '2015:1000012:triaxial', '1000012', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('1000036:2015:default', 'Halley 2015', 'geodetic', null, null, '2015:1000036:default', '1000036', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('1000041:2015:spherical', 'Spherical Hartley 2 2015', 'geodetic', null, null, '2015:1000041:spherical', '1000041', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('1000041:2015:triaxial', 'Triaxial Hartley 2 2015', 'geodetic', null, null, '2015:1000041:triaxial', '1000041', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('1000093:2015:spherical', 'Spherical Tempel 1 2015', 'geodetic', null, null, '2015:1000093:spherical', '1000093', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('1000093:2015:default', 'Biaxial Tempel 1 2015', 'geodetic', null, null, '2015:1000093:default', '1000093', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('1000107:2015:spherical', 'Spherical Wild 2 2015', 'geodetic', null, null, '2015:1000107:spherical', '1000107', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('1000107:2015:triaxial', 'Triaxial Wild 2 2015', 'geodetic', null, null, '2015:1000107:triaxial', '1000107', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('9511010:2015:spherical', 'Spherical Gaspra 2015', 'geodetic', null, null, '2015:9511010:spherical', '9511010', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('9511010:2015:triaxial', 'Triaxial Gaspra 2015', 'geodetic', null, null, '2015:9511010:triaxial', '9511010', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('2431010:2015:spherical', 'Spherical Ida 2015', 'geodetic', null, null, '2015:2431010:spherical', '2431010', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('2431010:2015:triaxial', 'Triaxial Ida 2015', 'geodetic', null, null, '2015:2431010:triaxial', '2431010', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('2000001:2015:spherical', 'Spherical Ceres 2015', 'geodetic', null, null, '2015:2000001:spherical', '2000001', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('2000001:2015:ellipsoidal', 'Ellipsoidal Ceres 2015', 'geodetic', null, null, '2015:2000001:ellipsoidal', '2000001', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('2000004:2015:default', 'Vesta 2015', 'geodetic', null, null, '2015:2000004:default', '2000004', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('2000016:2015:spherical', 'Spherical Psyche 2015', 'geodetic', null, null, '2015:2000016:spherical', '2000016', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('2000016:2015:triaxial', 'Triaxial Psyche 2015', 'geodetic', null, null, '2015:2000016:triaxial', '2000016', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('2000021:2015:spherical', 'Spherical Lutetia 2015', 'geodetic', null, null, '2015:2000021:spherical', '2000021', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('2000021:2015:triaxial', 'Triaxial Lutetia 2015', 'geodetic', null, null, '2015:2000021:triaxial', '2000021', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('?2000052:2015:spherical', 'Spherical 52 Europa 2015', 'geodetic', null, null, '2015:?2000052:spherical', '?2000052', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('?2000052:2015:triaxial', 'Triaxial 52 Europa 2015', 'geodetic', null, null, '2015:?2000052:triaxial', '?2000052', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('2000216:2015:default', 'Kleopatra 2015', 'geodetic', null, null, '2015:2000216:default', '2000216', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('2000433:2015:spherical', 'Spherical Eros 2015', 'geodetic', null, null, '2015:2000433:spherical', '2000433', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('2000433:2015:triaxial', 'Triaxial Eros 2015', 'geodetic', null, null, '2015:2000433:triaxial', '2000433', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('2000511:2015:spherical', 'Spherical Davida 2015', 'geodetic', null, null, '2015:2000511:spherical', '2000511', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('2000511:2015:triaxial', 'Triaxial Davida 2015', 'geodetic', null, null, '2015:2000511:triaxial', '2000511', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('2000253:2015:spherical', 'Spherical Mathilde 2015', 'geodetic', null, null, '2015:2000253:spherical', '2000253', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('2000253:2015:triaxial', 'Triaxial Mathilde 2015', 'geodetic', null, null, '2015:2000253:triaxial', '2000253', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('2002867:2015:spherical', 'Spherical Steins 2015', 'geodetic', null, null, '2015:2002867:spherical', '2002867', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('2002867:2015:triaxial', 'Triaxial Steins 2015', 'geodetic', null, null, '2015:2002867:triaxial', '2002867', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('2004179:2015:default', 'Toutatis 2015', 'geodetic', null, null, '2015:2004179:default', '2004179', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);
insert into ssbd_datum values ('2025143:2015:default', 'Itokawa 2015', 'geodetic', null, null, '2015:2025143:default', '2025143', null, null, 'Planetology.', null, 'set information source', 'IAU', '2015-01-01', '2020:1', 0);


insert into ssbd_coordinatesystem values ('spherical:3d:direct',
 'Spherical 3D CS. Axes: latitude, longitude, radius. Orientations: north, west, up. UoM: degrees, degrees, metres.',
 'spherical', 3, null, null,'IAU','2000-01-01','2020:1',0);
insert into ssbd_coordinatesystem values ('ellipsoidal:3d:direct',
 'Ellipsoidal 3D CS. Axes: latitude, longitude, ellipsoidal height. Orientations: north, west, up. UoM: degree, degree, metre.',
 'ellipsoidal', 3, null, null,'IAU','2000-01-01','2020:1',0);


-- définitions des directions
-- north : nord UAI par référence au nord terrestre
-- south : côté opposé à north
-- east : côté où le soleil se lève
-- west : côté opposé à east
-- rotational north : pôle tournant dans le sens direct
-- rotational south : côté opposé à rotational north
-- rotational east : côté où le ciel se lève
-- rotational west : côté opposé à rotational east
insert into ssbd_coordinateaxis values ('spherical:3d:direct', 1, 'EPSG::9926', 'north', 'Lat', 'EPSG::9122');
insert into ssbd_coordinateaxis values ('spherical:3d:direct', 2, 'EPSG::9927', 'west', 'Long', 'EPSG::9122');
insert into ssbd_coordinateaxis values ('spherical:3d:direct', 3, 'EPSG::9928', 'up', 'R', 'EPSG::9001');
insert into ssbd_coordinateaxis values ('ellipsoidal:3d:direct', 1, 'EPSG::9901', 'north', 'Lat', 'EPSG::9122');
insert into ssbd_coordinateaxis values ('ellipsoidal:3d:direct', 2, 'EPSG::9902', 'west', 'Lon', 'EPSG::9122');
insert into ssbd_coordinateaxis values ('ellipsoidal:3d:direct', 3, 'EPSG::9903', 'up', 'h', 'EPSG::9001');


-- CRSs planétocentriques

insert into ssbd_coordinatereferencesystem values ('sun-1-99:2000:default:planetocentric', 'Mercury 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-1-99:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-2-99:2000:default:planetocentric', 'Venus 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-2-99:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-3-99:2000:spherical:planetocentric', 'Spherical Earth 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-3-99:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-3-99:2000:ellipsoidal:planetocentric', 'Ellipsoidal Earth 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-3-99:2000:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-99:2000:spherical:planetocentric', 'Spherical Mars 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-4-99:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-99:2000:ellipsoidal:planetocentric', 'Ellipsoidal Mars 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-4-99:2000:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-99:2000:default:planetocentric', 'Quadriaxial Mars 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-4-99:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-99:2000:spherical:planetocentric', 'Spherical Jupiter 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-99:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-99:2000:ellipsoidal:planetocentric', 'Ellipsoidal Jupiter 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-99:2000:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-99:2000:spherical:planetocentric', 'Spherical Saturn 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-99:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-99:2000:ellipsoidal:planetocentric', 'Ellipsoidal Saturn 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-99:2000:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-99:2000:spherical:planetocentric', 'Spherical Uranus 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-99:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-99:2000:ellipsoidal:planetocentric', 'Ellipsoidal Uranus 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-99:2000:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-99:2000:spherical:planetocentric', 'Spherical Neptune 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-99:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-99:2000:ellipsoidal:planetocentric', 'Ellipsoidal Neptune 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-99:2000:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-9-99:2000:spherical:planetocentric', 'Spherical Pluto 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-9-99:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);

insert into ssbd_coordinatereferencesystem values ('sun-3-1:2000:spherical:planetocentric', 'Spherical Moon 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-3-1:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-1:2000:spherical:planetocentric', 'Spherical Phobos 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-4-1:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-1:2000:triaxial:planetocentric', 'Triaxial Phobos 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-4-1:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-2:2000:spherical:planetocentric', 'Spherical Deimos 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-4-2:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-2:2000:triaxial:planetocentric', 'Triaxial Deimos 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-4-2:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-16:2000:spherical:planetocentric', 'Spherical Metis 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-16:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-16:2000:ellipsoidal:planetocentric', 'Ellipsoidal Metis 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-16:2000:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-15:2000:spherical:planetocentric', 'Spherical Adrastea 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-15:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-15:2000:triaxial:planetocentric', 'Triaxial Adrastea 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-15:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-5:2000:spherical:planetocentric', 'Spherical Amalthea 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-5:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-5:2000:triaxial:planetocentric', 'Triaxial Amalthea 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-5:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-14:2000:spherical:planetocentric', 'Spherical Thebe 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-14:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-14:2000:triaxial:planetocentric', 'Triaxial Thebe 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-14:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-1:2000:spherical:planetocentric', 'Spherical Io 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-1:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-1:2000:triaxial:planetocentric', 'Triaxial Io 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-1:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-2:2000:spherical:planetocentric', 'Spherical Europa 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-2:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-2:2000:triaxial:planetocentric', 'Triaxial Europa 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-2:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-3:2000:spherical:planetocentric', 'Spherical Ganymede 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-3:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-3:2000:triaxial:planetocentric', 'Triaxial Ganymede 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-3:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-4:2000:spherical:planetocentric', 'Spherical Callisto 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-4:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-4:2000:triaxial:planetocentric', 'Triaxial Callisto 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-4:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-13:2000:default:planetocentric', 'Leda 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-13:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-6:2000:default:planetocentric', 'Himalia 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-6:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-10:2000:default:planetocentric', 'Lysithea 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-10:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-7:2000:default:planetocentric', 'Elara 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-7:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-12:2000:default:planetocentric', 'Ananke 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-12:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-11:2000:default:planetocentric', 'Carme 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-11:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-8:2000:default:planetocentric', 'Pasiphae 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-8:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-9:2000:default:planetocentric', 'Sinope 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-9:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);

insert into ssbd_coordinatereferencesystem values ('sun-6-1:2000:spherical:planetocentric', 'Spherical Mimas 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-1:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-1:2000:triaxial:planetocentric', 'Triaxial Mimas 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-1:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-2:2000:spherical:planetocentric', 'Spherical Enceladus 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-2:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-2:2000:triaxial:planetocentric', 'Triaxial Enceladus 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-2:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-3:2000:spherical:planetocentric', 'Spherical Tethys 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-3:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-3:2000:triaxial:planetocentric', 'Triaxial Tethys 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-3:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-4:2000:default:planetocentric', 'Dione 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-4:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-5:2000:default:planetocentric', 'Rhea 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-5:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-6:2000:default:planetocentric', 'Titan 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-6:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-7:2000:spherical:planetocentric', 'Spherical Hyperion 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-7:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-7:2000:triaxial:planetocentric', 'Triaxial Hyperion 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-7:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-8:2000:default:planetocentric', 'Iapetus 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-8:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-9:2000:spherical:planetocentric', 'Spherical Phoebe 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-9:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-9:2000:triaxial:planetocentric', 'Triaxial Phoebe 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-9:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-10:2000:spherical:planetocentric', 'Spherical Janus 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-10:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-10:2000:triaxial:planetocentric', 'Triaxial Janus 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-10:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-11:2000:spherical:planetocentric', 'Spherical Epimetheus 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-11:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-11:2000:triaxial:planetocentric', 'Triaxial Epimetheus 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-11:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-12:2000:spherical:planetocentric', 'Spherical Helene 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-12:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
-- TODO : rayon polaire d'Helene suspect, de même que l'axis_b
insert into ssbd_coordinatereferencesystem values ('sun-6-12:2000:ellipsoidal:planetocentric', 'Ellipsoidal Helene 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-12:2000:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-13:2000:spherical:planetocentric', 'Spherical Telesto 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-13:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-13:2000:triaxial:planetocentric', 'Triaxial Telesto 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-13:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-14:2000:spherical:planetocentric', 'Spherical Calypso 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-14:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-14:2000:triaxial:planetocentric', 'Triaxial Calypso 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-14:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-15:2000:spherical:planetocentric', 'Spherical Atlas 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-15:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-15:2000:triaxial:planetocentric', 'Triaxial Atlas 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-15:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-16:2000:spherical:planetocentric', 'Spherical Prometheus 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-16:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-16:2000:triaxial:planetocentric', 'Triaxial Prometheus 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-16:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-17:2000:spherical:planetocentric', 'Spherical Pandora 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-17:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-17:2000:triaxial:planetocentric', 'Triaxial Pandora 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-17:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-18:2000:default:planetocentric', 'Pan 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-18:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);

insert into ssbd_coordinatereferencesystem values ('sun-6-32:2000:default:planetocentric', 'Methone 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-32:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-33:2000:default:planetocentric', 'Pallene 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-33:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-34:2000:default:planetocentric', 'Polydeuces 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-34:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);

insert into ssbd_coordinatereferencesystem values ('sun-7-1:2000:spherical:planetocentric', 'Spherical Ariel 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-1:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-1:2000:triaxial:planetocentric', 'Triaxial Ariel 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-1:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-2:2000:default:planetocentric', 'Umbriel 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-2:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-3:2000:default:planetocentric', 'Titania 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-3:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-4:2000:default:planetocentric', 'Oberon 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-4:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-5:2000:spherical:planetocentric', 'Spherical Miranda 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-5:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-5:2000:triaxial:planetocentric', 'Triaxial Miranda 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-5:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-6:2000:default:planetocentric', 'Cordelia 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-6:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-7:2000:default:planetocentric', 'Ophelia 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-7:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-8:2000:default:planetocentric', 'Bianca 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-8:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-9:2000:default:planetocentric', 'Cressida 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-9:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-10:2000:default:planetocentric', 'Desdemona 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-10:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-11:2000:default:planetocentric', 'Juliet 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-11:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-12:2000:default:planetocentric', 'Portia 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-12:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-13:2000:default:planetocentric', 'Rosalind 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-13:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-14:2000:default:planetocentric', 'Belinda 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-14:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-15:2000:default:planetocentric', 'Puck 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-15:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);


insert into ssbd_coordinatereferencesystem values ('sun-8-1:2000:default:planetocentric', 'Triton 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-1:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-2:2000:default:planetocentric', 'Nereid 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-2:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-3:2000:default:planetocentric', 'Naiad 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-3:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-4:2000:default:planetocentric', 'Thalassa 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-4:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-5:2000:default:planetocentric', 'Despina 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-5:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-6:2000:default:planetocentric', 'Galatea 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-6:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-7:2000:spherical:planetocentric', 'Spherical Larissa 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-7:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-7:2000:ellipsoidal:planetocentric', 'Ellipsoidal Larissa 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-7:2000:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-8:2000:spherical:planetocentric', 'Spherical Proteus 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-8:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-8:2000:triaxial:planetocentric', 'Triaxial Proteus 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-8:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);


insert into ssbd_coordinatereferencesystem values ('sun-9-1:2000:default:planetocentric', 'Charon 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-9-1:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);

insert into ssbd_coordinatereferencesystem values ('9511010:2000:spherical:planetocentric', 'Spherical Gaspra 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '9511010:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('9511010:2000:measured:planetocentric', 'Measured Ellipsoid Gaspra 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '9511010:2000:measured', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('9511010:2000:bestfit:planetocentric', 'Best-fit Ellipsoid Gaspra 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '9511010:2000:bestfit', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2431010:2000:spherical:planetocentric', 'Spherical Ida 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2431010:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2431010:2000:measured:planetocentric', 'Measured Ida 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2431010:2000:measured', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2431010:2000:bestfit:planetocentric', 'Best-fit Ellipsoid Ida 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2431010:2000:bestfit', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000001:2000:spherical:planetocentric', 'Spherical Ceres 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2000001:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000001:2000:ellipsoidal:planetocentric', 'Ellipsoidal Ceres 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2000001:2000:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000021:2000:spherical:planetocentric', 'Spherical Lutetia 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2000021:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000021:2000:triaxial:planetocentric', 'Triaxial Lutetia 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2000021:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000216:2000:measured:planetocentric', 'Measured Kleopatra 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2000216:2000:measured', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000433:2000:default:planetocentric', 'Mean Spherical Eros 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2000433:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000433:2000:bestfit:planetocentric', 'Best-fit Spherical Eros 2000 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2000433:2000:bestfit', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);


insert into ssbd_coordinatereferencesystem values ('0:2009:default:planetocentric', 'Sun 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '0:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-1-99:2009:default:planetocentric', 'Mercury 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-1-99:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-2-99:2009:default:planetocentric', 'Venus 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-2-99:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-3-99:2009:spherical:planetocentric', 'Spherical Earth 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-3-99:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-3-99:2009:default:planetocentric', 'Ellipsoidial Earth 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-3-99:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-3-1:2009:default:planetocentric', 'Moon 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-3-1:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-99:2009:spherical:planetocentric', 'Spherical Mars 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-4-99:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-99:2009:ellipsoidal:planetocentric', 'Ellipsoidal Mars 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-4-99:2009:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-99:2009:default:planetocentric', 'Quadriaxial Mars 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-4-99:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-1:2009:spherical:planetocentric', 'Spherical Phobos 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-4-1:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-1:2009:triaxial:planetocentric', 'Triaxial Phobos 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-4-1:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-2:2009:spherical:planetocentric', 'Spherical Deimos 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-4-2:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-2:2009:triaxial:planetocentric', 'Triaxial Deimos 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-4-2:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-99:2009:spherical:planetocentric', 'Spherical Jupiter 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-99:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-99:2009:ellipsoidal:planetocentric', 'Ellipsoidal Jupiter 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-99:2009:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-1:2009:spherical:planetocentric', 'Spherical Io 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-1:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-1:2009:triaxial:planetocentric', 'Triaxial Io 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-1:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-2:2009:spherical:planetocentric', 'Spherical Europa 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-2:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-2:2009:triaxial:planetocentric', 'Triaxial Europa 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-2:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-3:2009:default:planetocentric', 'Ganymede 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-3:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-4:2009:default:planetocentric', 'Callisto 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-4:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-5:2009:spherical:planetocentric', 'Spherical Amalthea 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-5:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-5:2009:triaxial:planetocentric', 'Ellipsoidal Amalthea 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-5:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-6:2009:default:planetocentric', 'Himalia 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-6:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-7:2009:default:planetocentric', 'Elara 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-7:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-8:2009:default:planetocentric', 'Pasiphae 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-8:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-9:2009:default:planetocentric', 'Sinope 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-9:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-10:2009:default:planetocentric', 'Lysithea 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-10:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-11:2009:default:planetocentric', 'Carme 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-11:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-12:2009:default:planetocentric', 'Ananke 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-12:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-13:2009:default:planetocentric', 'Leda 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-13:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-14:2009:spherical:planetocentric', 'Spherical Thebe 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-14:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-14:2009:triaxial:planetocentric', 'Triaxial Thebe 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-14:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-15:2009:spherical:planetocentric', 'Spherical Adrastea 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-15:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-15:2009:triaxial:planetocentric', 'Ellipsoidal Adrastea 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-15:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-16:2009:spherical:planetocentric', 'Spherical Metis 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-16:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-16:2009:triaxial:planetocentric', 'Ellipsoidal Metis 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-16:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-99:2009:spherical:planetocentric', 'Spherical Saturn 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-99:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-99:2009:ellipsoidal:planetocentric', 'Ellipsoidal Saturn 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-99:2009:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-1:2009:spherical:planetocentric', 'Spherical Mimas 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-1:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-1:2009:triaxial:planetocentric', 'Triaxial Mimas 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-1:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-2:2009:spherical:planetocentric', 'Spherical Enceladus 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-2:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-2:2009:triaxial:planetocentric', 'Triaxial Enceladus 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-2:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-3:2009:spherical:planetocentric', 'Spherical Tethys 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-3:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-3:2009:triaxial:planetocentric', 'Triaxial Tethys 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-3:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-4:2009:spherical:planetocentric', 'Spherical Dione 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-4:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-4:2009:triaxial:planetocentric', 'Triaxial Dione 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-4:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-5:2009:spherical:planetocentric', 'Spherical Rhea 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-5:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-5:2009:triaxial:planetocentric', 'Triaxial Rhea 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-5:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-6:2009:spherical:planetocentric', 'Spherical Titan 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-6:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-6:2009:triaxial:planetocentric', 'Triaxial Titan 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-6:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-7:2009:default:planetocentric', 'Shperical Hyperion 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-7:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-7:2009:triaxial:planetocentric', 'Triaxial Hyperion 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-7:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-8:2009:spherical:planetocentric', 'Spherical Iapetus 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-8:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-8:2009:ellipsoidal:planetocentric', 'Ellipsoidal Iapetus 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-8:2009:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-9:2009:spherical:planetocentric', 'Spherical Phoebe 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-9:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-9:2009:triaxial:planetocentric', 'Triaxial Phoebe 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-9:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-10:2009:spherical:planetocentric', 'Spherical Janus 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-10:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-10:2009:triaxial:planetocentric', 'Triaxial Janus 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-10:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-11:2009:spherical:planetocentric', 'Spherical Epimetheus 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-11:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-11:2009:triaxial:planetocentric', 'Triaxial Epimetheus 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-11:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-12:2009:spherical:planetocentric', 'Spherical Helene 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-12:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-12:2009:triaxial:planetocentric', 'Triaxial Helene 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-12:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-13:2009:spherical:planetocentric', 'Spherical Telesto 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-13:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-13:2009:triaxial:planetocentric', 'Triaxial Telesto 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-13:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-14:2009:spherical:planetocentric', 'Spherical Calypso 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-14:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-14:2009:triaxial:planetocentric', 'Triaxial Calypso 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-14:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-15:2009:spherical:planetocentric', 'Spherical Atlas 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-15:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-15:2009:triaxial:planetocentric', 'Triaxial Atlas 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-15:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-16:2009:spherical:planetocentric', 'Spherical Prometheus 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-16:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-16:2009:triaxial:planetocentric', 'Triaxial Prometheus 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-16:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-17:2009:spherical:planetocentric', 'Spherical Pandora 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-17:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-17:2009:triaxial:planetocentric', 'Triaxial Pandora 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-17:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-18:2009:spherical:planetocentric', 'Spherical Pan 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-18:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-18:2009:triaxial:planetocentric', 'Triaxial Pan 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-18:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-32:2009:default:planetocentric', 'Methone 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-32:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-33:2009:spherical:planetocentric', 'Spherical Pallene 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-33:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-33:2009:triaxial:planetocentric', 'Triaxial Pallene 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-33:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-34:2009:spherical:planetocentric', 'Spherical Polydeuces 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-34:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-34:2009:triaxial:planetocentric', 'Triaxial Polydeuces 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-34:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-35:2009:spherical:planetocentric', 'Spherical Daphnis 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-35:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-35:2009:triaxial:planetocentric', 'Triaxial Daphnis 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-35:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-49:2009:default:planetocentric', 'Anthe 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-49:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-99:2009:spherical:planetocentric', 'Spherical Uranus 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-99:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-99:2009:ellipsoidal:planetocentric', 'Ellipsoidal Uranus 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-99:2009:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-1:2009:spherical:planetocentric', 'Spherical Ariel 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-1:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-1:2009:triaxial:planetocentric', 'Triaxial Ariel 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-1:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-2:2009:default:planetocentric', 'Umbriel 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-2:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-3:2009:default:planetocentric', 'Titania 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-3:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-4:2009:default:planetocentric', 'Oberon 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-4:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-5:2009:spherical:planetocentric', 'Spherical Miranda 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-5:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-5:2009:triaxial:planetocentric', 'Triaxial Miranda 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-5:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-6:2009:default:planetocentric', 'Cordelia 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-6:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-7:2009:default:planetocentric', 'Ophelia 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-7:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-8:2009:default:planetocentric', 'Bianca 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-8:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-9:2009:default:planetocentric', 'Cressida 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-9:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-10:2009:default:planetocentric', 'Desdemona 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-10:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-11:2009:default:planetocentric', 'Juliet 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-11:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-12:2009:default:planetocentric', 'Portia 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-12:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-13:2009:default:planetocentric', 'Rosalind 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-13:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-14:2009:default:planetocentric', 'Belinda 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-14:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-15:2009:default:planetocentric', 'Puck 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-15:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-99:2009:spherical:planetocentric', 'Spherical Neptune 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-99:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-99:2009:ellipsoidal:planetocentric', 'Ellipsoidal Neptune 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-99:2009:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-1:2009:default:planetocentric', 'Triton 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-1:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-2:2009:default:planetocentric', 'Nereid 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-2:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-3:2009:default:planetocentric', 'Naiad 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-3:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-4:2009:default:planetocentric', 'Thalassa 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-4:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-5:2009:default:planetocentric', 'Despina 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-5:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-6:2009:default:planetocentric', 'Galatea 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-6:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-7:2009:spherical:planetocentric', 'Spherical Larissa 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-7:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-7:2009:ellipsoidal:planetocentric', 'Ellipsoidal Larissa 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-7:2009:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-8:2009:spherical:planetocentric', 'Spherical Proteus 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-8:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-8:2009:triaxial:planetocentric', 'Triaxial Proteus 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-8:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-9-99:2009:default:planetocentric', 'Pluto 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-9-99:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-9-1:2009:default:planetocentric', 'Charon 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-9-1:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000005:2009:default:planetocentric', 'Effective Borrelly 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '1000005:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000005:2009:measured:planetocentric', 'Measured Borrelly 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '1000005:2009:measured', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000036:2009:triaxial:planetocentric', 'Triaxial Halley 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '1000036:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000093:2009:spherical:planetocentric', 'Spherical Tempel 1 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '1000093:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000093:2009:default:planetocentric', 'Biaxial Tempel 1 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '1000093:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000107:2009:spherical:planetocentric', 'Spherical Wild 2 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '1000107:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000107:2009:triaxial:planetocentric', 'Triaxial Wild 2 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '1000107:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('9511010:2009:spherical:planetocentric', 'Spherical Gaspra 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '9511010:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('9511010:2009:triaxial:planetocentric', 'Triaxial Gaspra 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '9511010:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2431010:2009:spherical:planetocentric', 'Spherical Ida 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2431010:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2431010:2009:triaxial:planetocentric', 'Triaxial Ida 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2431010:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000001:2009:spherical:planetocentric', 'Spherical Ceres 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2000001:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000001:2009:ellipsoidal:planetocentric', 'Ellipsoidal Ceres 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2000001:2009:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000004:2009:default:planetocentric', 'Vesta 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2000004:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000021:2009:spherical:planetocentric', 'Spherical Lutetia 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2000021:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000021:2009:triaxial:planetocentric', 'Triaxial Lutetia 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2000021:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000216:2009:default:planetocentric', 'Kleopatra 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2000216:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000433:2009:spherical:planetocentric', 'Spherical Eros 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2000433:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000433:2009:triaxial:planetocentric', 'Triaxial Eros 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2000433:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000511:2009:spherical:planetocentric', 'Spherical Davida 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2000511:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000511:2009:triaxial:planetocentric', 'Triaxial Davida 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2000511:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000253:2009:spherical:planetocentric', 'Spherical Mathilde 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2000253:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000253:2009:triaxial:planetocentric', 'Triaxial Mathilde 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2000253:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2002867:2009:spherical:planetocentric', 'Spherical Steins 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2002867:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2002867:2009:triaxial:planetocentric', 'Triaxial Steins 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2002867:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2004179:2009:default:planetocentric', 'Toutatis 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2004179:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2025143:2009:default:planetocentric', 'Itokawa 2009 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2025143:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);






insert into ssbd_coordinatereferencesystem values ('0:2015:default:planetocentric', 'Sun 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '0:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-1-99:2015:spherical:planetocentric', 'Spherical Mercury 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-1-99:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-1-99:2015:ellipsoidal:planetocentric', 'Ellipsoidal Mercury 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-1-99:2015:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-1-99:2015:triaxial:planetocentric', 'Triaxial Mercury 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-1-99:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-2-99:2015:default:planetocentric', 'Venus 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-2-99:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-3-99:2015:spherical:planetocentric', 'Spherical Earth 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-3-99:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-3-99:2015:ellipsoidal:planetocentric', 'Ellipsoidal Earth 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-3-99:2015:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-3-99:2015:ellipsoidal-iau:planetocentric', 'Ellipsoidal Earth 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-3-99:2015:ellipsoidal-iau', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-3-1:2015:default:planetocentric', 'Moon 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-3-1:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);

insert into ssbd_coordinatereferencesystem values ('sun-4-99:2015:spherical:planetocentric', 'Spherical Mars 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-4-99:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-99:2015:ellipsoidal:planetocentric', 'Ellipsoidal Mars 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-4-99:2015:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-99:2015:default:planetocentric', 'Quadriaxial Mars 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-4-99:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-1:2015:spherical:planetocentric', 'Spherical Phobos 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-4-1:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-1:2015:triaxial:planetocentric', 'Triaxial Phobos 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-4-1:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-2:2015:spherical:planetocentric', 'Spherical Deimos 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-4-2:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-2:2015:triaxial:planetocentric', 'Triaxial Deimos 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-4-2:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);

insert into ssbd_coordinatereferencesystem values ('sun-5-99:2015:spherical:planetocentric', 'Spherical Jupiter 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-99:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-99:2015:ellipsoidal:planetocentric', 'Ellipsoidal Jupiter 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-99:2015:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-1:2015:spherical:planetocentric', 'Spherical Io 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-1:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-1:2015:triaxial:planetocentric', 'Triaxial Io 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-1:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-2:2015:spherical:planetocentric', 'Spherical Europa 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-2:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-2:2015:triaxial:planetocentric', 'Triaxial Europa 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-2:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-3:2015:default:planetocentric', 'Ganymede 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-3:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-4:2015:default:planetocentric', 'Callisto 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-4:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-5:2015:spherical:planetocentric', 'Spherical Amalthea 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-5:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-5:2015:triaxial:planetocentric', 'Triaxial Amalthea 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-5:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-6:2015:default:planetocentric', 'Himalia 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-6:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-7:2015:default:planetocentric', 'Elara 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-7:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-8:2015:default:planetocentric', 'Pasiphae 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-8:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-9:2015:default:planetocentric', 'Sinope 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-9:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-10:2015:default:planetocentric', 'Lysithea 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-10:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-11:2015:default:planetocentric', 'Carme 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-11:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-12:2015:default:planetocentric', 'Ananke 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-12:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-13:2015:default:planetocentric', 'Leda 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-13:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-14:2015:spherical:planetocentric', 'Spherical Thebe 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-14:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-14:2015:triaxial:planetocentric', 'Triaxial Thebe 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-14:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-15:2015:spherical:planetocentric', 'Spherical Adrastea 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-15:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-15:2015:triaxial:planetocentric', 'Triaxial Adrastea 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-15:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-16:2015:spherical:planetocentric', 'Spherical Metis 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-16:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-16:2015:triaxial:planetocentric', 'Triaxial Metis 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-5-16:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);

insert into ssbd_coordinatereferencesystem values ('sun-6-99:2015:spherical:planetocentric', 'Spherical Saturn 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-99:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-99:2015:ellipsoidal:planetocentric', 'Ellipsoidal Saturn 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-99:2015:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-1:2015:spherical:planetocentric', 'Spherical Mimas 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-1:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-1:2015:triaxial:planetocentric', 'Triaxial Mimas 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-1:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-2:2015:spherical:planetocentric', 'Spherical Enceladus 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-2:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-2:2015:triaxial:planetocentric', 'Triaxial Enceladus 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-2:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-3:2015:spherical:planetocentric', 'Spherical Tethys 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-3:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-3:2015:triaxial:planetocentric', 'Triaxial Tethys 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-3:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-4:2015:spherical:planetocentric', 'Spherical Dione 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-4:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-4:2015:triaxial:planetocentric', 'Triaxial Dione 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-4:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-5:2015:spherical:planetocentric', 'Spherical Rhea 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-5:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-5:2015:triaxial:planetocentric', 'Triaxial Rhea 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-5:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-6:2015:spherical:planetocentric', 'Spherical Titan 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-6:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-6:2015:bestfit:planetocentric', 'Best-fit Spherical Titan 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-6:2015:bestfit', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-6:2015:triaxial:planetocentric', 'Triaxial Titan 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-6:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-7:2015:spherical:planetocentric', 'Spherical Hyperion 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-7:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-7:2015:triaxial:planetocentric', 'Triaxial Hyperion 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-7:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-8:2015:spherical:planetocentric', 'Spherical Iapetus 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-8:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-8:2015:triaxial:planetocentric', 'Triaxial Iapetus 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-8:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-9:2015:spherical:planetocentric', 'Spherical Phoebe 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-9:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-9:2015:triaxial:planetocentric', 'Triaxial Phoebe 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-9:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-10:2015:spherical:planetocentric', 'Spherical Janus 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-10:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-10:2015:triaxial:planetocentric', 'Triaxial Janus 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-10:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-11:2015:spherical:planetocentric', 'Spherical Epimetheus 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-11:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-11:2015:triaxial:planetocentric', 'Triaxial Epimetheus 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-11:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-12:2015:spherical:planetocentric', 'Spherical Helene 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-12:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-12:2015:triaxial:planetocentric', 'Triaxial Helene 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-12:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-13:2015:spherical:planetocentric', 'Spherical Telesto 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-13:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-13:2015:triaxial:planetocentric', 'Triaxial Telesto 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-13:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-14:2015:spherical:planetocentric', 'Spherical Calypso 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-14:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-14:2015:triaxial:planetocentric', 'Triaxial Calypso 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-14:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-15:2015:spherical:planetocentric', 'Spherical Atlas 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-15:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-15:2015:triaxial:planetocentric', 'Triaxial Atlas 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-15:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-16:2015:spherical:planetocentric', 'Spherical Prometheus 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-16:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-16:2015:triaxial:planetocentric', 'Triaxial Prometheus 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-16:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-17:2015:spherical:planetocentric', 'Spherical Pandora 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-17:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-17:2015:triaxial:planetocentric', 'Triaxial Pandora 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-17:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-18:2015:spherical:planetocentric', 'Spherical Pan 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-18:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-18:2015:triaxial:planetocentric', 'Triaxial Pan 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-18:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-32:2015:spherical:planetocentric', 'Spherical Methone 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-32:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-32:2015:triaxial:planetocentric', 'Triaxial Methone 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-32:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-33:2015:spherical:planetocentric', 'Spherical Pallene 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-33:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-33:2015:triaxial:planetocentric', 'Triaxial Pallene 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-33:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-34:2015:spherical:planetocentric', 'Spherical Polydeuces 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-34:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-34:2015:triaxial:planetocentric', 'Triaxial Polydeuces 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-34:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-35:2015:spherical:planetocentric', 'Spherical Daphnis 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-35:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-35:2015:triaxial:planetocentric', 'Triaxial Daphnis 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-35:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-49:2015:default:planetocentric', 'Anthe 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-49:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-53:2015:spherical:planetocentric', 'Spherical Aegaeon 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-53:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-53:2015:triaxial:planetocentric', 'Triaxial Aegaeon 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-6-53:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);

insert into ssbd_coordinatereferencesystem values ('sun-7-99:2015:spherical:planetocentric', 'Spherical Uranus 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-99:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-99:2015:ellipsoidal:planetocentric', 'Ellipsoidal Uranus 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-99:2015:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-1:2015:spherical:planetocentric', 'Spherical Ariel 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-1:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-1:2015:triaxial:planetocentric', 'Triaxial Ariel 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-1:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-2:2015:default:planetocentric', 'Umbriel 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-2:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-3:2015:default:planetocentric', 'Titania 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-3:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-4:2015:default:planetocentric', 'Oberon 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-4:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-5:2015:spherical:planetocentric', 'Spherical Miranda 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-5:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-5:2015:triaxial:planetocentric', 'Triaxial Miranda 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-5:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-6:2015:default:planetocentric', 'Cordelia 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-6:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-7:2015:default:planetocentric', 'Ophelia 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-7:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-8:2015:default:planetocentric', 'Bianca 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-8:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-9:2015:default:planetocentric', 'Cressida 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-9:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-10:2015:default:planetocentric', 'Desdemona 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-10:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-11:2015:default:planetocentric', 'Juliet 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-11:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-12:2015:default:planetocentric', 'Portia 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-12:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-13:2015:default:planetocentric', 'Rosalind 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-13:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-14:2015:default:planetocentric', 'Belinda 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-14:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-15:2015:default:planetocentric', 'Puck 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-7-15:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);

insert into ssbd_coordinatereferencesystem values ('sun-8-99:2015:spherical:planetocentric', 'Spherical Neptune 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-99:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-99:2015:ellipsoidal:planetocentric', 'Ellipsoidal Neptune 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-99:2015:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-1:2015:default:planetocentric', 'Triton 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-1:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-2:2015:default:planetocentric', 'Nereid 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-2:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-3:2015:default:planetocentric', 'Naiad 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-3:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-4:2015:default:planetocentric', 'Thalassa 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-4:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-5:2015:default:planetocentric', 'Despina 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-5:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-6:2015:default:planetocentric', 'Galatea 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-6:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-7:2015:spherical:planetocentric', 'Spherical Larissa 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-7:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-7:2015:ellipsoidal:planetocentric', 'Ellipsoidal Larissa 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-7:2015:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-8:2015:spherical:planetocentric', 'Spherical Proteus 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-8:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-8:2015:triaxial:planetocentric', 'Triaxial Proteus 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-8-8:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);

insert into ssbd_coordinatereferencesystem values ('sun-9-99:2015:default:planetocentric', 'Pluto 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-9-99:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-9-1:2015:default:planetocentric', 'Charon 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', 'sun-9-1:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000005:2015:spherical:planetocentric', 'Spherical Borrelly 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '1000005:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000005:2015:measured:planetocentric', 'Measured Borrelly 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '1000005:2015:measured', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000012:2015:spherical:planetocentric', 'Spherical Churyumov-Gerasimenko 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '1000012:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000012:2015:triaxial:planetocentric', 'Triaxial Churyumov-Gerasimenko 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '1000012:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000036:2015:default:planetocentric', 'Halley 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '1000036:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000041:2015:spherical:planetocentric', 'Spherical Hartley 2 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '1000041:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000041:2015:triaxial:planetocentric', 'Triaxial Hartley 2 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '1000041:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000093:2015:spherical:planetocentric', 'Spherical Tempel 1 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '1000093:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000093:2015:default:planetocentric', 'Biaxial Tempel 1 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '1000093:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000107:2015:spherical:planetocentric', 'Spherical Wild 2 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '1000107:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000107:2015:triaxial:planetocentric', 'Triaxial Wild 2 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '1000107:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('9511010:2015:spherical:planetocentric', 'Spherical Gaspra 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '9511010:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('9511010:2015:triaxial:planetocentric', 'Triaxial Gaspra 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '9511010:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2431010:2015:spherical:planetocentric', 'Spherical Ida 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2431010:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2431010:2015:triaxial:planetocentric', 'Triaxial Ida 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2431010:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000001:2015:spherical:planetocentric', 'Spherical Ceres 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2000001:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000001:2015:ellipsoidal:planetocentric', 'Ellipsoidal Ceres 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2000001:2015:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000004:2015:default:planetocentric', 'Vesta 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2000004:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000016:2015:spherical:planetocentric', 'Spherical Psyche 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2000016:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000016:2015:triaxial:planetocentric', 'Triaxial Psyche 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2000016:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000021:2015:spherical:planetocentric', 'Spherical Lutetia 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2000021:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000021:2015:triaxial:planetocentric', 'Triaxial Lutetia 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2000021:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('?2000052:2015:spherical:planetocentric', 'Spherical 52 Europa 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '?2000052:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('?2000052:2015:triaxial:planetocentric', 'Triaxial 52 Europa 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '?2000052:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000216:2015:default:planetocentric', 'Kleopatra 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2000216:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000433:2015:spherical:planetocentric', 'Spherical Eros 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2000433:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000433:2015:triaxial:planetocentric', 'Triaxial Eros 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2000433:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000511:2015:spherical:planetocentric', 'Spherical Davida 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2000511:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000511:2015:triaxial:planetocentric', 'Triaxial Davida 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2000511:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000253:2015:spherical:planetocentric', 'Spherical Mathilde 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2000253:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000253:2015:triaxial:planetocentric', 'Triaxial Mathilde 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2000253:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2002867:2015:spherical:planetocentric', 'Spherical Steins 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2002867:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2002867:2015:triaxial:planetocentric', 'Triaxial Steins 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2002867:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2004179:2015:default:planetocentric', 'Toutatis 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2004179:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2025143:2015:default:planetocentric', 'Itokawa 2015 planetocentric 3D', 'planetocentric 3D', 'spherical:3d:direct', '2025143:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);


-- CRSs planétographiques

insert into ssbd_coordinatereferencesystem values ('sun-1-99:2000:default:planetographic', 'Mercury 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-1-99:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-2-99:2000:default:planetographic', 'Venus 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-2-99:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-3-99:2000:spherical:planetographic', 'Spherical Earth 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-3-99:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-3-99:2000:ellipsoidal:planetographic', 'Ellipsoidal Earth 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-3-99:2000:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-99:2000:spherical:planetographic', 'Spherical Mars 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-4-99:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-99:2000:ellipsoidal:planetographic', 'Ellipsoidal Mars 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-4-99:2000:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-99:2000:default:planetographic', 'Quadriaxial Mars 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-4-99:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-99:2000:spherical:planetographic', 'Spherical Jupiter 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-99:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-99:2000:ellipsoidal:planetographic', 'Ellipsoidal Jupiter 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-99:2000:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-99:2000:spherical:planetographic', 'Spherical Saturn 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-99:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-99:2000:ellipsoidal:planetographic', 'Ellipsoidal Saturn 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-99:2000:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-99:2000:spherical:planetographic', 'Spherical Uranus 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-99:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-99:2000:ellipsoidal:planetographic', 'Ellipsoidal Uranus 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-99:2000:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-99:2000:spherical:planetographic', 'Spherical Neptune 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-99:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-99:2000:ellipsoidal:planetographic', 'Ellipsoidal Neptune 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-99:2000:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-9-99:2000:spherical:planetographic', 'Spherical Pluto 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-9-99:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);

insert into ssbd_coordinatereferencesystem values ('sun-3-1:2000:spherical:planetographic', 'Spherical Moon 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-3-1:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-1:2000:spherical:planetographic', 'Spherical Phobos 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-4-1:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-1:2000:triaxial:planetographic', 'Triaxial Phobos 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-4-1:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-2:2000:spherical:planetographic', 'Spherical Deimos 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-4-2:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-2:2000:triaxial:planetographic', 'Triaxial Deimos 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-4-2:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-16:2000:spherical:planetographic', 'Spherical Metis 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-16:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-16:2000:ellipsoidal:planetographic', 'Ellipsoidal Metis 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-16:2000:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-15:2000:spherical:planetographic', 'Spherical Adrastea 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-15:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-15:2000:triaxial:planetographic', 'Triaxial Adrastea 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-15:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-5:2000:spherical:planetographic', 'Spherical Amalthea 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-5:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-5:2000:triaxial:planetographic', 'Triaxial Amalthea 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-5:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-14:2000:spherical:planetographic', 'Spherical Thebe 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-14:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-14:2000:triaxial:planetographic', 'Triaxial Thebe 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-14:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-1:2000:spherical:planetographic', 'Spherical Io 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-1:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-1:2000:triaxial:planetographic', 'Triaxial Io 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-1:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-2:2000:spherical:planetographic', 'Spherical Europa 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-2:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-2:2000:triaxial:planetographic', 'Triaxial Europa 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-2:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-3:2000:spherical:planetographic', 'Spherical Ganymede 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-3:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-3:2000:triaxial:planetographic', 'Triaxial Ganymede 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-3:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-4:2000:spherical:planetographic', 'Spherical Callisto 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-4:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-4:2000:triaxial:planetographic', 'Triaxial Callisto 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-4:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-13:2000:default:planetographic', 'Leda 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-13:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-6:2000:default:planetographic', 'Himalia 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-6:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-10:2000:default:planetographic', 'Lysithea 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-10:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-7:2000:default:planetographic', 'Elara 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-7:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-12:2000:default:planetographic', 'Ananke 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-12:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-11:2000:default:planetographic', 'Carme 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-11:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-8:2000:default:planetographic', 'Pasiphae 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-8:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-9:2000:default:planetographic', 'Sinope 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-9:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);

insert into ssbd_coordinatereferencesystem values ('sun-6-1:2000:spherical:planetographic', 'Spherical Mimas 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-1:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-1:2000:triaxial:planetographic', 'Triaxial Mimas 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-1:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-2:2000:spherical:planetographic', 'Spherical Enceladus 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-2:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-2:2000:triaxial:planetographic', 'Triaxial Enceladus 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-2:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-3:2000:spherical:planetographic', 'Spherical Tethys 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-3:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-3:2000:triaxial:planetographic', 'Triaxial Tethys 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-3:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-4:2000:default:planetographic', 'Dione 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-4:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-5:2000:default:planetographic', 'Rhea 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-5:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-6:2000:default:planetographic', 'Titan 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-6:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-7:2000:spherical:planetographic', 'Spherical Hyperion 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-7:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-7:2000:triaxial:planetographic', 'Triaxial Hyperion 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-7:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-8:2000:default:planetographic', 'Iapetus 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-8:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-9:2000:spherical:planetographic', 'Spherical Phoebe 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-9:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-9:2000:triaxial:planetographic', 'Triaxial Phoebe 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-9:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-10:2000:spherical:planetographic', 'Spherical Janus 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-10:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-10:2000:triaxial:planetographic', 'Triaxial Janus 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-10:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-11:2000:spherical:planetographic', 'Spherical Epimetheus 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-11:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-11:2000:triaxial:planetographic', 'Triaxial Epimetheus 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-11:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-12:2000:spherical:planetographic', 'Spherical Helene 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-12:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
-- TODO : rayon polaire d'Helene suspect, de même que l'axis_b
insert into ssbd_coordinatereferencesystem values ('sun-6-12:2000:ellipsoidal:planetographic', 'Ellipsoidal Helene 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-12:2000:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-13:2000:spherical:planetographic', 'Spherical Telesto 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-13:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-13:2000:triaxial:planetographic', 'Triaxial Telesto 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-13:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-14:2000:spherical:planetographic', 'Spherical Calypso 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-14:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-14:2000:triaxial:planetographic', 'Triaxial Calypso 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-14:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-15:2000:spherical:planetographic', 'Spherical Atlas 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-15:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-15:2000:triaxial:planetographic', 'Triaxial Atlas 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-15:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-16:2000:spherical:planetographic', 'Spherical Prometheus 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-16:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-16:2000:triaxial:planetographic', 'Triaxial Prometheus 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-16:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-17:2000:spherical:planetographic', 'Spherical Pandora 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-17:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-17:2000:triaxial:planetographic', 'Triaxial Pandora 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-17:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-18:2000:default:planetographic', 'Pan 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-18:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);

insert into ssbd_coordinatereferencesystem values ('sun-6-32:2000:default:planetographic', 'Methone 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-32:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-33:2000:default:planetographic', 'Pallene 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-33:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-34:2000:default:planetographic', 'Polydeuces 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-34:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);

insert into ssbd_coordinatereferencesystem values ('sun-7-1:2000:spherical:planetographic', 'Spherical Ariel 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-1:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-1:2000:triaxial:planetographic', 'Triaxial Ariel 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-1:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-2:2000:default:planetographic', 'Umbriel 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-2:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-3:2000:default:planetographic', 'Titania 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-3:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-4:2000:default:planetographic', 'Oberon 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-4:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-5:2000:spherical:planetographic', 'Spherical Miranda 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-5:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-5:2000:triaxial:planetographic', 'Triaxial Miranda 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-5:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-6:2000:default:planetographic', 'Cordelia 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-6:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-7:2000:default:planetographic', 'Ophelia 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-7:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-8:2000:default:planetographic', 'Bianca 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-8:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-9:2000:default:planetographic', 'Cressida 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-9:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-10:2000:default:planetographic', 'Desdemona 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-10:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-11:2000:default:planetographic', 'Juliet 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-11:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-12:2000:default:planetographic', 'Portia 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-12:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-13:2000:default:planetographic', 'Rosalind 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-13:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-14:2000:default:planetographic', 'Belinda 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-14:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-15:2000:default:planetographic', 'Puck 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-15:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);


insert into ssbd_coordinatereferencesystem values ('sun-8-1:2000:default:planetographic', 'Triton 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-1:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-2:2000:default:planetographic', 'Nereid 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-2:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-3:2000:default:planetographic', 'Naiad 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-3:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-4:2000:default:planetographic', 'Thalassa 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-4:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-5:2000:default:planetographic', 'Despina 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-5:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-6:2000:default:planetographic', 'Galatea 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-6:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-7:2000:spherical:planetographic', 'Spherical Larissa 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-7:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-7:2000:ellipsoidal:planetographic', 'Ellipsoidal Larissa 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-7:2000:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-8:2000:spherical:planetographic', 'Spherical Proteus 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-8:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-8:2000:triaxial:planetographic', 'Triaxial Proteus 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-8:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);


insert into ssbd_coordinatereferencesystem values ('sun-9-1:2000:default:planetographic', 'Charon 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-9-1:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);

insert into ssbd_coordinatereferencesystem values ('9511010:2000:spherical:planetographic', 'Spherical Gaspra 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '9511010:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('9511010:2000:measured:planetographic', 'Measured Ellipsoid Gaspra 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '9511010:2000:measured', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('9511010:2000:bestfit:planetographic', 'Best-fit Ellipsoid Gaspra 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '9511010:2000:bestfit', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2431010:2000:spherical:planetographic', 'Spherical Ida 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2431010:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2431010:2000:measured:planetographic', 'Measured Ida 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2431010:2000:measured', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2431010:2000:bestfit:planetographic', 'Best-fit Ellipsoid Ida 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2431010:2000:bestfit', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000001:2000:spherical:planetographic', 'Spherical Ceres 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2000001:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000001:2000:ellipsoidal:planetographic', 'Ellipsoidal Ceres 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2000001:2000:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000021:2000:spherical:planetographic', 'Spherical Lutetia 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2000021:2000:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000021:2000:triaxial:planetographic', 'Triaxial Lutetia 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2000021:2000:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000216:2000:measured:planetographic', 'Measured Kleopatra 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2000216:2000:measured', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000433:2000:default:planetographic', 'Mean Spherical Eros 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2000433:2000:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000433:2000:bestfit:planetographic', 'Best-fit Spherical Eros 2000 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2000433:2000:bestfit', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);


insert into ssbd_coordinatereferencesystem values ('0:2009:default:planetographic', 'Sun 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '0:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-1-99:2009:default:planetographic', 'Mercury 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-1-99:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-2-99:2009:default:planetographic', 'Venus 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-2-99:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-3-99:2009:spherical:planetographic', 'Spherical Earth 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-3-99:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-3-99:2009:default:planetographic', 'Ellipsoidial Earth 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-3-99:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-3-1:2009:default:planetographic', 'Moon 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-3-1:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-99:2009:spherical:planetographic', 'Spherical Mars 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-4-99:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-99:2009:ellipsoidal:planetographic', 'Ellipsoidal Mars 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-4-99:2009:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-99:2009:default:planetographic', 'Quadriaxial Mars 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-4-99:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-1:2009:spherical:planetographic', 'Spherical Phobos 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-4-1:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-1:2009:triaxial:planetographic', 'Triaxial Phobos 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-4-1:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-2:2009:spherical:planetographic', 'Spherical Deimos 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-4-2:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-2:2009:triaxial:planetographic', 'Triaxial Deimos 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-4-2:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-99:2009:spherical:planetographic', 'Spherical Jupiter 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-99:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-99:2009:ellipsoidal:planetographic', 'Ellipsoidal Jupiter 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-99:2009:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-1:2009:spherical:planetographic', 'Spherical Io 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-1:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-1:2009:triaxial:planetographic', 'Triaxial Io 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-1:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-2:2009:spherical:planetographic', 'Spherical Europa 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-2:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-2:2009:triaxial:planetographic', 'Triaxial Europa 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-2:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-3:2009:default:planetographic', 'Ganymede 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-3:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-4:2009:default:planetographic', 'Callisto 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-4:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-5:2009:spherical:planetographic', 'Spherical Amalthea 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-5:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-5:2009:triaxial:planetographic', 'Ellipsoidal Amalthea 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-5:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-6:2009:default:planetographic', 'Himalia 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-6:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-7:2009:default:planetographic', 'Elara 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-7:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-8:2009:default:planetographic', 'Pasiphae 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-8:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-9:2009:default:planetographic', 'Sinope 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-9:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-10:2009:default:planetographic', 'Lysithea 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-10:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-11:2009:default:planetographic', 'Carme 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-11:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-12:2009:default:planetographic', 'Ananke 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-12:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-13:2009:default:planetographic', 'Leda 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-13:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-14:2009:spherical:planetographic', 'Spherical Thebe 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-14:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-14:2009:triaxial:planetographic', 'Triaxial Thebe 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-14:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-15:2009:spherical:planetographic', 'Spherical Adrastea 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-15:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-15:2009:triaxial:planetographic', 'Ellipsoidal Adrastea 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-15:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-16:2009:spherical:planetographic', 'Spherical Metis 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-16:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-16:2009:triaxial:planetographic', 'Ellipsoidal Metis 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-16:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-99:2009:spherical:planetographic', 'Spherical Saturn 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-99:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-99:2009:ellipsoidal:planetographic', 'Ellipsoidal Saturn 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-99:2009:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-1:2009:spherical:planetographic', 'Spherical Mimas 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-1:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-1:2009:triaxial:planetographic', 'Triaxial Mimas 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-1:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-2:2009:spherical:planetographic', 'Spherical Enceladus 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-2:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-2:2009:triaxial:planetographic', 'Triaxial Enceladus 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-2:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-3:2009:spherical:planetographic', 'Spherical Tethys 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-3:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-3:2009:triaxial:planetographic', 'Triaxial Tethys 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-3:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-4:2009:spherical:planetographic', 'Spherical Dione 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-4:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-4:2009:triaxial:planetographic', 'Triaxial Dione 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-4:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-5:2009:spherical:planetographic', 'Spherical Rhea 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-5:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-5:2009:triaxial:planetographic', 'Triaxial Rhea 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-5:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-6:2009:spherical:planetographic', 'Spherical Titan 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-6:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-6:2009:triaxial:planetographic', 'Triaxial Titan 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-6:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-7:2009:default:planetographic', 'Shperical Hyperion 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-7:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-7:2009:triaxial:planetographic', 'Triaxial Hyperion 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-7:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-8:2009:spherical:planetographic', 'Spherical Iapetus 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-8:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-8:2009:ellipsoidal:planetographic', 'Ellipsoidal Iapetus 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-8:2009:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-9:2009:spherical:planetographic', 'Spherical Phoebe 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-9:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-9:2009:triaxial:planetographic', 'Triaxial Phoebe 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-9:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-10:2009:spherical:planetographic', 'Spherical Janus 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-10:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-10:2009:triaxial:planetographic', 'Triaxial Janus 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-10:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-11:2009:spherical:planetographic', 'Spherical Epimetheus 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-11:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-11:2009:triaxial:planetographic', 'Triaxial Epimetheus 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-11:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-12:2009:spherical:planetographic', 'Spherical Helene 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-12:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-12:2009:triaxial:planetographic', 'Triaxial Helene 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-12:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-13:2009:spherical:planetographic', 'Spherical Telesto 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-13:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-13:2009:triaxial:planetographic', 'Triaxial Telesto 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-13:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-14:2009:spherical:planetographic', 'Spherical Calypso 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-14:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-14:2009:triaxial:planetographic', 'Triaxial Calypso 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-14:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-15:2009:spherical:planetographic', 'Spherical Atlas 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-15:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-15:2009:triaxial:planetographic', 'Triaxial Atlas 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-15:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-16:2009:spherical:planetographic', 'Spherical Prometheus 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-16:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-16:2009:triaxial:planetographic', 'Triaxial Prometheus 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-16:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-17:2009:spherical:planetographic', 'Spherical Pandora 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-17:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-17:2009:triaxial:planetographic', 'Triaxial Pandora 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-17:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-18:2009:spherical:planetographic', 'Spherical Pan 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-18:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-18:2009:triaxial:planetographic', 'Triaxial Pan 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-18:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-32:2009:default:planetographic', 'Methone 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-32:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-33:2009:spherical:planetographic', 'Spherical Pallene 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-33:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-33:2009:triaxial:planetographic', 'Triaxial Pallene 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-33:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-34:2009:spherical:planetographic', 'Spherical Polydeuces 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-34:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-34:2009:triaxial:planetographic', 'Triaxial Polydeuces 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-34:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-35:2009:spherical:planetographic', 'Spherical Daphnis 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-35:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-35:2009:triaxial:planetographic', 'Triaxial Daphnis 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-35:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-49:2009:default:planetographic', 'Anthe 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-49:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-99:2009:spherical:planetographic', 'Spherical Uranus 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-99:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-99:2009:ellipsoidal:planetographic', 'Ellipsoidal Uranus 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-99:2009:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-1:2009:spherical:planetographic', 'Spherical Ariel 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-1:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-1:2009:triaxial:planetographic', 'Triaxial Ariel 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-1:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-2:2009:default:planetographic', 'Umbriel 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-2:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-3:2009:default:planetographic', 'Titania 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-3:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-4:2009:default:planetographic', 'Oberon 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-4:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-5:2009:spherical:planetographic', 'Spherical Miranda 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-5:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-5:2009:triaxial:planetographic', 'Triaxial Miranda 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-5:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-6:2009:default:planetographic', 'Cordelia 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-6:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-7:2009:default:planetographic', 'Ophelia 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-7:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-8:2009:default:planetographic', 'Bianca 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-8:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-9:2009:default:planetographic', 'Cressida 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-9:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-10:2009:default:planetographic', 'Desdemona 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-10:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-11:2009:default:planetographic', 'Juliet 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-11:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-12:2009:default:planetographic', 'Portia 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-12:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-13:2009:default:planetographic', 'Rosalind 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-13:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-14:2009:default:planetographic', 'Belinda 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-14:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-15:2009:default:planetographic', 'Puck 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-15:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-99:2009:spherical:planetographic', 'Spherical Neptune 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-99:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-99:2009:ellipsoidal:planetographic', 'Ellipsoidal Neptune 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-99:2009:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-1:2009:default:planetographic', 'Triton 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-1:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-2:2009:default:planetographic', 'Nereid 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-2:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-3:2009:default:planetographic', 'Naiad 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-3:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-4:2009:default:planetographic', 'Thalassa 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-4:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-5:2009:default:planetographic', 'Despina 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-5:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-6:2009:default:planetographic', 'Galatea 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-6:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-7:2009:spherical:planetographic', 'Spherical Larissa 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-7:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-7:2009:ellipsoidal:planetographic', 'Ellipsoidal Larissa 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-7:2009:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-8:2009:spherical:planetographic', 'Spherical Proteus 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-8:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-8:2009:triaxial:planetographic', 'Triaxial Proteus 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-8:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-9-99:2009:default:planetographic', 'Pluto 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-9-99:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-9-1:2009:default:planetographic', 'Charon 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-9-1:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000005:2009:default:planetographic', 'Effective Borrelly 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '1000005:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000005:2009:measured:planetographic', 'Measured Borrelly 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '1000005:2009:measured', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000036:2009:triaxial:planetographic', 'Triaxial Halley 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '1000036:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000093:2009:spherical:planetographic', 'Spherical Tempel 1 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '1000093:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000093:2009:default:planetographic', 'Biaxial Tempel 1 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '1000093:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000107:2009:spherical:planetographic', 'Spherical Wild 2 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '1000107:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000107:2009:triaxial:planetographic', 'Triaxial Wild 2 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '1000107:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('9511010:2009:spherical:planetographic', 'Spherical Gaspra 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '9511010:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('9511010:2009:triaxial:planetographic', 'Triaxial Gaspra 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '9511010:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2431010:2009:spherical:planetographic', 'Spherical Ida 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2431010:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2431010:2009:triaxial:planetographic', 'Triaxial Ida 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2431010:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000001:2009:spherical:planetographic', 'Spherical Ceres 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2000001:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000001:2009:ellipsoidal:planetographic', 'Ellipsoidal Ceres 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2000001:2009:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000004:2009:default:planetographic', 'Vesta 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2000004:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000021:2009:spherical:planetographic', 'Spherical Lutetia 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2000021:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000021:2009:triaxial:planetographic', 'Triaxial Lutetia 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2000021:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000216:2009:default:planetographic', 'Kleopatra 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2000216:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000433:2009:spherical:planetographic', 'Spherical Eros 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2000433:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000433:2009:triaxial:planetographic', 'Triaxial Eros 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2000433:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000511:2009:spherical:planetographic', 'Spherical Davida 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2000511:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000511:2009:triaxial:planetographic', 'Triaxial Davida 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2000511:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000253:2009:spherical:planetographic', 'Spherical Mathilde 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2000253:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000253:2009:triaxial:planetographic', 'Triaxial Mathilde 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2000253:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2002867:2009:spherical:planetographic', 'Spherical Steins 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2002867:2009:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2002867:2009:triaxial:planetographic', 'Triaxial Steins 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2002867:2009:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2004179:2009:default:planetographic', 'Toutatis 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2004179:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2025143:2009:default:planetographic', 'Itokawa 2009 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2025143:2009:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);






insert into ssbd_coordinatereferencesystem values ('0:2015:default:planetographic', 'Sun 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '0:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-1-99:2015:spherical:planetographic', 'Spherical Mercury 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-1-99:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-1-99:2015:ellipsoidal:planetographic', 'Ellipsoidal Mercury 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-1-99:2015:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-1-99:2015:triaxial:planetographic', 'Triaxial Mercury 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-1-99:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-2-99:2015:default:planetographic', 'Venus 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-2-99:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-3-99:2015:spherical:planetographic', 'Spherical Earth 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-3-99:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-3-99:2015:ellipsoidal:planetographic', 'Ellipsoidal Earth 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-3-99:2015:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-3-99:2015:ellipsoidal-iau:planetographic', 'Ellipsoidal Earth 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-3-99:2015:ellipsoidal-iau', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-3-1:2015:default:planetographic', 'Moon 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-3-1:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);

insert into ssbd_coordinatereferencesystem values ('sun-4-99:2015:spherical:planetographic', 'Spherical Mars 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-4-99:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-99:2015:ellipsoidal:planetographic', 'Ellipsoidal Mars 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-4-99:2015:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-99:2015:default:planetographic', 'Quadriaxial Mars 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-4-99:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-1:2015:spherical:planetographic', 'Spherical Phobos 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-4-1:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-1:2015:triaxial:planetographic', 'Triaxial Phobos 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-4-1:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-2:2015:spherical:planetographic', 'Spherical Deimos 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-4-2:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-4-2:2015:triaxial:planetographic', 'Triaxial Deimos 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-4-2:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);

insert into ssbd_coordinatereferencesystem values ('sun-5-99:2015:spherical:planetographic', 'Spherical Jupiter 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-99:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-99:2015:ellipsoidal:planetographic', 'Ellipsoidal Jupiter 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-99:2015:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-1:2015:spherical:planetographic', 'Spherical Io 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-1:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-1:2015:triaxial:planetographic', 'Triaxial Io 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-1:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-2:2015:spherical:planetographic', 'Spherical Europa 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-2:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-2:2015:triaxial:planetographic', 'Triaxial Europa 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-2:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-3:2015:default:planetographic', 'Ganymede 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-3:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-4:2015:default:planetographic', 'Callisto 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-4:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-5:2015:spherical:planetographic', 'Spherical Amalthea 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-5:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-5:2015:triaxial:planetographic', 'Triaxial Amalthea 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-5:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-6:2015:default:planetographic', 'Himalia 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-6:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-7:2015:default:planetographic', 'Elara 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-7:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-8:2015:default:planetographic', 'Pasiphae 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-8:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-9:2015:default:planetographic', 'Sinope 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-9:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-10:2015:default:planetographic', 'Lysithea 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-10:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-11:2015:default:planetographic', 'Carme 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-11:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-12:2015:default:planetographic', 'Ananke 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-12:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-13:2015:default:planetographic', 'Leda 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-13:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-14:2015:spherical:planetographic', 'Spherical Thebe 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-14:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-14:2015:triaxial:planetographic', 'Triaxial Thebe 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-14:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-15:2015:spherical:planetographic', 'Spherical Adrastea 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-15:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-15:2015:triaxial:planetographic', 'Triaxial Adrastea 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-15:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-16:2015:spherical:planetographic', 'Spherical Metis 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-16:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-5-16:2015:triaxial:planetographic', 'Triaxial Metis 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-5-16:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);

insert into ssbd_coordinatereferencesystem values ('sun-6-99:2015:spherical:planetographic', 'Spherical Saturn 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-99:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-99:2015:ellipsoidal:planetographic', 'Ellipsoidal Saturn 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-99:2015:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-1:2015:spherical:planetographic', 'Spherical Mimas 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-1:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-1:2015:triaxial:planetographic', 'Triaxial Mimas 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-1:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-2:2015:spherical:planetographic', 'Spherical Enceladus 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-2:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-2:2015:triaxial:planetographic', 'Triaxial Enceladus 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-2:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-3:2015:spherical:planetographic', 'Spherical Tethys 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-3:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-3:2015:triaxial:planetographic', 'Triaxial Tethys 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-3:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-4:2015:spherical:planetographic', 'Spherical Dione 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-4:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-4:2015:triaxial:planetographic', 'Triaxial Dione 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-4:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-5:2015:spherical:planetographic', 'Spherical Rhea 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-5:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-5:2015:triaxial:planetographic', 'Triaxial Rhea 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-5:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-6:2015:spherical:planetographic', 'Spherical Titan 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-6:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-6:2015:bestfit:planetographic', 'Best-fit Spherical Titan 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-6:2015:bestfit', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-6:2015:triaxial:planetographic', 'Triaxial Titan 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-6:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-7:2015:spherical:planetographic', 'Spherical Hyperion 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-7:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-7:2015:triaxial:planetographic', 'Triaxial Hyperion 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-7:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-8:2015:spherical:planetographic', 'Spherical Iapetus 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-8:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-8:2015:triaxial:planetographic', 'Triaxial Iapetus 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-8:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-9:2015:spherical:planetographic', 'Spherical Phoebe 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-9:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-9:2015:triaxial:planetographic', 'Triaxial Phoebe 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-9:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-10:2015:spherical:planetographic', 'Spherical Janus 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-10:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-10:2015:triaxial:planetographic', 'Triaxial Janus 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-10:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-11:2015:spherical:planetographic', 'Spherical Epimetheus 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-11:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-11:2015:triaxial:planetographic', 'Triaxial Epimetheus 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-11:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-12:2015:spherical:planetographic', 'Spherical Helene 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-12:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-12:2015:triaxial:planetographic', 'Triaxial Helene 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-12:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-13:2015:spherical:planetographic', 'Spherical Telesto 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-13:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-13:2015:triaxial:planetographic', 'Triaxial Telesto 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-13:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-14:2015:spherical:planetographic', 'Spherical Calypso 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-14:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-14:2015:triaxial:planetographic', 'Triaxial Calypso 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-14:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-15:2015:spherical:planetographic', 'Spherical Atlas 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-15:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-15:2015:triaxial:planetographic', 'Triaxial Atlas 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-15:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-16:2015:spherical:planetographic', 'Spherical Prometheus 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-16:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-16:2015:triaxial:planetographic', 'Triaxial Prometheus 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-16:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-17:2015:spherical:planetographic', 'Spherical Pandora 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-17:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-17:2015:triaxial:planetographic', 'Triaxial Pandora 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-17:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-18:2015:spherical:planetographic', 'Spherical Pan 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-18:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-18:2015:triaxial:planetographic', 'Triaxial Pan 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-18:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-32:2015:spherical:planetographic', 'Spherical Methone 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-32:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-32:2015:triaxial:planetographic', 'Triaxial Methone 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-32:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-33:2015:spherical:planetographic', 'Spherical Pallene 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-33:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-33:2015:triaxial:planetographic', 'Triaxial Pallene 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-33:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-34:2015:spherical:planetographic', 'Spherical Polydeuces 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-34:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-34:2015:triaxial:planetographic', 'Triaxial Polydeuces 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-34:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-35:2015:spherical:planetographic', 'Spherical Daphnis 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-35:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-35:2015:triaxial:planetographic', 'Triaxial Daphnis 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-35:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-49:2015:default:planetographic', 'Anthe 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-49:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-53:2015:spherical:planetographic', 'Spherical Aegaeon 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-53:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-6-53:2015:triaxial:planetographic', 'Triaxial Aegaeon 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-6-53:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);

insert into ssbd_coordinatereferencesystem values ('sun-7-99:2015:spherical:planetographic', 'Spherical Uranus 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-99:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-99:2015:ellipsoidal:planetographic', 'Ellipsoidal Uranus 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-99:2015:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-1:2015:spherical:planetographic', 'Spherical Ariel 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-1:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-1:2015:triaxial:planetographic', 'Triaxial Ariel 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-1:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-2:2015:default:planetographic', 'Umbriel 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-2:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-3:2015:default:planetographic', 'Titania 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-3:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-4:2015:default:planetographic', 'Oberon 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-4:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-5:2015:spherical:planetographic', 'Spherical Miranda 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-5:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-5:2015:triaxial:planetographic', 'Triaxial Miranda 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-5:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-6:2015:default:planetographic', 'Cordelia 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-6:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-7:2015:default:planetographic', 'Ophelia 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-7:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-8:2015:default:planetographic', 'Bianca 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-8:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-9:2015:default:planetographic', 'Cressida 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-9:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-10:2015:default:planetographic', 'Desdemona 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-10:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-11:2015:default:planetographic', 'Juliet 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-11:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-12:2015:default:planetographic', 'Portia 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-12:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-13:2015:default:planetographic', 'Rosalind 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-13:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-14:2015:default:planetographic', 'Belinda 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-14:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-7-15:2015:default:planetographic', 'Puck 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-7-15:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);

insert into ssbd_coordinatereferencesystem values ('sun-8-99:2015:spherical:planetographic', 'Spherical Neptune 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-99:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-99:2015:ellipsoidal:planetographic', 'Ellipsoidal Neptune 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-99:2015:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-1:2015:default:planetographic', 'Triton 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-1:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-2:2015:default:planetographic', 'Nereid 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-2:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-3:2015:default:planetographic', 'Naiad 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-3:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-4:2015:default:planetographic', 'Thalassa 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-4:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-5:2015:default:planetographic', 'Despina 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-5:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-6:2015:default:planetographic', 'Galatea 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-6:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-7:2015:spherical:planetographic', 'Spherical Larissa 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-7:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-7:2015:ellipsoidal:planetographic', 'Ellipsoidal Larissa 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-7:2015:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-8:2015:spherical:planetographic', 'Spherical Proteus 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-8:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-8-8:2015:triaxial:planetographic', 'Triaxial Proteus 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-8-8:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);

insert into ssbd_coordinatereferencesystem values ('sun-9-99:2015:default:planetographic', 'Pluto 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-9-99:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('sun-9-1:2015:default:planetographic', 'Charon 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-9-1:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000005:2015:spherical:planetographic', 'Spherical Borrelly 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '1000005:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000005:2015:measured:planetographic', 'Measured Borrelly 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '1000005:2015:measured', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000012:2015:spherical:planetographic', 'Spherical Churyumov-Gerasimenko 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '1000012:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000012:2015:triaxial:planetographic', 'Triaxial Churyumov-Gerasimenko 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '1000012:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000036:2015:default:planetographic', 'Halley 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '1000036:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000041:2015:spherical:planetographic', 'Spherical Hartley 2 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '1000041:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000041:2015:triaxial:planetographic', 'Triaxial Hartley 2 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '1000041:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000093:2015:spherical:planetographic', 'Spherical Tempel 1 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '1000093:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000093:2015:default:planetographic', 'Biaxial Tempel 1 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '1000093:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000107:2015:spherical:planetographic', 'Spherical Wild 2 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '1000107:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('1000107:2015:triaxial:planetographic', 'Triaxial Wild 2 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '1000107:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('9511010:2015:spherical:planetographic', 'Spherical Gaspra 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '9511010:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('9511010:2015:triaxial:planetographic', 'Triaxial Gaspra 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '9511010:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2431010:2015:spherical:planetographic', 'Spherical Ida 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2431010:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2431010:2015:triaxial:planetographic', 'Triaxial Ida 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2431010:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000001:2015:spherical:planetographic', 'Spherical Ceres 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2000001:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000001:2015:ellipsoidal:planetographic', 'Ellipsoidal Ceres 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2000001:2015:ellipsoidal', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000004:2015:default:planetographic', 'Vesta 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2000004:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000016:2015:spherical:planetographic', 'Spherical Psyche 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2000016:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000016:2015:triaxial:planetographic', 'Triaxial Psyche 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2000016:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000021:2015:spherical:planetographic', 'Spherical Lutetia 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2000021:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000021:2015:triaxial:planetographic', 'Triaxial Lutetia 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2000021:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('?2000052:2015:spherical:planetographic', 'Spherical 52 Europa 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '?2000052:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('?2000052:2015:triaxial:planetographic', 'Triaxial 52 Europa 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '?2000052:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000216:2015:default:planetographic', 'Kleopatra 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2000216:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000433:2015:spherical:planetographic', 'Spherical Eros 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2000433:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000433:2015:triaxial:planetographic', 'Triaxial Eros 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2000433:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000511:2015:spherical:planetographic', 'Spherical Davida 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2000511:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000511:2015:triaxial:planetographic', 'Triaxial Davida 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2000511:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000253:2015:spherical:planetographic', 'Spherical Mathilde 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2000253:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2000253:2015:triaxial:planetographic', 'Triaxial Mathilde 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2000253:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2002867:2015:spherical:planetographic', 'Spherical Steins 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2002867:2015:spherical', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2002867:2015:triaxial:planetographic', 'Triaxial Steins 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2002867:2015:triaxial', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2004179:2015:default:planetographic', 'Toutatis 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2004179:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);
insert into ssbd_coordinatereferencesystem values ('2025143:2015:default:planetographic', 'Itokawa 2015 planetographic 3D', 'planetographic 3D', 'ellipsoidal:3d:direct', '2025143:2015:default', null, null, null, null, 'planetology', null, null, 'IAU', '2000-01-01', '2020:1', 1, 0);



insert into ssbd_range values (1, -180., 'f', 180., 't', 'Typically used for earth longitudes.', null);
insert into ssbd_range values (2, 0., 't', 360., 'f', 'Typically used for planetary longitudes.', null);

-- planetocentric CRSs ranges

insert into ssbd_coordinatereferencesystemrange values ('sun-1-99:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-2-99:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-3-99:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-3-99:2000:ellipsoidal:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-99:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-99:2000:ellipsoidal:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-99:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-99:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-99:2000:ellipsoidal:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-99:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-99:2000:ellipsoidal:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-99:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-99:2000:ellipsoidal:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-99:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-99:2000:ellipsoidal:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-9-99:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);

insert into ssbd_coordinatereferencesystemrange values ('sun-3-1:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-1:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-1:2000:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-2:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-2:2000:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-16:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-16:2000:ellipsoidal:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-15:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-15:2000:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-5:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-5:2000:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-14:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-14:2000:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-1:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-1:2000:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-2:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-2:2000:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-3:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-3:2000:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-4:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-4:2000:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-13:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-6:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-10:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-7:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-12:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-11:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-8:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-9:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);

insert into ssbd_coordinatereferencesystemrange values ('sun-6-1:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-1:2000:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-2:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-2:2000:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-3:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-3:2000:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-4:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-5:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-6:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-7:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-7:2000:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-8:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-9:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-9:2000:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-10:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-10:2000:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-11:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-11:2000:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-12:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
-- TODO : rayon polaire d'Helene suspect, de même que l'axis_b
insert into ssbd_coordinatereferencesystemrange values ('sun-6-12:2000:ellipsoidal:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-13:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-13:2000:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-14:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-14:2000:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-15:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-15:2000:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-16:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-16:2000:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-17:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-17:2000:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-18:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);

insert into ssbd_coordinatereferencesystemrange values ('sun-6-32:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-33:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-34:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);

insert into ssbd_coordinatereferencesystemrange values ('sun-7-1:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-1:2000:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-2:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-3:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-4:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-5:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-5:2000:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-6:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-7:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-8:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-9:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-10:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-11:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-12:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-13:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-14:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-15:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);


insert into ssbd_coordinatereferencesystemrange values ('sun-8-1:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-2:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-3:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-4:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-5:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-6:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-7:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-7:2000:ellipsoidal:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-8:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-8:2000:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);


insert into ssbd_coordinatereferencesystemrange values ('sun-9-1:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);

insert into ssbd_coordinatereferencesystemrange values ('9511010:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('9511010:2000:measured:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('9511010:2000:bestfit:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2431010:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2431010:2000:measured:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2431010:2000:bestfit:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000001:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000001:2000:ellipsoidal:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000021:2000:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000021:2000:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000216:2000:measured:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000433:2000:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000433:2000:bestfit:planetocentric', 2, 'spherical:3d:direct', 2, null, null);


insert into ssbd_coordinatereferencesystemrange values ('0:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-1-99:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-2-99:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-3-99:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-3-99:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-3-1:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-99:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-99:2009:ellipsoidal:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-99:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-1:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-1:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-2:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-2:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-99:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-99:2009:ellipsoidal:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-1:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-1:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-2:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-2:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-3:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-4:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-5:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-5:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-6:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-7:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-8:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-9:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-10:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-11:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-12:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-13:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-14:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-14:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-15:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-15:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-16:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-16:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-99:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-99:2009:ellipsoidal:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-1:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-1:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-2:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-2:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-3:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-3:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-4:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-4:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-5:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-5:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-6:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-6:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-7:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-7:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-8:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-8:2009:ellipsoidal:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-9:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-9:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-10:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-10:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-11:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-11:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-12:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-12:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-13:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-13:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-14:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-14:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-15:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-15:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-16:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-16:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-17:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-17:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-18:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-18:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-32:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-33:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-33:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-34:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-34:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-35:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-35:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-49:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-99:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-99:2009:ellipsoidal:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-1:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-1:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-2:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-3:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-4:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-5:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-5:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-6:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-7:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-8:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-9:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-10:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-11:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-12:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-13:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-14:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-15:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-99:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-99:2009:ellipsoidal:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-1:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-2:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-3:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-4:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-5:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-6:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-7:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-7:2009:ellipsoidal:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-8:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-8:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-9-99:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-9-1:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000005:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000005:2009:measured:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000036:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000093:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000093:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000107:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000107:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('9511010:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('9511010:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2431010:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2431010:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000001:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000001:2009:ellipsoidal:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000004:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000021:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000021:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000216:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000433:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000433:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000511:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000511:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000253:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000253:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2002867:2009:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2002867:2009:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2004179:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2025143:2009:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);






insert into ssbd_coordinatereferencesystemrange values ('0:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-1-99:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-1-99:2015:ellipsoidal:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-1-99:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-2-99:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-3-99:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-3-99:2015:ellipsoidal:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-3-99:2015:ellipsoidal-iau:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-3-1:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);

insert into ssbd_coordinatereferencesystemrange values ('sun-4-99:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-99:2015:ellipsoidal:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-99:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-1:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-1:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-2:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-2:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);

insert into ssbd_coordinatereferencesystemrange values ('sun-5-99:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-99:2015:ellipsoidal:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-1:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-1:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-2:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-2:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-3:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-4:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-5:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-5:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-6:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-7:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-8:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-9:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-10:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-11:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-12:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-13:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-14:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-14:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-15:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-15:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-16:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-16:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);

insert into ssbd_coordinatereferencesystemrange values ('sun-6-99:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-99:2015:ellipsoidal:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-1:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-1:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-2:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-2:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-3:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-3:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-4:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-4:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-5:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-5:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-6:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-6:2015:bestfit:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-6:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-7:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-7:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-8:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-8:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-9:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-9:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-10:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-10:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-11:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-11:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-12:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-12:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-13:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-13:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-14:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-14:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-15:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-15:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-16:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-16:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-17:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-17:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-18:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-18:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-32:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-32:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-33:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-33:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-34:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-34:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-35:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-35:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-49:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-53:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-53:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);

insert into ssbd_coordinatereferencesystemrange values ('sun-7-99:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-99:2015:ellipsoidal:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-1:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-1:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-2:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-3:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-4:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-5:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-5:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-6:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-7:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-8:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-9:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-10:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-11:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-12:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-13:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-14:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-15:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);

insert into ssbd_coordinatereferencesystemrange values ('sun-8-99:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-99:2015:ellipsoidal:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-1:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-2:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-3:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-4:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-5:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-6:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-7:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-7:2015:ellipsoidal:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-8:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-8:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);

insert into ssbd_coordinatereferencesystemrange values ('sun-9-99:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-9-1:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000005:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000005:2015:measured:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000012:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000012:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000036:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000041:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000041:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000093:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000093:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000107:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000107:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('9511010:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('9511010:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2431010:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2431010:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000001:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000001:2015:ellipsoidal:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000004:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000016:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000016:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000021:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000021:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('?2000052:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('?2000052:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000216:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000433:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000433:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000511:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000511:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000253:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000253:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2002867:2015:spherical:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2002867:2015:triaxial:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2004179:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2025143:2015:default:planetocentric', 2, 'spherical:3d:direct', 2, null, null);

-- planetographic CRSs ranges

insert into ssbd_coordinatereferencesystemrange values ('sun-1-99:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-2-99:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-3-99:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-3-99:2000:ellipsoidal:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-99:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-99:2000:ellipsoidal:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-99:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-99:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-99:2000:ellipsoidal:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-99:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-99:2000:ellipsoidal:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-99:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-99:2000:ellipsoidal:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-99:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-99:2000:ellipsoidal:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-9-99:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);

insert into ssbd_coordinatereferencesystemrange values ('sun-3-1:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-1:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-1:2000:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-2:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-2:2000:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-16:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-16:2000:ellipsoidal:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-15:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-15:2000:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-5:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-5:2000:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-14:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-14:2000:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-1:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-1:2000:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-2:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-2:2000:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-3:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-3:2000:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-4:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-4:2000:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-13:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-6:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-10:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-7:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-12:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-11:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-8:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-9:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);

insert into ssbd_coordinatereferencesystemrange values ('sun-6-1:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-1:2000:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-2:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-2:2000:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-3:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-3:2000:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-4:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-5:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-6:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-7:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-7:2000:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-8:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-9:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-9:2000:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-10:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-10:2000:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-11:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-11:2000:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-12:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
-- TODO : rayon polaire d'Helene suspect, de même que l'axis_b
insert into ssbd_coordinatereferencesystemrange values ('sun-6-12:2000:ellipsoidal:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-13:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-13:2000:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-14:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-14:2000:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-15:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-15:2000:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-16:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-16:2000:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-17:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-17:2000:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-18:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);

insert into ssbd_coordinatereferencesystemrange values ('sun-6-32:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-33:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-34:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);

insert into ssbd_coordinatereferencesystemrange values ('sun-7-1:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-1:2000:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-2:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-3:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-4:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-5:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-5:2000:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-6:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-7:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-8:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-9:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-10:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-11:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-12:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-13:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-14:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-15:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);


insert into ssbd_coordinatereferencesystemrange values ('sun-8-1:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-2:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-3:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-4:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-5:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-6:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-7:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-7:2000:ellipsoidal:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-8:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-8:2000:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);


insert into ssbd_coordinatereferencesystemrange values ('sun-9-1:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);

insert into ssbd_coordinatereferencesystemrange values ('9511010:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('9511010:2000:measured:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('9511010:2000:bestfit:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2431010:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2431010:2000:measured:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2431010:2000:bestfit:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000001:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000001:2000:ellipsoidal:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000021:2000:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000021:2000:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000216:2000:measured:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000433:2000:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000433:2000:bestfit:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);


insert into ssbd_coordinatereferencesystemrange values ('0:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-1-99:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-2-99:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-3-99:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-3-99:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-3-1:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-99:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-99:2009:ellipsoidal:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-99:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-1:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-1:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-2:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-2:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-99:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-99:2009:ellipsoidal:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-1:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-1:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-2:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-2:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-3:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-4:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-5:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-5:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-6:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-7:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-8:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-9:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-10:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-11:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-12:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-13:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-14:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-14:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-15:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-15:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-16:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-16:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-99:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-99:2009:ellipsoidal:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-1:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-1:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-2:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-2:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-3:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-3:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-4:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-4:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-5:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-5:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-6:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-6:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-7:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-7:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-8:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-8:2009:ellipsoidal:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-9:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-9:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-10:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-10:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-11:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-11:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-12:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-12:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-13:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-13:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-14:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-14:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-15:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-15:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-16:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-16:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-17:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-17:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-18:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-18:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-32:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-33:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-33:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-34:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-34:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-35:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-35:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-49:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-99:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-99:2009:ellipsoidal:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-1:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-1:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-2:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-3:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-4:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-5:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-5:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-6:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-7:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-8:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-9:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-10:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-11:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-12:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-13:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-14:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-15:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-99:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-99:2009:ellipsoidal:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-1:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-2:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-3:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-4:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-5:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-6:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-7:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-7:2009:ellipsoidal:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-8:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-8:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-9-99:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-9-1:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000005:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000005:2009:measured:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000036:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000093:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000093:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000107:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000107:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('9511010:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('9511010:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2431010:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2431010:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000001:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000001:2009:ellipsoidal:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000004:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000021:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000021:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000216:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000433:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000433:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000511:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000511:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000253:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000253:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2002867:2009:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2002867:2009:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2004179:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2025143:2009:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);






insert into ssbd_coordinatereferencesystemrange values ('0:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-1-99:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-1-99:2015:ellipsoidal:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-1-99:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-2-99:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-3-99:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-3-99:2015:ellipsoidal:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-3-99:2015:ellipsoidal-iau:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-3-1:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);

insert into ssbd_coordinatereferencesystemrange values ('sun-4-99:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-99:2015:ellipsoidal:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-99:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-1:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-1:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-2:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-4-2:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);

insert into ssbd_coordinatereferencesystemrange values ('sun-5-99:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-99:2015:ellipsoidal:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-1:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-1:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-2:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-2:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-3:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-4:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-5:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-5:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-6:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-7:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-8:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-9:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-10:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-11:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-12:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-13:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-14:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-14:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-15:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-15:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-16:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-5-16:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);

insert into ssbd_coordinatereferencesystemrange values ('sun-6-99:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-99:2015:ellipsoidal:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-1:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-1:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-2:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-2:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-3:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-3:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-4:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-4:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-5:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-5:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-6:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-6:2015:bestfit:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-6:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-7:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-7:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-8:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-8:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-9:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-9:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-10:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-10:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-11:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-11:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-12:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-12:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-13:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-13:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-14:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-14:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-15:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-15:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-16:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-16:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-17:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-17:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-18:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-18:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-32:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-32:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-33:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-33:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-34:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-34:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-35:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-35:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-49:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-53:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-6-53:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);

insert into ssbd_coordinatereferencesystemrange values ('sun-7-99:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-99:2015:ellipsoidal:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-1:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-1:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-2:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-3:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-4:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-5:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-5:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-6:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-7:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-8:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-9:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-10:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-11:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-12:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-13:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-14:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-7-15:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);

insert into ssbd_coordinatereferencesystemrange values ('sun-8-99:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-99:2015:ellipsoidal:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-1:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-2:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-3:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-4:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-5:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-6:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-7:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-7:2015:ellipsoidal:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-8:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-8-8:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);

insert into ssbd_coordinatereferencesystemrange values ('sun-9-99:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('sun-9-1:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000005:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000005:2015:measured:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000012:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000012:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000036:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000041:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000041:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000093:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000093:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000107:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('1000107:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('9511010:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('9511010:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2431010:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2431010:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000001:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000001:2015:ellipsoidal:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000004:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000016:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000016:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000021:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000021:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('?2000052:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('?2000052:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000216:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000433:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000433:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000511:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000511:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000253:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000253:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2002867:2015:spherical:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2002867:2015:triaxial:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2004179:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2025143:2015:default:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);


commit;
