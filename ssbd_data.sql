-- title: SSBD (Solar System Body Database) data
--
--
--
-- author: Samuel Andrés

begin;

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
insert into ssbd_ellipsoid values ('2000:sun-1-99:default', 'sun-1-99', 'Mercury 2000 IAU', 2439700.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-2-99:default', 'sun-2-99', 'Venus 2000 IAU', 6051800.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-3-99:spherical', 'sun-3-99', 'Spherical Earth 2000 IAU', 6371000.00, 10., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-3-99:ellipsoidal', 'sun-3-99', 'Ellipsoidal Earth 2000 IAU', 6378140.00, 10., 9001, null, 6356750.00, 10.,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-4-99:spherical', 'sun-4-99', 'Spherical Mars 2000 IAU', 3389500.00, 200., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-4-99:ellipsoidal', 'sun-4-99', 'Ellipsoidal Mars 2000 IAU', 3396190.00, 100., 9001, null, 3376200.00, 100.,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-4-99:default', 'sun-4-99', 'Quadriaxial Mars 2000 IAU', 3396190.00, 100., 9001, null, 3373190.00, 100.,
 null, null, 3379210.00, 100.,
 'This ellipsoid is considered quadriaxial even if subplanetary and along orbit equatorial axes are equal.',
 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-5-99:spherical', 'sun-5-99', 'Spherical Jupiter 2000 IAU', 69911000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-5-99:ellipsoidal', 'sun-5-99', 'Ellipsoidal Jupiter 2000 IAU', 71492000.00,  4000., 9001, null, 66854000.00, 10000.,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-6-99:spherical', 'sun-6-99', 'Spherical Saturn 2000 IAU', 58232000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-6-99:ellipsoidal', 'sun-6-99', 'Ellipsoidal Saturn 2000 IAU', 60268000.00,  4000., 9001, null, 54364000.00, 10000.,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-7-99:spherical', 'sun-7-99', 'Spherical Uranus 2000 IAU', 25362000.00, 7000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-7-99:ellipsoidal', 'sun-7-99', 'Ellipsoidal Uranus 2000 IAU', 25559000.00,  4000., 9001, null, 24973000.00, 20000.,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-8-99:spherical', 'sun-8-99', 'Spherical Neptune 2000 IAU', 24622000.00, 19000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-8-99:ellipsoidal', 'sun-8-99', 'Ellipsoidal Neptune 2000 IAU', 24764000.00,  15000., 9001, null, 24341000.00, 30000.,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-9-99:spherical', 'sun-9-99', 'Spherical Pluto 2000 IAU', 1195000.00,  5000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');

insert into ssbd_ellipsoid values ('2000:sun-3-1:spherical', 'sun-3-1', 'Spherical Moon 2000 IAU', 1737400.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-4-1:spherical', 'sun-4-1', 'Spherical Phobos 2000 IAU', 11100.00, 150., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-4-1:triaxial', 'sun-4-1', 'Triaxial Phobos 2000 IAU', 13400.00, null, 9001, null, 9200.00, null,
 11200.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-4-2:spherical', 'sun-4-2', 'Spherical Deimos 2000 IAU', 6200.00, 180., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-4-2:triaxial', 'sun-4-2', 'Triaxial Deimos 2000 IAU', 7500.00, null, 9001, null, 5200.00, null,
 6100.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-5-16:spherical', 'sun-5-16', 'Spherical Metis 2000 IAU', 21500., 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-5-16:ellipsoidal', 'sun-5-16', 'Ellipsoidal Metis 2000 IAU', 30000., null, 9001, null, 20000., null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-5-15:spherical', 'sun-5-15', 'Spherical Adrastea 2000 IAU', 8200., 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-5-15:triaxial', 'sun-5-15', 'Triaxial Adrastea 2000 IAU', 10000., null, 9001, null, 7000., null,
 8000., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-5-5:spherical', 'sun-5-5', 'Spherical Amalthea 2000 IAU', 83500., 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-5-5:triaxial', 'sun-5-5', 'Triaxial Amalthea 2000 IAU', 125000., null, 9001, null, 64000., null,
 73000., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-5-14:spherical', 'sun-5-14', 'Spherical Thebe 2000 IAU', 49300., 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-5-14:triaxial', 'sun-5-14', 'Triaxial Thebe 2000 IAU', 58000., null, 9001, null, 42000., null,
 49000., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-5-1:spherical', 'sun-5-1', 'Spherical Io 2000 IAU', 1821460., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-5-1:triaxial', 'sun-5-1', 'Triaxial Io 2000 IAU', 1829400., null, 9001, null, 1815700., null,
 1819300., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-5-2:spherical', 'sun-5-2', 'Spherical Europa 2000 IAU', 1562090., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-5-2:triaxial', 'sun-5-2', 'Triaxial Europa 2000 IAU', 1564130., null, 9001, null, 1560930., null,
 1561230., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-5-3:spherical', 'sun-5-3', 'Spherical Ganymede 2000 IAU', 2632345., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-5-3:triaxial', 'sun-5-3', 'Triaxial Ganymede 2000 IAU', 2632400., null, 9001, null, 2632350., null,
 2632290., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-5-4:spherical', 'sun-5-4', 'Spherical Callisto 2000 IAU', 2409300., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-5-4:triaxial', 'sun-5-4', 'Triaxial Callisto 2000 IAU', 2409400., null, 9001, null, 2409300., null,
 2409200., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-5-13:default', 'sun-5-13', 'Leda 2000 IAU', 5000., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-5-6:default', 'sun-5-6', 'Himalia 2000 IAU', 85000., 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-5-10:default', 'sun-5-10', 'Lysithea 2000 IAU', 12000., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-5-7:default', 'sun-5-7', 'Elara 2000 IAU', 40000., 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-5-12:default', 'sun-5-12', 'Ananke 2000 IAU', 10000., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-5-11:default', 'sun-5-11', 'Carme 2000 IAU', 15000., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-5-8:default', 'sun-5-8', 'Pasiphae 2000 IAU', 18000., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-5-9:default', 'sun-5-9', 'Sinope 2000 IAU', 14000., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');

insert into ssbd_ellipsoid values ('2000:sun-6-1:spherical', 'sun-6-1', 'Spherical Mimas 2000 IAU', 198600.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-6-1:triaxial', 'sun-6-1', 'Triaxial Mimas 2000 IAU', 209100.00, 500., 9001, null, 191400.00, 500.,
 196200.00, 500., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-6-2:spherical', 'sun-6-2', 'Spherical Enceladus 2000 IAU', 249400.00, 300., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-6-2:triaxial', 'sun-6-2', 'Triaxial Enceladus 2000 IAU', 256300.00, 300., 9001, null, 244600.00, 500.,
 247300.00, 300., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-6-3:spherical', 'sun-6-3', 'Spherical Tethys 2000 IAU', 529800.00, 1500., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-6-3:triaxial', 'sun-6-3', 'Triaxial Tethys 2000 IAU', 535600.00, 1200., 9001, null, 525800.00, 1200.,
 528200.00, 1200., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-6-4:default', 'sun-6-4', 'Dione 2000 IAU', 560000.00, 5000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-6-5:default', 'sun-6-5', 'Rhea 2000 IAU', 764000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-6-6:default', 'sun-6-6', 'Titan 2000 IAU', 2575000.00, 2000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-6-7:spherical', 'sun-6-7', 'Spherical Hyperion 2000 IAU', 133000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-6-7:triaxial', 'sun-6-7', 'Triaxial Hyperion 2000 IAU', 164000.00, 8000., 9001, null, 107000.00, 8000.,
 130000.00, 8000., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-6-8:default', 'sun-6-8', 'Iapetus 2000 IAU', 718000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-6-9:spherical', 'sun-6-9', 'Spherical Phoebe 2000 IAU', 110000.00, 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-6-9:triaxial', 'sun-6-9', 'Triaxial Phoebe 2000 IAU', 115000.00, 10000., 9001, null, 105000.00, 10000.,
 110000.00, 10000., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-6-10:spherical', 'sun-6-10', 'Spherical Janus 2000 IAU', 88800.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-6-10:triaxial', 'sun-6-10', 'Triaxial Janus 2000 IAU', 97000.00, null, 9001, null, 77000.00, null,
 95000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-6-11:spherical', 'sun-6-11', 'Spherical Epimetheus 2000 IAU', 59500.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-6-11:triaxial', 'sun-6-11', 'Triaxial Epimetheus 2000 IAU', 69000.00, null, 9001, null, 55000.00, null,
 55000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-6-12:spherical', 'sun-6-12', 'Spherical Helene 2000 IAU', 16000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
-- TODO : rayon polaire d'Helene suspect, de même que l'axis_b
insert into ssbd_ellipsoid values ('2000:sun-6-12:ellipsoidal', 'sun-6-12', 'Ellipsoidal Helene 2000 IAU', 17500.00, 2500., 9001, null, 700.00, null,
 17500.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-6-13:spherical', 'sun-6-13', 'Spherical Telesto 2000 IAU', 11000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-6-13:triaxial', 'sun-6-13', 'Triaxial Telesto 2000 IAU', 15000.00, 2500., 9001, null, 7500.00, 2500.,
 12500.00, 5000., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-6-14:spherical', 'sun-6-14', 'Spherical Calypso 2000 IAU', 9500.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-6-14:triaxial', 'sun-6-14', 'Triaxial Calypso 2000 IAU', 15000.00, null, 9001, null, 8000.00, null,
 8000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-6-15:spherical', 'sun-6-15', 'Spherical Atlas 2000 IAU', 16000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-6-15:triaxial', 'sun-6-15', 'Triaxial Atlas 2000 IAU', 18500.00, null, 9001, null, 13500.00, null,
 17200.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-6-16:spherical', 'sun-6-16', 'Spherical Prometheus 2000 IAU', 50100.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-6-16:triaxial', 'sun-6-16', 'Triaxial Prometheus 2000 IAU', 74000.00, null, 9001, null, 34000.00, null,
 50000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-6-17:spherical', 'sun-6-17', 'Spherical Pandora 2000 IAU', 41900.00, 2000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-6-17:triaxial', 'sun-6-17', 'Triaxial Pandora 2000 IAU', 55000.00, null, 9001, null, 31000.00, null,
 44000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-6-18:default', 'sun-6-18', 'Pan 2000 IAU', 10000., 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');

insert into ssbd_ellipsoid values ('2000:sun-6-32:default', 'sun-6-32', 'Methone 2000 IAU', 1600.00, null, 9001, null, null, null,
 null, null, null, null,
 null, null);
insert into ssbd_ellipsoid values ('2000:sun-6-33:default', 'sun-6-33', 'Pallene 2000 IAU', 2500.00, null, 9001, null, null, null,
 null, null, null, null,
 null, null);
insert into ssbd_ellipsoid values ('2000:sun-6-34:default', 'sun-6-34', 'Polydeuces 2000 IAU', 1300.00, null, 9001, null, null, null,
 null, null, null, null,
 null, null);

insert into ssbd_ellipsoid values ('2000:sun-7-1:spherical', 'sun-7-1', 'Spherical Ariel 2000 IAU', 578900.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-7-1:triaxial', 'sun-7-1', 'Triaxial Ariel 2000 IAU', 581100.00, 900., 9001, null, 577700.00, 1000.,
 577900.00, 600., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-7-2:default', 'sun-7-2', 'Umbriel 2000 IAU', 584700.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-7-3:default', 'sun-7-3', 'Titania 2000 IAU', 788900.00, 1800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-7-4:default', 'sun-7-4', 'Oberon 2000 IAU', 761400.00, 2600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-7-5:spherical', 'sun-7-5', 'Spherical Miranda 2000 IAU', 235800.00, 700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-7-5:triaxial', 'sun-7-5', 'Triaxial Miranda 2000 IAU', 240400.00, 600., 9001, null, 232900.00, 1200.,
 234200.00, 900., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-7-6:default', 'sun-7-6', 'Cordelia 2000 IAU', 13000.00, 2000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-7-7:default', 'sun-7-7', 'Ophelia 2000 IAU', 15000.00, 2000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-7-8:default', 'sun-7-8', 'Bianca 2000 IAU', 21000.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-7-9:default', 'sun-7-9', 'Cressida 2000 IAU', 31000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-7-10:default', 'sun-7-10', 'Desdemona 2000 IAU', 27000.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-7-11:default', 'sun-7-11', 'Juliet 2000 IAU', 42000.00, 5000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-7-12:default', 'sun-7-12', 'Portia 2000 IAU', 54000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-7-13:default', 'sun-7-13', 'Rosalind 2000 IAU', 27000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-7-14:default', 'sun-7-14', 'Belinda 2000 IAU', 33000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-7-15:default', 'sun-7-15', 'Puck 2000 IAU', 77000.00, 5000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');


insert into ssbd_ellipsoid values ('2000:sun-8-1:default', 'sun-8-1', 'Triton 2000 IAU', 1352600.00, 2400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-8-2:default', 'sun-8-2', 'Nereid 2000 IAU', 170000.00, 25000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-8-3:default', 'sun-8-3', 'Naiad 2000 IAU', 29000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-8-4:default', 'sun-8-4', 'Thalassa 2000 IAU', 40000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-8-5:default', 'sun-8-5', 'Despina 2000 IAU', 74000.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-8-6:default', 'sun-8-6', 'Galatea 2000 IAU', 79000.00, 12000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-8-7:spherical', 'sun-8-7', 'Spherical Larissa 2000 IAU', 96000.00, 7000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-8-7:ellipsoidal', 'sun-8-7', 'Ellipsoidal Larissa 2000 IAU', 104000.00, null, 9001, null, 89000.00, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-8-8:spherical', 'sun-8-8', 'Spherical Proteus 2000 IAU', 208000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:sun-8-8:triaxial', 'sun-8-8', 'Triaxial Proteus 2000 IAU', 218000.00, null, 9001, null, 201000.00, null,
 208000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');


insert into ssbd_ellipsoid values ('2000:sun-9-1:default', 'sun-9-1', 'Charon 2000 IAU', 593000.00, 13000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');

insert into ssbd_ellipsoid values ('2000:9511010:spherical', 'sun-9511010', 'Spherical Gaspra 2000 IAU', 6100.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:9511010:measured', 'sun-9511010', 'Measured Ellipsoid Gaspra 2000 IAU', 9100.00, null, 9001, null, 4400.00, null,
 5200.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:9511010:bestfit', 'sun-9511010', 'Best-fit Ellipsoid Gaspra 2000 IAU', 9100.00, null, 9001, null, 4700.00, null,
 5200.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:2431010:spherical', 'sun-2431010', 'Spherical Ida 2000 IAU', 15650.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:2431010:measured', 'sun-2431010', 'Measured Ida 2000 IAU', 26800.00, null, 9001, null, 7600.00, null,
 12000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:2431010:bestfit', 'sun-2431010', 'Best-fit Ellipsoid Ida 2000 IAU', 30000.00, null, 9001, null, 9300.00, null,
 12600.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:2000001:spherical', 'sun-2000001', 'Spherical Ceres 2000 IAU', 476200.00, null, 9001, null, null, null,
 null, null, null, null,
 null, null);
insert into ssbd_ellipsoid values ('2000:2000001:ellipsoidal', 'sun-2000001', 'Ellipsoidal Ceres 2000 IAU', 487300.00, null, 9001, null, 454700.00, null,
 null, null, null, null,
 null, null);
insert into ssbd_ellipsoid values ('2000:2000021:spherical', 'sun-2000021', 'Spherical Lutetia 2000 IAU', 52500.00, null, 9001, null, null, null,
 null, null, null, null,
 null, null);
insert into ssbd_ellipsoid values ('2000:2000021:triaxial', 'sun-2000021', 'Triaxial Lutetia 2000 IAU', 62000.00, null, 9001, null, 46500.00, null,
 50500.00, null, null, null,
 null, null);
insert into ssbd_ellipsoid values ('2000:2000216:measured', 'sun-2000216', 'Measured Kleopatra 2000 IAU', 108500.00, null, 9001, null, 40500.00, null,
 47000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:2000433:default', 'sun-2000433', 'Mean Spherical Eros 2000 IAU', 7311.00, 10., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:2000433:bestfit', 'sun-2000433', 'Best-fit Spherical Eros 2000 IAU', 9236., 100., 9001, null, 7311.00, null,
 7311.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');


insert into ssbd_ellipsoid values ('2009:0:default', 'sun-99', 'Sun 2009 IAU', 696000000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-1-99:default', 'sun-1-99', 'Mercury 2009 IAU', 2439700.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-2-99:default', 'sun-2-99', 'Venus 2009 IAU', 6051800.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-3-99:spherical', 'sun-3-99', 'Spherical Earth 2009 IAU', 6371008.40, .1, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-3-99:default', 'sun-3-99', 'Ellipsoidial Earth 2009 IAU', 6378136.60, .1, 9001, null, 6356751.90, .1,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-3-1:default', 'sun-3-1', 'Moon 2009 IAU', 1737400.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-4-99:spherical', 'sun-4-99', 'Spherical Mars 2009 IAU', 3389500.00, 200., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-4-99:ellipsoidal', 'sun-4-99', 'Ellipsoidal Mars 2009 IAU', 3396190.00, 100., 9001, null, 3376200.00, 100.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-4-99:default', 'sun-4-99', 'Quadriaxial Mars 2009 IAU', 3396190.00, 100., 9001, null, 3373190.00, 100.,
 null, null, 3379210.00, 100.,
 'This ellipsoid is considered quadriaxial even if subplanetary and along orbit equatorial axes are equal.',
 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-4-1:spherical', 'sun-4-1', 'Spherical Phobos 2009 IAU', 11080.00, 40., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-4-1:triaxial', 'sun-4-1', 'Triaxial Phobos 2009 IAU', 13000.00, null, 9001, null, 9100.00, null,
 11400.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-4-2:spherical', 'sun-4-2', 'Spherical Deimos 2009 IAU', 6200.00, 250., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-4-2:triaxial', 'sun-4-2', 'Triaxial Deimos 2009 IAU', 7800.00, null, 9001, null, 5100.00, null,
 6000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-5-99:spherical', 'sun-5-99', 'Spherical Jupiter 2009 IAU', 69911000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-5-99:ellipsoidal', 'sun-5-99', 'Ellipsoidal Jupiter 2009 IAU', 71492000.00, 4000., 9001, null, 66854000.00, 10000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-5-1:spherical', 'sun-5-1', 'Spherical Io 2009 IAU', 1821490.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-5-1:triaxial', 'sun-5-1', 'Triaxial Io 2009 IAU', 1829400.00, null, 9001, null, 1815700.00, null,
 1819400.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-5-2:spherical', 'sun-5-2', 'Spherical Europa 2009 IAU', 1560800.00, 300., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-5-2:triaxial', 'sun-5-2', 'Triaxial Europa 2009 IAU', 1562600.00, null, 9001, null, 1560950.00, null,
 1560300.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-5-3:default', 'sun-5-3', 'Ganymede 2009 IAU', 2631200.00, 1700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-5-4:default', 'sun-5-4', 'Callisto 2009 IAU', 2410300.00, 1500., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-5-5:spherical', 'sun-5-5', 'Spherical Amalthea 2009 IAU', 83500.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-5-5:triaxial', 'sun-5-5', 'Ellipsoidal Amalthea 2009 IAU', 125000.00, null, 9001, null, 64000.00, null,
 73000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-5-6:default', 'sun-5-6', 'Himalia 2009 IAU', 85000.00, 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-5-7:default', 'sun-5-7', 'Elara 2009 IAU', 40000.00, 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-5-8:default', 'sun-5-8', 'Pasiphae 2009 IAU', 18000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-5-9:default', 'sun-5-9', 'Sinope 2009 IAU', 14000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-5-10:default', 'sun-5-10', 'Lysithea 2009 IAU', 12000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-5-11:default', 'sun-5-11', 'Carme 2009 IAU', 15000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-5-12:default', 'sun-5-12', 'Ananke 2009 IAU', 10000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-5-13:default', 'sun-5-13', 'Leda 2009 IAU', 5000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-5-14:spherical', 'sun-5-14', 'Spherical Thebe 2009 IAU', 49300.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-5-14:triaxial', 'sun-5-14', 'Triaxial Thebe 2009 IAU', 58000.00, null, 9001, null, 42000.00, null,
 49000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-5-15:spherical', 'sun-5-15', 'Spherical Adrastea 2009 IAU', 8200.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-5-15:triaxial', 'sun-5-15', 'Ellipsoidal Adrastea 2009 IAU', 10000.00, null, 9001, null, 7000.00, null,
 8000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-5-16:spherical', 'sun-5-16', 'Spherical Metis 2009 IAU', 21500.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-5-16:triaxial', 'sun-5-16', 'Ellipsoidal Metis 2009 IAU', 30000.00, null, 9001, null, 17000.00, null,
 20000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-99:spherical', 'sun-6-99', 'Spherical Saturn 2009 IAU', 58232000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-99:ellipsoidal', 'sun-6-99', 'Ellipsoidal Saturn 2009 IAU', 60268000.00, 4000., 9001, null, 54364000.00, 10000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-1:spherical', 'sun-6-1', 'Spherical Mimas 2009 IAU', 198200.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-1:triaxial', 'sun-6-1', 'Triaxial Mimas 2009 IAU', 207800.00, 500., 9001, null, 190600.00, 300.,
 196700.00, 500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-2:spherical', 'sun-6-2', 'Spherical Enceladus 2009 IAU', 252100.00, 200., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-2:triaxial', 'sun-6-2', 'Triaxial Enceladus 2009 IAU', 256600.00, 600., 9001, null, 248300.00, 200.,
 251400.00, 200., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-3:spherical', 'sun-6-3', 'Spherical Tethys 2009 IAU', 531000.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-3:triaxial', 'sun-6-3', 'Triaxial Tethys 2009 IAU', 538400.00, 300., 9001, null, 526300.00, 600.,
 528300.00, 1100., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-4:spherical', 'sun-6-4', 'Spherical Dione 2009 IAU', 561400.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-4:triaxial', 'sun-6-4', 'Triaxial Dione 2009 IAU', 563400.00, 600., 9001, null, 559600.00, 400.,
 561300.00, 500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-5:spherical', 'sun-6-5', 'Spherical Rhea 2009 IAU', 763500.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-5:triaxial', 'sun-6-5', 'Triaxial Rhea 2009 IAU', 765000.00, 700., 9001, null, 762400.00, 600.,
 763100.00, 600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-6:spherical', 'sun-6-6', 'Spherical Titan 2009 IAU', 2574730.00, 90., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-6:triaxial', 'sun-6-6', 'Triaxial Titan 2009 IAU', 2575150.00, 20., 9001, null, 2574470.00, 60.,
 2574780.00, 60., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-7:default', 'sun-6-7', 'Shperical Hyperion 2009 IAU', 135000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-7:triaxial', 'sun-6-7', 'Triaxial Hyperion 2009 IAU', 180100.00, 2000., 9001, null, 102700.00, 4500.,
 133000.00, 4500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-8:spherical', 'sun-6-8', 'Spherical Iapetus 2009 IAU', 734300.00, 2800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-8:ellipsoidal', 'sun-6-8', 'Ellipsoidal Iapetus 2009 IAU', 745700.00, 2900., 9001, null, 712100.00, 1600.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-9:spherical', 'sun-6-9', 'Spherical Phoebe 2009 IAU', 106500.00, 700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-9:triaxial', 'sun-6-9', 'Triaxial Phoebe 2009 IAU', 109400.00, 1400., 9001, null, 101800.00, 300.,
 108500.00, 600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-10:spherical', 'sun-6-10', 'Spherical Janus 2009 IAU', 89500.00, 1400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-10:triaxial', 'sun-6-10', 'Triaxial Janus 2009 IAU', 101500.00, 1900., 9001, null, 76300.00, 1200.,
 92500.00, 1200., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-11:spherical', 'sun-6-11', 'Spherical Epimetheus 2009 IAU', 58100.00, 1.8, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-11:triaxial', 'sun-6-11', 'Triaxial Epimetheus 2009 IAU', 64900.00, 2000., 9001, null, 53100.00, 700.,
 57000.00, 3700., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-12:spherical', 'sun-6-12', 'Spherical Helene 2009 IAU', 17600.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-12:triaxial', 'sun-6-12', 'Triaxial Helene 2009 IAU', 21700.00, 500., 9001, null, 13000.00, 300.,
 19100.00, 300., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-13:spherical', 'sun-6-13', 'Spherical Telesto 2009 IAU', 12400.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-13:triaxial', 'sun-6-13', 'Triaxial Telesto 2009 IAU', 16300.00, 500., 9001, null, 10000.00, 300.,
 11800.00, 300., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-14:spherical', 'sun-6-14', 'Spherical Calypso 2009 IAU', 10700.00, 700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-14:triaxial', 'sun-6-14', 'Triaxial Calypso 2009 IAU', 15100.00, 300., 9001, null, 7000.00, 600.,
 11500.00, 2200., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-15:spherical', 'sun-6-15', 'Spherical Atlas 2009 IAU', 15100.00, 900., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-15:triaxial', 'sun-6-15', 'Triaxial Atlas 2009 IAU', 20400.00, 1200., 9001, null, 9400.00, 800.,
 17700.00, 700., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-16:spherical', 'sun-6-16', 'Spherical Prometheus 2009 IAU', 43100.00, 2700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-16:triaxial', 'sun-6-16', 'Triaxial Prometheus 2009 IAU', 67800.00, 3100., 9001, null, 29700.00, 1900.,
 39700.00, 3100., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-17:spherical', 'sun-6-17', 'Spherical Pandora 2009 IAU', 40700.00, 1500., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-17:triaxial', 'sun-6-17', 'Triaxial Pandora 2009 IAU', 52000.00, 1800., 9001, null, 32000.00, 900.,
 40500.00, 2000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-18:spherical', 'sun-6-18', 'Spherical Pan 2009 IAU', 14100.00, 1300., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-18:triaxial', 'sun-6-18', 'Triaxial Pan 2009 IAU', 17200.00, 1900., 9001, null, 10400.00, 840.,
 15700.00, 1300., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-32:default', 'sun-6-32', 'Methone 2009 IAU', 1600.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-33:spherical', 'sun-6-33', 'Spherical Pallene 2009 IAU', 2500.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-33:triaxial', 'sun-6-33', 'Triaxial Pallene 2009 IAU', 2900.00, 600., 9001, null, 2000.00, 400.,
 2800.00, 800., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-34:spherical', 'sun-6-34', 'Spherical Polydeuces 2009 IAU', 1300.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-34:triaxial', 'sun-6-34', 'Triaxial Polydeuces 2009 IAU', 1500.00, 600., 9001, null, 1000.00, 200.,
 1200.00, 400., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-35:spherical', 'sun-6-35', 'Spherical Daphnis 2009 IAU', 3800.00, 800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-35:triaxial', 'sun-6-35', 'Triaxial Daphnis 2009 IAU', 4300.00, 700., 9001, null, 3200.00, 800.,
 4100.00, 900., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-6-49:default', 'sun-6-49', 'Anthe 2009 IAU', 1000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-7-99:spherical', 'sun-7-99', 'Spherical Uranus 2009 IAU', 25362000.00, 7000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-7-99:ellipsoidal', 'sun-7-99', 'Ellipsoidal Uranus 2009 IAU', 25559000.00, 4000., 9001, null, 24973000.00, 20000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-7-1:spherical', 'sun-7-1', 'Spherical Ariel 2009 IAU', 578900.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-7-1:triaxial', 'sun-7-1', 'Triaxial Ariel 2009 IAU', 581100.00, 900., 9001, null, 577700.00, 1000.,
 577900.00, 600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-7-2:default', 'sun-7-2', 'Umbriel 2009 IAU', 584700.00, 2800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-7-3:default', 'sun-7-3', 'Titania 2009 IAU', 788900.00, 1800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-7-4:default', 'sun-7-4', 'Oberon 2009 IAU', 761400.00, 2600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-7-5:spherical', 'sun-7-5', 'Spherical Miranda 2009 IAU', 235800.00, 700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-7-5:triaxial', 'sun-7-5', 'Triaxial Miranda 2009 IAU', 240400.00, 600., 9001, null, 232900.00, 1200.,
 234200.00, 900., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-7-6:default', 'sun-7-6', 'Cordelia 2009 IAU', 13000.00, 2000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-7-7:default', 'sun-7-7', 'Ophelia 2009 IAU', 15000.00, 2000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-7-8:default', 'sun-7-8', 'Bianca 2009 IAU', 21000.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-7-9:default', 'sun-7-9', 'Cressida 2009 IAU', 31000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-7-10:default', 'sun-7-10', 'Desdemona 2009 IAU', 27000.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-7-11:default', 'sun-7-11', 'Juliet 2009 IAU', 42000.00, 5000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-7-12:default', 'sun-7-12', 'Portia 2009 IAU', 54000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-7-13:default', 'sun-7-13', 'Rosalind 2009 IAU', 27000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-7-14:default', 'sun-7-14', 'Belinda 2009 IAU', 33000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-7-15:default', 'sun-7-15', 'Puck 2009 IAU', 77000.00, 5000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-8-99:spherical', 'sun-8-99', 'Spherical Neptune 2009 IAU', 24622000.00, 19000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-8-99:ellipsoidal', 'sun-8-99', 'Ellipsoidal Neptune 2009 IAU', 24764000.00, 15000., 9001, null, 24341000.00, 30000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-8-1:default', 'sun-8-1', 'Triton 2009 IAU', 1352600.00, 2400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-8-2:default', 'sun-8-2', 'Nereid 2009 IAU', 170000.00, 25000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-8-3:default', 'sun-8-3', 'Naiad 2009 IAU', 29000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-8-4:default', 'sun-8-4', 'Thalassa 2009 IAU', 40000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-8-5:default', 'sun-8-5', 'Despina 2009 IAU', 74000.00, 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-8-6:default', 'sun-8-6', 'Galatea 2009 IAU', 79000.00, 12000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-8-7:spherical', 'sun-8-7', 'Spherical Larissa 2009 IAU', 96000.00, 7000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-8-7:ellipsoidal', 'sun-8-7', 'Ellipsoidal Larissa 2009 IAU', 104000.00, null, 9001, null, 89000.00, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-8-8:spherical', 'sun-8-8', 'Spherical Proteus 2009 IAU', 208000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-8-8:triaxial', 'sun-8-8', 'Triaxial Proteus 2009 IAU', 218000.00, null, 9001, null, 201000.00, null,
 208000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-9-99:default', 'sun-9-99', 'Pluto 2009 IAU', 1195000.00, 5000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:sun-9-1:default', 'sun-9-1', 'Charon 2009 IAU', 605000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:1000005:default', 'sun-1000005', 'Effective Borrelly 2009 IAU', 4220.00, 50., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:1000005:measured', 'sun-1000005', 'Measured Borrelly 2009 IAU', 3500.00, 200., 9001, null, null, null,
  null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:1000036:triaxial', 'sun-1000036', 'Triaxial Halley 2009 IAU', 8000.00, 500., 9001, null, 4000.00, 250.,
 4000.00, 250., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:1000093:spherical', 'sun-1000093', 'Spherical Tempel 1 2009 IAU', 3000.00, 100., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:1000093:default', 'sun-1000093', 'Biaxial Tempel 1 2009 IAU', 3700.00, null, 9001, null, 2500.00, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:1000107:spherical', 'sun-1000107', 'Spherical Wild 2 2009 IAU', 1975.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:1000107:triaxial', 'sun-1000107', 'Triaxial Wild 2 2009 IAU', 2700.00, null, 9001, null, 1500.00, null,
 1900.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:9511010:spherical', 'sun-9511010', 'Spherical Gaspra 2009 IAU', 6100.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:9511010:triaxial', 'sun-9511010', 'Triaxial Gaspra 2009 IAU', 9100.00, null, 9001, null, 4400.00, null,
 5200.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2431010:spherical', 'sun-2431010', 'Spherical Ida 2009 IAU', 15650.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2431010:triaxial', 'sun-2431010', 'Triaxial Ida 2009 IAU', 26800.00, null, 9001, null, 7600.00, null,
 12000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2000001:spherical', 'sun-2000001', 'Spherical Ceres 2009 IAU', 476200.00, 1700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2000001:ellipsoidal', 'sun-2000001', 'Ellipsoidal Ceres 2009 IAU', 487300.00, 1800., 9001, null, 454700.00, 1600.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2000004:default', 'sun-2000004', 'Vesta 2009 IAU', 289000.00, 5000., 9001, null, 229000.00, 5000.,
 280000.00, 5000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2000021:spherical', 'sun-2000021', 'Spherical Lutetia 2009 IAU', 52500.00, 2500., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2000021:triaxial', 'sun-2000021', 'Triaxial Lutetia 2009 IAU', 62000.00, 2500., 9001, null, 46500.00, 6500.,
 50500.00, 2000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2000216:default', 'sun-2000216', 'Kleopatra 2009 IAU', 108500.00, null, 9001, null, 40500.00, null,
 47000.00, null, null, null,
 null, null);
insert into ssbd_ellipsoid values ('2009:2000433:spherical', 'sun-2000433', 'Spherical Eros 2009 IAU', 8450.00, 20., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2000433:triaxial', 'sun-2000433', 'Triaxial Eros 2009 IAU', 17000.00, null, 9001, null, 5500.00, null,
 5500.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2000511:spherical', 'sun-2000511', 'Spherical Davida 2009 IAU', 150000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2000511:triaxial', 'sun-2000511', 'Triaxial Davida 2009 IAU', 180000.00, null, 9001, null, 127000.00, null,
 147000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2000253:spherical', 'sun-2000253', 'Spherical Mathilde 2009 IAU', 26500.00, 1300., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2000253:triaxial', 'sun-2000253', 'Triaxial Mathilde 2009 IAU', 33000.00, null, 9001, null, 23000.00, null,
 24000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2002867:spherical', 'sun-2002867', 'Spherical Steins 2009 IAU', 2700.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2002867:triaxial', 'sun-2002867', 'Triaxial Steins 2009 IAU', 3240.00, null, 9001, null, 2040.00, null,
 2730.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2004179:default', 'sun-2004179', 'Toutatis 2009 IAU', 2130.00, null, 9001, null, 850.00, null,
 1015.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2025143:default', 'sun-2025143', 'Itokawa 2009 IAU', 535.00, null, 9001, null, 209.00, null,
 294.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');






insert into ssbd_ellipsoid values ('2015:0:default', 'sun-99', 'Sun 2015 IAU', 695700000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-1-99:spherical', 'sun-1-99', 'Spherical Mercury 2015 IAU', 2439400.00, 100., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-1-99:ellipsoidal', 'sun-1-99', 'Ellipsoidal Mercury 2015 IAU', 2440530.00, 40., 9001, null, 2438260.00, 40.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-1-99:triaxial', 'sun-1-99', 'Triaxial Mercury 2015 IAU', 2440530.00, 40., 9001, null, 2438260.00, 40.,
 2439280.00, 40., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-2-99:default', 'sun-2-99', 'Venus 2015 IAU', 6051800.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-3-99:spherical', 'sun-3-99', 'Spherical Earth 2015 IAU', 6371008.40, .1, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-3-99:ellipsoidal', 'sun-3-99', 'Ellipsoidal Earth 2015 IAU', 6378136.60, .1, 9001, null, 6356751.90, .1,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-3-99:ellipsoidal-iau', 'sun-3-99', 'Ellipsoidal Earth 2015 IAU Resolution', 6378100., null, 9001, null, 6356800., null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-3-1:default', 'sun-3-1', 'Moon 2015 IAU', 1737400.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');

insert into ssbd_ellipsoid values ('2015:sun-4-99:spherical', 'sun-4-99', 'Spherical Mars 2015 IAU', 3389500.00, 200., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-4-99:ellipsoidal', 'sun-4-99', 'Ellipsoidal Mars 2015 IAU', 3396190.00, 10., 9001, null, 3376200.00, 10.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-4-99:default', 'sun-4-99', 'Quadriaxial Mars 2015 IAU', 3396190.00, null, 9001, null, 3373190.00, 10.,
 null, null, 3379210., 10.,
 'This ellipsoid is considered quadriaxial even if subplanetary and along orbit equatorial axes are equal.',
 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-4-1:spherical', 'sun-4-1', 'Spherical Phobos 2015 IAU', 11080.00, 40., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-4-1:triaxial', 'sun-4-1', 'Triaxial Phobos 2015 IAU', 13000.00, null, 9001, null, 9100.00, null,
 11400.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-4-2:spherical', 'sun-4-2', 'Spherical Deimos 2015 IAU', 6200.00, 250., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-4-2:triaxial', 'sun-4-2', 'Triaxial Deimos 2015 IAU', 7800.00, null, 9001, null, 5100.00, null,
 6000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');

insert into ssbd_ellipsoid values ('2015:sun-5-99:spherical', 'sun-5-99', 'Spherical Jupiter 2015 IAU', 69911000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-5-99:ellipsoidal', 'sun-5-99', 'Ellipsoidal Jupiter 2015 IAU', 71492000.00, 4000., 9001, null, 66854000.00, 10000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-5-1:spherical', 'sun-5-1', 'Spherical Io 2015 IAU', 1821490.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-5-1:triaxial', 'sun-5-1', 'Triaxial Io 2015 IAU', 1829400.00, null, 9001, null, 1815700.00, null,
 1819400.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-5-2:spherical', 'sun-5-2', 'Spherical Europa 2015 IAU', 1560800.00, 300., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-5-2:triaxial', 'sun-5-2', 'Triaxial Europa 2015 IAU', 1562600.00, null, 9001, null, 1559500.00, null,
 1560300.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-5-3:default', 'sun-5-3', 'Ganymede 2015 IAU', 2631200.00, 1700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-5-4:default', 'sun-5-4', 'Callisto 2015 IAU', 2410300.00, 1500., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-5-5:spherical', 'sun-5-5', 'Spherical Amalthea 2015 IAU', 83500.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-5-5:triaxial', 'sun-5-5', 'Triaxial Amalthea 2015 IAU', 125000.00, null, 9001, null, 64000.00, null,
 73000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-5-6:default', 'sun-5-6', 'Himalia 2015 IAU', 85000.00, 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-5-7:default', 'sun-5-7', 'Elara 2015 IAU', 40000.00, 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-5-8:default', 'sun-5-8', 'Pasiphae 2015 IAU', 18000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-5-9:default', 'sun-5-9', 'Sinope 2015 IAU', 14000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-5-10:default', 'sun-5-10', 'Lysithea 2015 IAU', 12000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-5-11:default', 'sun-5-11', 'Carme 2015 IAU', 15000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-5-12:default', 'sun-5-12', 'Ananke 2015 IAU', 10000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-5-13:default', 'sun-5-13', 'Leda 2015 IAU', 5000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-5-14:spherical', 'sun-5-14', 'Spherical Thebe 2015 IAU', 49300.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-5-14:triaxial', 'sun-5-14', 'Triaxial Thebe 2015 IAU', 58000.00, null, 9001, null, 42000.00, null,
 49000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-5-15:spherical', 'sun-5-15', 'Spherical Adrastea 2015 IAU', 8200.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-5-15:triaxial', 'sun-5-15', 'Triaxial Adrastea 2015 IAU', 10000.00, null, 9001, null, 7000.00, null,
 8000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-5-16:spherical', 'sun-5-16', 'Spherical Metis 2015 IAU', 21500.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-5-16:triaxial', 'sun-5-16', 'Triaxial Metis 2015 IAU', 30000.00, null, 9001, null, 17000.00, null,
 20000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');

insert into ssbd_ellipsoid values ('2015:sun-6-99:spherical', 'sun-6-99', 'Spherical Saturn 2015 IAU', 58232000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-99:ellipsoidal', 'sun-6-99', 'Ellipsoidal Saturn 2015 IAU', 60268000.00, 4000., 9001, null, 54364000.00, 10000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-1:spherical', 'sun-6-1', 'Spherical Mimas 2015 IAU', 198200.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-1:triaxial', 'sun-6-1', 'Triaxial Mimas 2015 IAU', 207800.00, 500., 9001, null, 190600.00, 300.,
 196700.00, 500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-2:spherical', 'sun-6-2', 'Spherical Enceladus 2015 IAU', 252100.00, 200., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-2:triaxial', 'sun-6-2', 'Triaxial Enceladus 2015 IAU', 256600.00, 600., 9001, null, 248300.00, 200.,
 251400.00, 200., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-3:spherical', 'sun-6-3', 'Spherical Tethys 2015 IAU', 531000.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-3:triaxial', 'sun-6-3', 'Triaxial Tethys 2015 IAU', 538400.00, 300., 9001, null, 526300.00, 600.,
 528300.00, 1100., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-4:spherical', 'sun-6-4', 'Spherical Dione 2015 IAU', 561400.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-4:triaxial', 'sun-6-4', 'Triaxial Dione 2015 IAU', 563400.00, 600., 9001, null, 559600.00, 400.,
 561300.00, 500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-5:spherical', 'sun-6-5', 'Spherical Rhea 2015 IAU', 763500.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-5:triaxial', 'sun-6-5', 'Triaxial Rhea 2015 IAU', 765000.00, 700., 9001, null, 762400.00, 600.,
 763100.00, 600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-6:spherical', 'sun-6-6', 'Spherical Titan 2015 IAU', 2575000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-6:bestfit', 'sun-6-6', 'Best-fit Spherical Titan 2015 IAU', 2574730.00, 90., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-6:triaxial', 'sun-6-6', 'Triaxial Titan 2015 IAU', 2575150.00, 20., 9001, null, 2574470.00, 60.,
 2574780.00, 60., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-7:spherical', 'sun-6-7', 'Spherical Hyperion 2015 IAU', 135000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-7:triaxial', 'sun-6-7', 'Triaxial Hyperion 2015 IAU', 180100.00, 2000., 9001, null, 102700.00, 4500.,
 133000.00, 4500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-8:spherical', 'sun-6-8', 'Spherical Iapetus 2015 IAU', 734300.00, 2800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-8:triaxial', 'sun-6-8', 'Triaxial Iapetus 2015 IAU', 745700.00, 2900., 9001, null, 712100.00, 1600.,
 745700.00, 2900., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-9:spherical', 'sun-6-9', 'Spherical Phoebe 2015 IAU', 106500.00, 700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-9:triaxial', 'sun-6-9', 'Triaxial Phoebe 2015 IAU', 109400.00, 1400., 9001, null, 101800.00, 300.,
 108500.00, 600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-10:spherical', 'sun-6-10', 'Spherical Janus 2015 IAU', 89200.00, 800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-10:triaxial', 'sun-6-10', 'Triaxial Janus 2015 IAU', 101700.00, 1600., 9001, null, 76300.00, 400.,
 93000.00, 700., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-11:spherical', 'sun-6-11', 'Spherical Epimetheus 2015 IAU', 58200.00, 1200., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-11:triaxial', 'sun-6-11', 'Triaxial Epimetheus 2015 IAU', 64900.00, 1300., 9001, null, 53000.00, 500.,
 57300.00, 2500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-12:spherical', 'sun-6-12', 'Spherical Helene 2015 IAU', 18000.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-12:triaxial', 'sun-6-12', 'Triaxial Helene 2015 IAU', 22500.00, 500., 9001, null, 13300.00, 200.,
 19600.00, 300., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-13:spherical', 'sun-6-13', 'Spherical Telesto 2015 IAU', 12400.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-13:triaxial', 'sun-6-13', 'Triaxial Telesto 2015 IAU', 16300.00, 500., 9001, null, 9800.00, 300.,
 11800.00, 300., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-14:spherical', 'sun-6-14', 'Spherical Calypso 2015 IAU', 9600.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-14:triaxial', 'sun-6-14', 'Triaxial Calypso 2015 IAU', 15300.00, 300., 9001, null, 6300.00, 600.,
 9300.00, 2200., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-15:spherical', 'sun-6-15', 'Spherical Atlas 2015 IAU', 15100.00, 800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-15:triaxial', 'sun-6-15', 'Triaxial Atlas 2015 IAU', 20500.00, 900., 9001, null, 9400.00, 800.,
 17800.00, 700., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-16:spherical', 'sun-6-16', 'Spherical Prometheus 2015 IAU', 43100.00, 1200., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-16:triaxial', 'sun-6-16', 'Triaxial Prometheus 2015 IAU', 68200.00, 800., 9001, null, 28200.00, 800.,
 41600.00, 1800., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-17:spherical', 'sun-6-17', 'Spherical Pandora 2015 IAU', 40600.00, 1500., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-17:triaxial', 'sun-6-17', 'Triaxial Pandora 2015 IAU', 52200.00, 1800., 9001, null, 31500.00, 900.,
 40800.00, 2000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-18:spherical', 'sun-6-18', 'Spherical Pan 2015 IAU', 14000.00, 1200., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-18:triaxial', 'sun-6-18', 'Triaxial Pan 2015 IAU', 17200.00, 1700., 9001, null, 10400.00, 900.,
 15400.00, 1200., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-32:spherical', 'sun-6-32', 'Spherical Methone 2015 IAU', 1450.00, 30., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-32:triaxial', 'sun-6-32', 'Triaxial Methone 2015 IAU', 1940.00, 20., 9001, null, 1210.00, 20.,
 1290.00, 40., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-33:spherical', 'sun-6-33', 'Spherical Pallene 2015 IAU', 2230.00, 70., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-33:triaxial', 'sun-6-33', 'Triaxial Pallene 2015 IAU', 2880.00, 70., 9001, null, 1800.00, 70.,
 2080.00, 70., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-34:spherical', 'sun-6-34', 'Spherical Polydeuces 2015 IAU', 1300.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-34:triaxial', 'sun-6-34', 'Triaxial Polydeuces 2015 IAU', 1500.00, 600., 9001, null, 1000.00, 200.,
 1200.00, 400., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-35:spherical', 'sun-6-35', 'Spherical Daphnis 2015 IAU', 3800.00, 800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-35:triaxial', 'sun-6-35', 'Triaxial Daphnis 2015 IAU', 4600.00, 700., 9001, null, 2800.00, 800.,
 4500.00, 900., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-49:default', 'sun-6-49', 'Anthe 2015 IAU', 500.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-53:spherical', 'sun-6-53', 'Spherical Aegaeon 2015 IAU', 330.00, 60., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-6-53:triaxial', 'sun-6-53', 'Triaxial Aegaeon 2015 IAU', 700.00, 50., 9001, null, 200.00, 80.,
 250.00, 60., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');

insert into ssbd_ellipsoid values ('2015:sun-7-99:spherical', 'sun-7-99', 'Spherical Uranus 2015 IAU', 25362000.00, 7000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-7-99:ellipsoidal', 'sun-7-99', 'Ellipsoidal Uranus 2015 IAU', 25559000.00, 4000., 9001, null, 24973000.00, 20000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-7-1:spherical', 'sun-7-1', 'Spherical Ariel 2015 IAU', 578900.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-7-1:triaxial', 'sun-7-1', 'Triaxial Ariel 2015 IAU', 581100.00, 900., 9001, null, 577700.00, 100.,
 577900.00, 600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-7-2:default', 'sun-7-2', 'Umbriel 2015 IAU', 584700.00, 2800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-7-3:default', 'sun-7-3', 'Titania 2015 IAU', 788900.00, 1800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-7-4:default', 'sun-7-4', 'Oberon 2015 IAU', 761400.00, 2600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-7-5:spherical', 'sun-7-5', 'Spherical Miranda 2015 IAU', 235800.00, 700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-7-5:triaxial', 'sun-7-5', 'Triaxial Miranda 2015 IAU', 240400.00, 600., 9001, null, 232900.00, 1200.,
 234200.00, 900., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-7-6:default', 'sun-7-6', 'Cordelia 2015 IAU', 13000.00, 2000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-7-7:default', 'sun-7-7', 'Ophelia 2015 IAU', 15000.00, 2000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-7-8:default', 'sun-7-8', 'Bianca 2015 IAU', 21000.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-7-9:default', 'sun-7-9', 'Cressida 2015 IAU', 31000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-7-10:default', 'sun-7-10', 'Desdemona 2015 IAU', 27000.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-7-11:default', 'sun-7-11', 'Juliet 2015 IAU', 42000.00, 5000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-7-12:default', 'sun-7-12', 'Portia 2015 IAU', 54000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-7-13:default', 'sun-7-13', 'Rosalind 2015 IAU', 27000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-7-14:default', 'sun-7-14', 'Belinda 2015 IAU', 33000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-7-15:default', 'sun-7-15', 'Puck 2015 IAU', 77000.00, 51900., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');

insert into ssbd_ellipsoid values ('2015:sun-8-99:spherical', 'sun-8-99', 'Spherical Neptune 2015 IAU', 24622000.00, 19000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-8-99:ellipsoidal', 'sun-8-99', 'Ellipsoidal Neptune 2015 IAU', 24764000.00, 15000., 9001, null, 24341000.00, 30000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-8-1:default', 'sun-8-1', 'Triton 2015 IAU', 1352600.00, 2400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-8-2:default', 'sun-8-2', 'Nereid 2015 IAU', 170000.00, 25000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-8-3:default', 'sun-8-3', 'Naiad 2015 IAU', 29000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-8-4:default', 'sun-8-4', 'Thalassa 2015 IAU', 40000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-8-5:default', 'sun-8-5', 'Despina 2015 IAU', 74000.00, 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-8-6:default', 'sun-8-6', 'Galatea 2015 IAU', 79000.00, 12000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-8-7:spherical', 'sun-8-7', 'Spherical Larissa 2015 IAU', 96000.00, 7000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-8-7:ellipsoidal', 'sun-8-7', 'Ellipsoidal Larissa 2015 IAU', 104000.00, null, 9001, null, 89000.00, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-8-8:spherical', 'sun-8-8', 'Spherical Proteus 2015 IAU', 208000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-8-8:triaxial', 'sun-8-8', 'Triaxial Proteus 2015 IAU', 218000.00, null, 9001, null, 201000.00, null,
 208000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');

insert into ssbd_ellipsoid values ('2015:sun-9-99:default', 'sun-9-99', 'Pluto 2015 IAU', 1188300.00, 1600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:sun-9-1:default', 'sun-9-1', 'Charon 2015 IAU', 606000.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:1000005:spherical', 'sun-1000005', 'Spherical Borrelly 2015 IAU', 4220.00, 50., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:1000005:measured', 'sun-1000005', 'Measured Borrelly 2015 IAU', 3500.00, 200., 9001, null, -1, null,
  null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:1000012:spherical', 'sun-1000012', 'Spherical Churyumov-Gerasimenko 2015 IAU', 1650.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:1000012:triaxial', 'sun-1000012', 'Triaxial Churyumov-Gerasimenko 2015 IAU', 2400.00, null, 9001, null, 1200.00, null,
 1550.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:1000036:default', 'sun-1000036', 'Halley 2015 IAU', 8000.00, 500., 9001, null, 4000.00, 250.,
 4000.00, 250., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:1000041:spherical', 'sun-1000041', 'Spherical Hartley 2 2015 IAU', 580.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:1000041:triaxial', 'sun-1000041', 'Triaxial Hartley 2 2015 IAU', 340.00, null, 9001, null, 1160.00, null,
 1160.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:1000093:spherical', 'sun-1000093', 'Spherical Tempel 1 2015 IAU', 3000.00, 100., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:1000093:default', 'sun-1000093', 'Biaxial Tempel 1 2015 IAU', 3700.00, null, 9001, null, 2500., null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:1000107:spherical', 'sun-1000107', 'Spherical Wild 2 2015 IAU', 1975.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:1000107:triaxial', 'sun-1000107', 'Triaxial Wild 2 2015 IAU', 2700.00, null, 9001, null, 1500.00, null,
 1900.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:9511010:spherical', 'sun-9511010', 'Spherical Gaspra 2015 IAU', 6100.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:9511010:triaxial', 'sun-9511010', 'Triaxial Gaspra 2015 IAU', 9100.00, null, 9001, null, 4400.00, null,
 5200.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2431010:spherical', 'sun-2431010', 'Spherical Ida 2015 IAU', 15650.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2431010:triaxial', 'sun-2431010', 'Triaxial Ida 2015 IAU', 26800.00, null, 9001, null, 7600.00, null,
 12000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2000001:spherical', 'sun-2000001', 'Spherical Ceres 2015 IAU', 470000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2000001:ellipsoidal', 'sun-2000001', 'Ellipsoidal Ceres 2015 IAU', 487300.00, null, 9001, null, 446000.00, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2000004:default', 'sun-2000004', 'Vesta 2015 IAU', 289000.00, 5000., 9001, null, 229000.00, 5000.,
 280000.00, 5000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2000016:spherical', 'sun-2000016', 'Spherical Psyche 2015 IAU', 113000.00, 23000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2000016:triaxial', 'sun-2000016', 'Triaxial Psyche 2015 IAU', 139500.00, 13950., 9001, null, 94500.00, 9450.,
 116000.0, 11600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2000021:spherical', 'sun-2000021', 'Spherical Lutetia 2015 IAU', 52500.00, 2500., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2000021:triaxial', 'sun-2000021', 'Triaxial Lutetia 2015 IAU', 62000.00, 2500., 9001, null, 46500.00, 6500.,
 50500.00, 2000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:?2000052:spherical', 'sun-?2000052', 'Spherical 52 Europa 2015 IAU', 157500.00, 7000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:?2000052:triaxial', 'sun-?2000052', 'Triaxial 52 Europa 2015 IAU', 189500.00, 16000., 9001, null, 124500.00, 10000.,
 165000.00, 8000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2000216:default', 'sun-2000216', 'Kleopatra 2015 IAU', 108500.00, null, 9001, null, 40500.00, null,
 47000.00, null, null, null,
 null, null);
insert into ssbd_ellipsoid values ('2015:2000433:spherical', 'sun-2000433', 'Spherical Eros 2015 IAU', 8450.00, 20., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2000433:triaxial', 'sun-2000433', 'Triaxial Eros 2015 IAU', 17000.00, null, 9001, null, 5500.00, null,
 5500.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2000511:spherical', 'sun-2000511', 'Spherical Davida 2015 IAU', 150000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2000511:triaxial', 'sun-2000511', 'Triaxial Davida 2015 IAU', 180000.00, null, 9001, null, 127000.00, null,
 147000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2000253:spherical', 'sun-2000253', 'Spherical Mathilde 2015 IAU', 26500.00, 1300., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2000253:triaxial', 'sun-2000253', 'Triaxial Mathilde 2015 IAU', 33000.00, null, 9001, null, 23000.00, null,
 24000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2002867:spherical', 'sun-2002867', 'Spherical Steins 2015 IAU', 2700.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2002867:triaxial', 'sun-2002867', 'Triaxial Steins 2015 IAU', 3240.00, null, 9001, null, 2040.00, null,
 2730.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2004179:default', 'sun-2004179', 'Toutatis 2015 IAU', 2130.00, null, 9001, null, 850.00, null,
 1015.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2025143:default', 'sun-2025143', 'Itokawa 2015 IAU', 268.00, null, 9001, null, 104.00, null,
 147.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');

-- on construit un identifiant de système de méridiens origines de la manière suivante :
-- <identifiant de corps>:<identifiant du système pour le corps>
--
-- exemple : 'sun-1-99:crust' identifie le système de méridiens origines attachés à la croûte de Mercure
insert into ssbd_primemeridiansystem values ('sun-1-99', 'crust', 'Mercury crust system', 0.004264857, 0.000000364, 1035, null, null);
insert into ssbd_primemeridiansystem values ('sun-2-99', 'crust', 'Venus crust system', null, 0., 1035, null, null);
insert into ssbd_primemeridiansystem values ('sun-4-99', 'crust', 'Mars crust system', null, 0., 1035, null, null);
insert into ssbd_primemeridiansystem values ('sun-5-99', '1', 'System I Jupiter', null, 0., 1035, 'Refers to the mean atmospheric equatorial rotation.', null);
insert into ssbd_primemeridiansystem values ('sun-5-99', '2', 'System II Jupiter', null, 0., 1035, 'Refers to the mean atmospheric rotation north of the south component of the north equatorial belt, and south of the north component of the south equatorial belt.', null);
insert into ssbd_primemeridiansystem values ('sun-5-99', '3', 'System III Jupiter', null, 0., 1035, 'Refers to the magnetic field rotation.', null);
insert into ssbd_primemeridiansystem values ('sun-6-99', '1', 'System I Saturn', null, 0., 1035, 'Refers to the mean atmospheric equatorial rotation.', null);
insert into ssbd_primemeridiansystem values ('sun-6-99', '2', 'System II Saturn', null, 0., 1035, 'Refers to the mean atmospheric rotation north of the south component of the north equatorial belt, and south of the north component of the south equatorial belt.', null);
insert into ssbd_primemeridiansystem values ('sun-6-99', '3', 'System III Saturn', null, 0., 1035, 'Refers to the magnetic field rotation.', null);
insert into ssbd_primemeridiansystem values ('sun-7-99', '1', 'System I Uranus', null, 0., 1035, 'Refers to the mean atmospheric equatorial rotation.', null);
insert into ssbd_primemeridiansystem values ('sun-7-99', '2', 'System II Uranus', null, 0., 1035, 'Refers to the mean atmospheric rotation north of the south component of the north equatorial belt, and south of the north component of the south equatorial belt.', null);
insert into ssbd_primemeridiansystem values ('sun-7-99', '3', 'System III Uranus', null, 0., 1035, 'Refers to the magnetic field rotation.', null);
insert into ssbd_primemeridiansystem values ('sun-8-99', '2', 'System II Neptune', null, 0., 1035, 'Refers to the rotation of optically observed features in the Neptunian atmosphere.', null);

-- on construit un identifiant de méridien origine de la manière suivante :
-- <identifiant de sytème de méridien origine>:<identifiant de méridien origine dans le système>
--
-- exemple 'sun-1-99:crust:hun_kal' identifie le méridien origine 'Hun Kal' du système de méridiens origines attachés à
-- la croûte de Mercure
insert into ssbd_primemeridian values ('sun-1-99', 'crust', 'hun_kal', 'Hun Kal Mercury Meridian', 0., 'prograde', 20., 20., 'prograde', 9102, null, null);
insert into ssbd_primemeridian values ('sun-2-99', 'crust', 'ariadne', 'Ariadne Venus Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, null, null);
insert into ssbd_primemeridian values ('sun-4-99', 'crust', 'airy-0', 'Airy-0 Mars Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, null, null);
insert into ssbd_primemeridian values ('sun-5-99', '1', 'pm', 'System I Jupiter Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, null, null);
insert into ssbd_primemeridian values ('sun-5-99', '2', 'pm', 'System II Jupiter Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, null, null);
insert into ssbd_primemeridian values ('sun-5-99', '3', 'pm', 'System III Jupiter Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, null, null);
insert into ssbd_primemeridian values ('sun-6-99', '1', 'pm', 'System I Saturn Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, null, null);
insert into ssbd_primemeridian values ('sun-6-99', '2', 'pm', 'System II Saturn Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, null, null);
insert into ssbd_primemeridian values ('sun-6-99', '3', 'pm', 'System III Saturn Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, null, null);
insert into ssbd_primemeridian values ('sun-7-99', '1', 'pm', 'System I Uranus Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, null, null);
insert into ssbd_primemeridian values ('sun-7-99', '2', 'pm', 'System II Uranus Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, null, null);
insert into ssbd_primemeridian values ('sun-7-99', '3', 'pm', 'System III Uranus Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, null, null);
insert into ssbd_primemeridian values ('sun-8-99', '2', 'pm', 'System II Neptune Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, null, null);


insert into ssbd_range values (1, -180., 180., 'Typically used for earth longitudes.', null);
insert into ssbd_range values (2, 0., 360., 'Typically used for planetary longitudes.', null);


insert into ssbd_datum values ('sun-1-99:2000', 'Mercury 2000', 'geodetic', null, null, '2000:sun-1-99:default', 'sun-1-99', 'crust', 'hun_kal', 'Planetology.', null, null);


insert into ssbd_coordinatesystem values ('spherical:3d:direct',
 'Spherical 3D CS. Axes: latitude, longitude, radius. Orientations: north, sideral west, up. UoM: degrees, degrees, metres.',
 'spherical', 3, null, null);
insert into ssbd_coordinatesystem values ('ellipsoidal:3d:direct',
 'Ellipsoidal 3D CS. Axes: latitude, longitude, ellipsoidal height. Orientations: north, sideral west, up. UoM: degree, degree, metre.',
 'ellipsoidal', 3, null, null);


insert into ssbd_coordinateaxis values ('spherical:3d:direct', 1, 9926, 'north', 'Lat', 9122);
insert into ssbd_coordinateaxis values ('spherical:3d:direct', 2, 9927, 'sideral west', 'Long', 9122);
insert into ssbd_coordinateaxis values ('spherical:3d:direct', 3, 9928, 'up', 'R', 9001);
insert into ssbd_coordinateaxis values ('ellipsoidal:3d:direct', 1, 9901, 'north', 'Lat', 9122);
insert into ssbd_coordinateaxis values ('ellipsoidal:3d:direct', 2, 9902, 'sideral west', 'Lon', 9122);
insert into ssbd_coordinateaxis values ('ellipsoidal:3d:direct', 3, 9903, 'up', 'h', 9001);


insert into ssbd_coordinatereferencesystem values ('2000:sun-1-99:planetocentric', 'Mercury 2000 planetocentric 3D',
 'planetocentric 3D', 'spherical:3d:direct', 'sun-1-99:2000', null, null, null, null, null, null);
insert into ssbd_coordinatereferencesystem values ('2000:sun-1-99:planetographic', 'Mercury 2000 planetographic 3D',
 'planetographic 3D', 'ellipsoidal:3d:direct', 'sun-1-99:2000', null, null, null, null, null, null);


insert into ssbd_coordinatereferencesystemrange values ('2000:sun-1-99:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000:sun-1-99:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);

commit;
