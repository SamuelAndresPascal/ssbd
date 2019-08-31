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
-- les codes des autes corps sont empruntés au répertoire NAIF
-- les codes négatifs sont ceux qui n'ont pas été trouvés dans le répertoire NAIF
insert into ssbd_body values ('0', 'Sun', 'direct', null, null);
insert into ssbd_body values ('1-99', 'Mercury', 'direct', null, null);
insert into ssbd_body values ('2-99', 'Venus', 'indirect', null, null);
insert into ssbd_body values ('3-99', 'Earth', 'direct', null, null);
insert into ssbd_body values ('3-01', 'Moon', 'direct', null, null);
insert into ssbd_body values ('4-99', 'Mars', 'direct', null, null);
insert into ssbd_body values ('4-01', 'Phobos', 'direct', null, null);
insert into ssbd_body values ('4-02', 'Deimos', 'direct', null, null);
insert into ssbd_body values ('5-99', 'Jupiter', 'direct', null, null);
insert into ssbd_body values ('5-01', 'Io', 'direct', null, null);
insert into ssbd_body values ('5-02', 'Europa', 'direct', null, null);
insert into ssbd_body values ('5-03', 'Ganymede', 'direct', null, null);
insert into ssbd_body values ('5-04', 'Callisto', 'direct', null, null);
insert into ssbd_body values ('5-05', 'Amalthea', 'direct', null, null);
insert into ssbd_body values ('5-06', 'Himalia', 'direct', null, null);
insert into ssbd_body values ('5-07', 'Elara', 'direct', null, null);
insert into ssbd_body values ('5-08', 'Pasiphae', 'direct', null, null);
insert into ssbd_body values ('5-09', 'Sinope', 'direct', null, null);
insert into ssbd_body values ('5-10', 'Lysithea', 'direct', null, null);
insert into ssbd_body values ('5-11', 'Carme', 'direct', null, null);
insert into ssbd_body values ('5-12', 'Ananke', 'direct', null, null);
insert into ssbd_body values ('5-13', 'Leda', 'direct', null, null);
insert into ssbd_body values ('5-14', 'Thebe', 'direct', null, null);
insert into ssbd_body values ('5-15', 'Adrastea', 'direct', null, null);
insert into ssbd_body values ('5-16', 'Metis', 'direct', null, null);
insert into ssbd_body values ('5-17', 'Callirrhoe', 'direct', null, null);
insert into ssbd_body values ('5-18', 'Themisto', 'direct', null, null);
insert into ssbd_body values ('5-19', 'Magaclite', 'direct', null, null);
insert into ssbd_body values ('5-20', 'Taygete', 'direct', null, null);
insert into ssbd_body values ('5-21', 'Chaldene', 'direct', null, null);
insert into ssbd_body values ('5-22', 'Harpalyke', 'direct', null, null);
insert into ssbd_body values ('5-23', 'Kalyke', 'direct', null, null);
insert into ssbd_body values ('5-24', 'Iocaste', 'direct', null, null);
insert into ssbd_body values ('5-25', 'Erinome', 'direct', null, null);
insert into ssbd_body values ('5-26', 'Isonoe', 'direct', null, null);
insert into ssbd_body values ('5-27', 'Praxidike', 'direct', null, null);
insert into ssbd_body values ('5-28', 'Autonoe', 'direct', null, null);
insert into ssbd_body values ('5-29', 'Thyone', 'direct', null, null);
insert into ssbd_body values ('5-30', 'Hermippe', 'direct', null, null);
insert into ssbd_body values ('5-31', 'Aitne', 'direct', null, null);
insert into ssbd_body values ('5-32', 'Eurydome', 'direct', null, null);
insert into ssbd_body values ('5-33', 'Euanthe', 'direct', null, null);
insert into ssbd_body values ('5-34', 'Euporie', 'direct', null, null);
insert into ssbd_body values ('5-35', 'Orthosie', 'direct', null, null);
insert into ssbd_body values ('5-36', 'Sponde', 'direct', null, null);
insert into ssbd_body values ('5-37', 'Kale', 'direct', null, null);
insert into ssbd_body values ('5-38', 'Pasithee', 'direct', null, null);
insert into ssbd_body values ('5-39', 'Hegemone', 'direct', null, null);
insert into ssbd_body values ('5-40', 'Mneme', 'direct', null, null);
insert into ssbd_body values ('5-41', 'Aoede', 'direct', null, null);
insert into ssbd_body values ('5-42', 'Thelxinoe', 'direct', null, null);
insert into ssbd_body values ('5-43', 'Arche', 'direct', null, null);
insert into ssbd_body values ('5-44', 'Kallichore', 'direct', null, null);
insert into ssbd_body values ('5-45', 'Helike', 'direct', null, null);
insert into ssbd_body values ('5-46', 'Carpo', 'direct', null, null);
insert into ssbd_body values ('5-47', 'Eukelade', 'direct', null, null);
insert into ssbd_body values ('5-48', 'Cyllene', 'direct', null, null);
insert into ssbd_body values ('5-49', 'Kore', 'direct', null, null);
insert into ssbd_body values ('5-50', 'Herse', 'direct', null, null);
insert into ssbd_body values ('6-99', 'Saturn', 'direct', null, null);
insert into ssbd_body values ('6-01', 'Mimas', 'direct', null, null);
insert into ssbd_body values ('6-02', 'Enceladus', 'direct', null, null);
insert into ssbd_body values ('6-03', 'Tethys', 'direct', null, null);
insert into ssbd_body values ('6-04', 'Dione', 'direct', null, null);
insert into ssbd_body values ('6-05', 'Rhea', 'direct', null, null);
insert into ssbd_body values ('6-06', 'Titan', 'direct', null, null);
insert into ssbd_body values ('6-07', 'Hyperion', 'direct', null, null);
insert into ssbd_body values ('6-08', 'Iapetus', 'direct', null, null);
insert into ssbd_body values ('6-09', 'Phoebe', 'direct', null, null);
insert into ssbd_body values ('6-10', 'Janus', 'direct', null, null);
insert into ssbd_body values ('6-11', 'Epimetheus', 'direct', null, null);
insert into ssbd_body values ('6-12', 'Helene', 'direct', null, null);
insert into ssbd_body values ('6-13', 'Telesto', 'direct', null, null);
insert into ssbd_body values ('6-14', 'Calypso', 'direct', null, null);
insert into ssbd_body values ('6-15', 'Atlas', 'direct', null, null);
insert into ssbd_body values ('6-16', 'Prometheus', 'direct', null, null);
insert into ssbd_body values ('6-17', 'Pandora', 'direct', null, null);
insert into ssbd_body values ('6-18', 'Pan', 'direct', null, null);
insert into ssbd_body values ('6-19', 'Ymir', null, null, null);
insert into ssbd_body values ('6-20', 'Paaliaq', null, null, null);
insert into ssbd_body values ('6-21', 'Tarvos', null, null, null);
insert into ssbd_body values ('6-22', 'Ijiraq', null, null, null);
insert into ssbd_body values ('6-23', 'Suttungr', null, null, null);
insert into ssbd_body values ('6-24', 'Kiviuq', null, null, null);
insert into ssbd_body values ('6-25', 'Mundilfari', null, null, null);
insert into ssbd_body values ('6-26', 'Albiorix', null, null, null);
insert into ssbd_body values ('6-27', 'Skathi', null, null, null);
insert into ssbd_body values ('6-28', 'Erriapo', null, null, null);
insert into ssbd_body values ('6-29', 'Siarnaq', null, null, null);
insert into ssbd_body values ('6-30', 'Thrymr', null, null, null);
insert into ssbd_body values ('6-31', 'Narvi', null, null, null);
insert into ssbd_body values ('6-32', 'Methone', null, null, null);
insert into ssbd_body values ('6-33', 'Pallene', null, null, null);
insert into ssbd_body values ('6-34', 'Polydeuces', null, null, null);
insert into ssbd_body values ('6-35', 'Daphnis', null, null, null);
insert into ssbd_body values ('6-36', 'Aegir', null, null, null);
insert into ssbd_body values ('6-37', 'Bebhionn', null, null, null);
insert into ssbd_body values ('6-38', 'Bergelmir', null, null, null);
insert into ssbd_body values ('6-39', 'Bestla', null, null, null);
insert into ssbd_body values ('6-40', 'Farbauti', null, null, null);
insert into ssbd_body values ('6-41', 'Fenrir', null, null, null);
insert into ssbd_body values ('6-42', 'Fornjot', null, null, null);
insert into ssbd_body values ('6-43', 'Hati', null, null, null);
insert into ssbd_body values ('6-44', 'Hyrrokkin', null, null, null);
insert into ssbd_body values ('6-45', 'Kari', null, null, null);
insert into ssbd_body values ('6-46', 'Loge', null, null, null);
insert into ssbd_body values ('6-47', 'Skoll', null, null, null);
insert into ssbd_body values ('6-48', 'Sutur', null, null, null);
insert into ssbd_body values ('6-49', 'Anthe', null, null, null);
insert into ssbd_body values ('6-50', 'Jarnsaxa', null, null, null);
insert into ssbd_body values ('6-51', 'Greip', null, null, null);
insert into ssbd_body values ('6-52', 'Tarqeq', null, null, null);
insert into ssbd_body values ('6-53', 'Aegaeon', null, null, null);
insert into ssbd_body values ('7-99', 'Uranus', 'indirect', null, null);
insert into ssbd_body values ('7-01', 'Ariel', 'indirect', null, null);
insert into ssbd_body values ('7-02', 'Umbriel', 'indirect', null, null);
insert into ssbd_body values ('7-03', 'Titania', 'indirect', null, null);
insert into ssbd_body values ('7-04', 'Oberon', 'indirect', null, null);
insert into ssbd_body values ('7-05', 'Miranda', 'indirect', null, null);
insert into ssbd_body values ('7-06', 'Cordelia', 'indirect', null, null);
insert into ssbd_body values ('7-07', 'Ophelia', 'indirect', null, null);
insert into ssbd_body values ('7-08', 'Bianca', 'indirect', null, null);
insert into ssbd_body values ('7-09', 'Cressida', 'indirect', null, null);
insert into ssbd_body values ('7-10', 'Desdemona', 'indirect', null, null);
insert into ssbd_body values ('7-11', 'Juliet', 'indirect', null, null);
insert into ssbd_body values ('7-12', 'Portia', 'indirect', null, null);
insert into ssbd_body values ('7-13', 'Rosalind', 'indirect', null, null);
insert into ssbd_body values ('7-14', 'Belinda', 'indirect', null, null);
insert into ssbd_body values ('7-15', 'Puck', 'indirect', null, null);
insert into ssbd_body values ('7-16', 'Caliban', 'direct', null, null);
insert into ssbd_body values ('7-17', 'Sycorax', 'direct', null, null);
insert into ssbd_body values ('7-18', 'Prospero', 'direct', null, null);
insert into ssbd_body values ('7-19', 'Setebos', 'direct', null, null);
insert into ssbd_body values ('7-20', 'Stephano', 'direct', null, null);
insert into ssbd_body values ('7-21', 'Trinculo', 'direct', null, null);
insert into ssbd_body values ('7-22', 'Francisco', 'direct', null, null);
insert into ssbd_body values ('7-23', 'Margaret', 'direct', null, null);
insert into ssbd_body values ('7-24', 'Ferdinand', 'direct', null, null);
insert into ssbd_body values ('7-25', 'Perdita', 'direct', null, null);
insert into ssbd_body values ('7-26', 'Mab', 'direct', null, null);
insert into ssbd_body values ('7-27', 'Cupid', 'direct', null, null);
insert into ssbd_body values ('8-99', 'Neptune', 'direct', null, null);
insert into ssbd_body values ('8-01', 'Triton', 'indirect', null, null);
insert into ssbd_body values ('8-02', 'Nereid', 'direct', null, null);
insert into ssbd_body values ('8-03', 'Naiad', 'direct', null, null);
insert into ssbd_body values ('8-04', 'Thalassa', 'direct', null, null);
insert into ssbd_body values ('8-05', 'Despina', 'direct', null, null);
insert into ssbd_body values ('8-06', 'Galatea', 'direct', null, null);
insert into ssbd_body values ('8-07', 'Larissa', 'direct', null, null);
insert into ssbd_body values ('8-08', 'Proteus', 'direct', null, null);
insert into ssbd_body values ('8-09', 'Halimede', 'direct', null, null);
insert into ssbd_body values ('8-10', 'Psamathe', 'direct', null, null);
insert into ssbd_body values ('8-11', 'Sao', 'direct', null, null);
insert into ssbd_body values ('8-12', 'Laomedeia', 'direct', null, null);
insert into ssbd_body values ('8-13', 'Neso', 'direct', null, null);
insert into ssbd_body values ('9-99', 'Pluto', 'indirect', null, null);
insert into ssbd_body values ('9-01', 'Charon', 'direct', null, null);
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

-- les codes des ellipsoides sont ainsi construits :
-- <version de publication>:(<code du corps>:)<mot-clef caractéristique>
--
-- le code du corps est une partie optionnelle au sens où le lien direct entre un ellipsoïde et un corps n'est pas
-- obligatoire.
insert into ssbd_ellipsoid values ('2000:1-99:default', '1-99', 'Mercury 2000 IAU', 2439700.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:2-99:default', '2-99', 'Venus 2000 IAU', 6051800.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:3-99:spherical', '3-99', 'Spherical Earth 2000 IAU', 6371000.00, 10., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:3-99:ellipsoidal', '3-99', 'Ellipsoidal Earth 2000 IAU', 6378140.00, 10., 9001, null, 6356750.00, 10.,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:4-99:spherical', '4-99', 'Spherical Mars 2000 IAU', 3389500.00, 200., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:4-99:ellipsoidal', '4-99', 'Ellipsoidal Mars 2000 IAU', 3396190.00, 100., 9001, null, 3376200.00, 100.,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:4-99:default', '4-99', 'Quadriaxial Mars 2000 IAU', 3396190.00, 100., 9001, null, 3373190.00, 100.,
 null, null, 3379210.00, 100.,
 'This ellipsoid is considered quadriaxial even if subplanetary and along orbit equatorial axes are equal.',
 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:5-99:spherical', '5-99', 'Spherical Jupiter 2000 IAU', 69911000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:5-99:ellipsoidal', '5-99', 'Ellipsoidal Jupiter 2000 IAU', 71492000.00,  4000., 9001, null, 66854000.00, 10000.,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:6-99:spherical', '6-99', 'Spherical Saturn 2000 IAU', 58232000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:6-99:ellipsoidal', '6-99', 'Ellipsoidal Saturn 2000 IAU', 60268000.00,  4000., 9001, null, 54364000.00, 10000.,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:7-99:spherical', '7-99', 'Spherical Uranus 2000 IAU', 25362000.00, 7000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:7-99:ellipsoidal', '7-99', 'Ellipsoidal Uranus 2000 IAU', 25559000.00,  4000., 9001, null, 24973000.00, 20000.,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:8-99:spherical', '8-99', 'Spherical Neptune 2000 IAU', 24622000.00, 19000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:8-99:ellipsoidal', '8-99', 'Ellipsoidal Neptune 2000 IAU', 24764000.00,  15000., 9001, null, 24341000.00, 30000.,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:9-99:spherical', '9-99', 'Spherical Pluto 2000 IAU', 1195000.00,  5000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');

insert into ssbd_ellipsoid values ('2000:3-01:spherical', '3-01', 'Spherical Moon 2000 IAU', 1737400.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:4-01:spherical', '4-01', 'Spherical Phobos 2000 IAU', 11100.00, 150., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:4-01:triaxial', '4-01', 'Triaxial Phobos 2000 IAU', 13400.00, null, 9001, null, 9200.00, null,
 11200.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:4-02:spherical', '4-02', 'Spherical Deimos 2000 IAU', 6200.00, 180., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:4-02:triaxial', '4-02', 'Triaxial Deimos 2000 IAU', 7500.00, null, 9001, null, 5200.00, null,
 6100.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:5-16:spherical', '5-16', 'Spherical Metis 2000 IAU', 21500., 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:5-16:ellipsoidal', '5-16', 'Ellipsoidal Metis 2000 IAU', 30000., null, 9001, null, 20000., null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:5-15:spherical', '5-15', 'Spherical Adrastea 2000 IAU', 8200., 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:5-15:triaxial', '5-15', 'Triaxial Adrastea 2000 IAU', 10000., null, 9001, null, 7000., null,
 8000., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:5-05:spherical', '5-05', 'Spherical Amalthea 2000 IAU', 83500., 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:5-05:triaxial', '5-05', 'Triaxial Amalthea 2000 IAU', 125000., null, 9001, null, 73000., null,
 64000., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:5-14:spherical', '5-14', 'Spherical Thebe 2000 IAU', 49300., 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:5-14:triaxial', '5-14', 'Triaxial Thebe 2000 IAU', 58000., null, 9001, null, 49000., null,
 42000., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:5-01:spherical', '5-01', 'Spherical Io 2000 IAU', 1821460., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:5-01:triaxial', '5-01', 'Triaxial Io 2000 IAU', 1829400., null, 9001, null, 1819300., null,
 1815700., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:5-02:spherical', '5-02', 'Spherical Europa 2000 IAU', 1562090., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:5-02:triaxial', '5-02', 'Triaxial Europa 2000 IAU', 1564130., null, 9001, null, 1561230., null,
 1560930., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:5-03:spherical', '5-03', 'Spherical Ganymede 2000 IAU', 2632345., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:5-03:triaxial', '5-03', 'Triaxial Ganymede 2000 IAU', 2632400., null, 9001, null, 2632290., null,
 2632350., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:5-04:spherical', '5-04', 'Spherical Callisto 2000 IAU', 2409300., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:5-04:triaxial', '5-04', 'Triaxial Callisto 2000 IAU', 2409400., null, 9001, null, 2409200., null,
 2409300., null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:5-13:default', '5-13', 'Leda 2000 IAU', 5000., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:5-06:default', '5-06', 'Himalia 2000 IAU', 85000., 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:5-10:default', '5-10', 'Lysithea 2000 IAU', 12000., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:5-07:default', '5-07', 'Elara 2000 IAU', 40000., 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:5-12:default', '5-12', 'Ananke 2000 IAU', 10000., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:5-11:default', '5-11', 'Carme 2000 IAU', 15000., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:5-08:default', '5-08', 'Pasiphae 2000 IAU', 18000., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:5-09:default', '5-09', 'Sinope 2000 IAU', 14000., null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');

insert into ssbd_ellipsoid values ('2000:6-01:spherical', '6-01', 'Spherical Mimas 2000 IAU', 198600.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:6-01:triaxial', '6-01', 'Triaxial Mimas 2000 IAU', 209100.00, 500., 9001, null, 191400.00, 500.,
 196200.00, 500., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:6-02:spherical', '6-02', 'Spherical Enceladus 2000 IAU', 249400.00, 300., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:6-02:triaxial', '6-02', 'Triaxial Enceladus 2000 IAU', 256300.00, 300., 9001, null, 244600.00, 500.,
 247300.00, 300., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:6-03:spherical', '6-03', 'Spherical Tethys 2000 IAU', 529800.00, 1500., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:6-03:triaxial', '6-03', 'Triaxial Tethys 2000 IAU', 535600.00, 1200., 9001, null, 525800.00, 1200.,
 528200.00, 1200., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:6-04:default', '6-04', 'Dione 2000 IAU', 560000.00, 5000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:6-05:default', '6-05', 'Rhea 2000 IAU', 764000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:6-06:default', '6-06', 'Titan 2000 IAU', 2575000.00, 2000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:6-07:spherical', '6-07', 'Spherical Hyperion 2000 IAU', 133000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:6-07:triaxial', '6-07', 'Triaxial Hyperion 2000 IAU', 164000.00, 8000., 9001, null, 107000.00, 8000.,
 130000.00, 8000., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:6-08:default', '6-08', 'Iapetus 2000 IAU', 718000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:6-09:spherical', '6-09', 'Spherical Phoebe 2000 IAU', 110000.00, 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:6-09:triaxial', '6-09', 'Triaxial Phoebe 2000 IAU', 115000.00, 10000., 9001, null, 105000.00, 10000.,
 110000.00, 10000., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:6-10:spherical', '6-10', 'Spherical Janus 2000 IAU', 88800.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:6-10:triaxial', '6-10', 'Triaxial Janus 2000 IAU', 97000.00, null, 9001, null, 77000.00, null,
 95000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:6-11:spherical', '6-11', 'Spherical Epimetheus 2000 IAU', 59500.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:6-11:triaxial', '6-11', 'Triaxial Epimetheus 2000 IAU', 69000.00, null, 9001, null, 55000.00, null,
 55000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:6-12:spherical', '6-12', 'Spherical Helene 2000 IAU', 16000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
-- TODO : rayon polaire d'Helene suspect, de même que l'axis_b
insert into ssbd_ellipsoid values ('2000:6-12:ellipsoidal', '6-12', 'Ellipsoidal Helene 2000 IAU', 17500.00, 2500., 9001, null, 700.00, null,
 17500.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:6-13:spherical', '6-13', 'Spherical Telesto 2000 IAU', 11000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:6-13:triaxial', '6-13', 'Triaxial Telesto 2000 IAU', 15000.00, 2500., 9001, null, 7500.00, 2500.,
 12500.00, 5000., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:6-14:spherical', '6-14', 'Spherical Calypso 2000 IAU', 9500.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:6-14:triaxial', '6-14', 'Triaxial Calypso 2000 IAU', 15000.00, null, 9001, null, 8000.00, null,
 8000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:6-15:spherical', '6-15', 'Spherical Atlas 2000 IAU', 16000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:6-15:triaxial', '6-15', 'Triaxial Atlas 2000 IAU', 18500.00, null, 9001, null, 13500.00, null,
 17200.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:6-16:spherical', '6-16', 'Spherical Prometheus 2000 IAU', 50100.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:6-16:triaxial', '6-16', 'Triaxial Prometheus 2000 IAU', 74000.00, null, 9001, null, 34000.00, null,
 50000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:6-17:spherical', '6-17', 'Spherical Pandora 2000 IAU', 41900.00, 2000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:6-17:triaxial', '6-17', 'Triaxial Pandora 2000 IAU', 55000.00, null, 9001, null, 31000.00, null,
 44000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:6-18:default', '6-18', 'Pan 2000 IAU', 10000., 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');

insert into ssbd_ellipsoid values ('2000:6-32:default', '6-32', 'Methone 2000 IAU', 1600.00, null, 9001, null, null, null,
 null, null, null, null,
 null, null);
insert into ssbd_ellipsoid values ('2000:6-33:default', '6-33', 'Pallene 2000 IAU', 2500.00, null, 9001, null, null, null,
 null, null, null, null,
 null, null);
insert into ssbd_ellipsoid values ('2000:6-34:default', '6-34', 'Polydeuces 2000 IAU', 1300.00, null, 9001, null, null, null,
 null, null, null, null,
 null, null);

insert into ssbd_ellipsoid values ('2000:7-01:spherical', '7-01', 'Spherical Ariel 2000 IAU', 578900.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:7-01:triaxial', '7-01', 'Triaxial Ariel 2000 IAU', 581100.00, 900., 9001, null, 577700.00, 1000.,
 577900.00, 600., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:7-02:default', '7-02', 'Umbriel 2000 IAU', 584700.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:7-03:default', '7-03', 'Titania 2000 IAU', 788900.00, 1800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:7-04:default', '7-04', 'Oberon 2000 IAU', 761400.00, 2600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:7-05:spherical', '7-05', 'Spherical Miranda 2000 IAU', 235800.00, 700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:7-05:triaxial', '7-05', 'Triaxial Miranda 2000 IAU', 240400.00, 600., 9001, null, 232900.00, 1200.,
 234200.00, 900., null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:7-06:default', '7-06', 'Cordelia 2000 IAU', 13000.00, 2000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:7-07:default', '7-07', 'Ophelia 2000 IAU', 15000.00, 2000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:7-08:default', '7-08', 'Bianca 2000 IAU', 21000.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:7-09:default', '7-09', 'Cressida 2000 IAU', 31000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:7-10:default', '7-10', 'Desdemona 2000 IAU', 27000.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:7-11:default', '7-11', 'Juliet 2000 IAU', 42000.00, 5000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:7-12:default', '7-12', 'Portia 2000 IAU', 54000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:7-13:default', '7-13', 'Rosalind 2000 IAU', 27000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:7-14:default', '7-14', 'Belinda 2000 IAU', 33000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:7-15:default', '7-15', 'Puck 2000 IAU', 77000.00, 5000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');


insert into ssbd_ellipsoid values ('2000:8-01:default', '8-01', 'Triton 2000 IAU', 1352600.00, 2400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:8-02:default', '8-02', 'Nereid 2000 IAU', 170000.00, 25000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:8-03:default', '8-03', 'Naiad 2000 IAU', 29000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:8-04:default', '8-04', 'Thalassa 2000 IAU', 40000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:8-05:default', '8-05', 'Despina 2000 IAU', 74000.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:8-06:default', '8-06', 'Galatea 2000 IAU', 79000.00, 12000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:8-07:spherical', '8-07', 'Spherical Larissa 2000 IAU', 96000.00, 7000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:8-07:ellipsoidal', '8-07', 'Ellipsoidal Larissa 2000 IAU', 104000.00, null, 9001, null, 89000.00, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:8-08:spherical', '8-08', 'Spherical Proteus 2000 IAU', 208000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:8-08:triaxial', '8-08', 'Triaxial Proteus 2000 IAU', 218000.00, null, 9001, null, 201000.00, null,
 208000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');


insert into ssbd_ellipsoid values ('2000:9-01:default', '9-01', 'Charon 2000 IAU', 593000.00, 13000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');

insert into ssbd_ellipsoid values ('2000:9511010:spherical', '9511010', 'Spherical Gaspra 2000 IAU', 6100.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:9511010:measured', '9511010', 'Measured Ellipsoid Gaspra 2000 IAU', 9100.00, null, 9001, null, 4400.00, null,
 5200.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:9511010:bestfit', '9511010', 'Best-fit Ellipsoid Gaspra 2000 IAU', 9100.00, null, 9001, null, 4700.00, null,
 5200.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:2431010:spherical', '2431010', 'Spherical Ida 2000 IAU', 15650.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:2431010:measured', '2431010', 'Measured Ida 2000 IAU', 26800.00, null, 9001, null, 7600.00, null,
 12000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:2431010:bestfit', '2431010', 'Best-fit Ellipsoid Ida 2000 IAU', 30000.00, null, 9001, null, 9300.00, null,
 12600.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:2000001:spherical', '2000001', 'Spherical Ceres 2000 IAU', 476200.00, null, 9001, null, null, null,
 null, null, null, null,
 null, null);
insert into ssbd_ellipsoid values ('2000:2000001:ellipsoidal', '2000001', 'Ellipsoidal Ceres 2000 IAU', 487300.00, null, 9001, null, 454700.00, null,
 null, null, null, null,
 null, null);
insert into ssbd_ellipsoid values ('2000:2000021:spherical', '2000021', 'Spherical Lutetia 2000 IAU', 52500.00, null, 9001, null, null, null,
 null, null, null, null,
 null, null);
insert into ssbd_ellipsoid values ('2000:2000021:triaxial', '2000021', 'Triaxial Lutetia 2000 IAU', 62000.00, null, 9001, null, 46500.00, null,
 50500.00, null, null, null,
 null, null);
insert into ssbd_ellipsoid values ('2000:2000216:measured', '2000216', 'Measured Kleopatra 2000 IAU', 108500.00, null, 9001, null, 40500.00, null,
 47000.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:2000433:default', '2000433', 'Mean Spherical Eros 2000 IAU', 7311.00, 10., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values ('2000:2000433:bestfit', '2000433', 'Best-fit Spherical Eros 2000 IAU', 9236., 100., 9001, null, 7311.00, null,
 7311.00, null, null, null,
 null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');


insert into ssbd_ellipsoid values ('2009:0:default', '0', 'Sun 2009 IAU', 696000000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:1-99:default', '1-99', 'Mercury 2009 IAU', 2439700.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2-99:default', '2-99', 'Venus 2009 IAU', 6051800.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:3-99:spherical', '3-99', 'Spherical Earth 2009 IAU', 6371008.40, .1, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:3-99:default', '3-99', 'Ellipsoidial Earth 2009 IAU', 6378136.60, .1, 9001, null, 6356751.90, .1,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:3-01:default', '3-01', 'Moon 2009 IAU', 1737400.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:4-99:spherical', '4-99', 'Spherical Mars 2009 IAU', 3389500.00, 200., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:4-99:ellipsoidal', '4-99', 'Ellipsoidal Mars 2009 IAU', 3396190.00, 100., 9001, null, 3376200.00, 100.,
null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:4-99:default', '4-99', 'Quadriaxial Mars 2009 IAU', 3396190.00, 100., 9001, null, 3373190.00, 100.,
 3379210.00, 100., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:4-01:spherical', '4-01', 'Spherical Phobos 2009 IAU', 11080.00, 40., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:4-01:triaxial', '4-01', 'Triaxial Phobos 2009 IAU', 13000.00, null, 9001, null, 9100.00, null,
 11400.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:4-02:spherical', '4-02', 'Spherical Deimos 2009 IAU', 6200.00, 250., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:4-02:triaxial', '4-02', 'Triaxial Deimos 2009 IAU', 7800.00, null, 9001, null, 5100.00, null,
 6000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:5-99:spherical', '5-99', 'Spherical Jupiter 2009 IAU', 69911000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:5-99:ellipsoidal', '5-99', 'Ellipsoidal Jupiter 2009 IAU', 71492000.00, 4000., 9001, null, 66854000.00, 10000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:5-01:spherical', '5-01', 'Spherical Io 2009 IAU', 1821490.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:5-01:triaxial', '5-01', 'Triaxial Io 2009 IAU', 1829400.00, null, 9001, null, 1815700.00, null,
 1819400.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:5-02:spherical', '5-02', 'Spherical Europa 2009 IAU', 1560800.00, 300., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:5-02:triaxial', '5-02', 'Triaxial Europa 2009 IAU', 1562600.00, null, 9001, null, 1560950.00, null,
 1560300.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:5-03:default', '5-03', 'Ganymede 2009 IAU', 2631200.00, 1700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:5-04:default', '5-04', 'Callisto 2009 IAU', 2410300.00, 1500., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:5-05:spherical', '5-05', 'Spherical Amalthea 2009 IAU', 83500.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:5-05:ellipsoidal', '5-05', 'Ellipsoidal Amalthea 2009 IAU', 125000.00, null, 9001, null, 64000.00, null,
 73000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:5-06:default', '5-06', 'Himalia 2009 IAU', 85000.00, 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:5-07:default', '5-07', 'Elara 2009 IAU', 40000.00, 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:5-08:default', '5-08', 'Pasiphae 2009 IAU', 18000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:5-09:default', '5-09', 'Sinope 2009 IAU', 14000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:5-10:default', '5-10', 'Lysithea 2009 IAU', 12000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:5-11:default', '5-11', 'Carme 2009 IAU', 15000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:5-12:default', '5-12', 'Ananke 2009 IAU', 10000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:5-13:default', '5-13', 'Leda 2009 IAU', 5000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:5-14:spherical', '5-14', 'Spherical Thebe 2009 IAU', 49300.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:5-14:triaxial', '5-14', 'Triaxial Thebe 2009 IAU', 58000.00, null, 9001, null, 42000.00, null,
 49000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:5-15:spherical', '5-15', 'Spherical Adrastea 2009 IAU', 8200.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:5-15:ellipsoidal', '5-15', 'Ellipsoidal Adrastea 2009 IAU', 10000.00, null, 9001, null, 7000.00, null,
 8000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:5-16:spherical', '5-16', 'Spherical Metis 2009 IAU', 21500.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:5-16:ellipsoidal', '5-16', 'Ellipsoidal Metis 2009 IAU', 30000.00, null, 9001, null, 17000.00, null,
 20000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-99:spherical', '6-99', 'Spherical Saturn 2009 IAU', 58232000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-99:ellipsoidal', '6-99', 'Ellipsoidal Saturn 2009 IAU', 60268000.00, 4000., 9001, null, 54364000.00, 10000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-01:spherical', '6-01', 'Spherical Mimas 2009 IAU', 198200.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-01:triaxial', '6-01', 'Triaxial Mimas 2009 IAU', 207800.00, 500., 9001, null, 190600.00, 300.,
 196700.00, 500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-02:spherical', '6-02', 'Spherical Enceladus 2009 IAU', 252100.00, 200., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-02:triaxial', '6-02', 'Triaxial Enceladus 2009 IAU', 256600.00, 600., 9001, null, 248300.00, 200.,
 251400.00, 200., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-03:spherical', '6-03', 'Spherical Tethys 2009 IAU', 531000.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-03:triaxial', '6-03', 'Triaxial Tethys 2009 IAU', 538400.00, 300., 9001, null, 526300.00, 600.,
 528300.00, 1100., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-04:spherical', '6-04', 'Spherical Dione 2009 IAU', 561400.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-04:triaxial', '6-04', 'Triaxial Dione 2009 IAU', 563400.00, 600., 9001, null, 559600.00, 400.,
 561300.00, 500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-05:spherical', '6-05', 'Spherical Rhea 2009 IAU', 763500.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-05:triaxial', '6-05', 'Triaxial Rhea 2009 IAU', 765000.00, 700., 9001, null, 762400.00, 600.,
 763100.00, 600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-06:spherical', '6-06', 'Spherical Titan 2009 IAU', 2574730.00, 90., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-06:triaxial', '6-06', 'Triaxial Titan 2009 IAU', 2575150.00, 20., 9001, null, 2574470.00, 60.,
 2574780.00, 60., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-07:default', '6-07', 'Shperical Hyperion 2009 IAU', 135000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-07:triaxial', '6-07', 'Triaxial Hyperion 2009 IAU', 180100.00, 2000., 9001, null, 102700.00, 4500.,
 133000.00, 4500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-08:spherical', '6-08', 'Spherical Iapetus 2009 IAU', 734300.00, 2800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-08:ellipsoidal', '6-08', 'Ellipsoidal Iapetus 2009 IAU', 745700.00, 2900., 9001, null, 712100.00, 1600.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-09:spherical', '6-09', 'Spherical Phoebe 2009 IAU', 106500.00, 700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-09:triaxial', '6-09', 'Triaxial Phoebe 2009 IAU', 109400.00, 1400., 9001, null, 101800.00, 300.,
 108500.00, 600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-10:spherical', '6-10', 'Spherical Janus 2009 IAU', 89500.00, 1400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-10:triaxial', '6-10', 'Triaxial Janus 2009 IAU', 101500.00, 1900., 9001, null, 76300.00, 1200.,
 92500.00, 1200., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-11:spherical', '6-11', 'Spherical Epimetheus 2009 IAU', 58100.00, 1.8, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-11:triaxial', '6-11', 'Triaxial Epimetheus 2009 IAU', 64900.00, 2000., 9001, null, 53100.00, 700.,
 57000.00, 3700., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-12:spherical', '6-12', 'Spherical Helene 2009 IAU', 17600.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-12:triaxial', '6-12', 'Triaxial Helene 2009 IAU', 21700.00, 500., 9001, null, 13000.00, 300.,
 19100.00, 300., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-13:spherical', '6-13', 'Spherical Telesto 2009 IAU', 12400.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-13:triaxial', '6-13', 'Triaxial Telesto 2009 IAU', 16300.00, 500., 9001, null, 10000.00, 300.,
 11800.00, 300., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-14:spherical', '6-14', 'Spherical Calypso 2009 IAU', 10700.00, 700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-14:triaxial', '6-14', 'Triaxial Calypso 2009 IAU', 15100.00, 300., 9001, null, 7000.00, 600.,
 11500.00, 2200., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-15:spherical', '6-15', 'Spherical Atlas 2009 IAU', 15100.00, 900., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-15:triaxial', '6-15', 'Triaxial Atlas 2009 IAU', 20400.00, 1200., 9001, null, 9400.00, 800.,
 17700.00, 700., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-16:spherical', '6-16', 'Spherical Prometheus 2009 IAU', 43100.00, 2700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-16:triaxial', '6-16', 'Triaxial Prometheus 2009 IAU', 67800.00, 3100., 9001, null, 29700.00, 1900.,
 39700.00, 3100., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-17:spherical', '6-17', 'Spherical Pandora 2009 IAU', 40700.00, 1500., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-17:triaxial', '6-17', 'Triaxial Pandora 2009 IAU', 52000.00, 1800., 9001, null, 32000.00, 900.,
 40500.00, 2000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-18:spherical', '6-18', 'Spherical Pan 2009 IAU', 14100.00, 1300., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-18:triaxial', '6-18', 'Triaxial Pan 2009 IAU', 17200.00, 1900., 9001, null, 10400.00, 840.,
 15700.00, 1300., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-32:default', '6-32', 'Methone 2009 IAU', 1600.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-33:spherical', '6-33', 'Spherical Pallene 2009 IAU', 2500.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-33:triaxial', '6-33', 'Triaxial Pallene 2009 IAU', 2900.00, 600., 9001, null, 2000.00, 400.,
 2800.00, 800., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-34:spherical', '6-34', 'Spherical Polydeuces 2009 IAU', 1300.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-34:triaxial', '6-34', 'Triaxial Polydeuces 2009 IAU', 1500.00, 600., 9001, null, 1000.00, 200.,
 1200.00, 400., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-35:spherical', '6-35', 'Spherical Daphnis 2009 IAU', 3800.00, 800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-35:triaxial', '6-35', 'Triaxial Daphnis 2009 IAU', 4300.00, 700., 9001, null, 3200.00, 800.,
 4100.00, 900., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:6-49:default', '6-49', 'Anthe 2009 IAU', 1000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:7-99:spherical', '7-99', 'Spherical Uranus 2009 IAU', 25362000.00, 7000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:7-99:ellipsoidal', '7-99', 'Ellipsoidal Uranus 2009 IAU', 25559000.00, 4000., 9001, null, 24973000.00, 20000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:7-01:spherical', '7-01', 'Spherical Ariel 2009 IAU', 578900.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:7-01:triaxial', '7-01', 'Triaxial Ariel 2009 IAU', 581100.00, 900., 9001, null, 577700.00, 1000.,
 577900.00, 600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:7-02:default', '7-02', 'Umbriel 2009 IAU', 584700.00, 2800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:7-03:default', '7-03', 'Titania 2009 IAU', 788900.00, 1800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:7-04:default', '7-04', 'Oberon 2009 IAU', 761400.00, 2600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:7-05:spherical', '7-05', 'Spherical Miranda 2009 IAU', 235800.00, 700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:7-05:triaxial', '7-05', 'Triaxial Miranda 2009 IAU', 240400.00, 600., 9001, null, 232900.00, 1200.,
 234200.00, 900., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:7-06:default', '7-06', 'Cordelia 2009 IAU', 13000.00, 2000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:7-07:default', '7-07', 'Ophelia 2009 IAU', 15000.00, 2000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:7-08:default', '7-08', 'Bianca 2009 IAU', 21000.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:7-09:default', '7-09', 'Cressida 2009 IAU', 31000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:7-10:default', '7-10', 'Desdemona 2009 IAU', 27000.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:7-11:default', '7-11', 'Juliet 2009 IAU', 42000.00, 5000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:7-12:default', '7-12', 'Portia 2009 IAU', 54000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:7-13:default', '7-13', 'Rosalind 2009 IAU', 27000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:7-14:default', '7-14', 'Belinda 2009 IAU', 33000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:7-15:default', '7-15', 'Puck 2009 IAU', 77000.00, 5000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:8-99:spherical', '8-99', 'Spherical Neptune 2009 IAU', 24622000.00, 19000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:8-99:ellipsoidal', '8-99', 'Ellipsoidal Neptune 2009 IAU', 24764000.00, 15000., 9001, null, 24341000.00, 30000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:8-01:default', '8-01', 'Triton 2009 IAU', 1352600.00, 2400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:8-02:default', '8-02', 'Nereid 2009 IAU', 170000.00, 25000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:8-03:default', '8-03', 'Naiad 2009 IAU', 29000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:8-04:default', '8-04', 'Thalassa 2009 IAU', 40000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:8-05:default', '8-05', 'Despina 2009 IAU', 74000.00, 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:8-06:default', '8-06', 'Galatea 2009 IAU', 79000.00, 12000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:8-07:spherical', '8-07', 'Spherical Larissa 2009 IAU', 96000.00, 7000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:8-07:ellipsoidal', '8-07', 'Ellipsoidal Larissa 2009 IAU', 104000.00, null, 9001, null, 89000.00, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:8-08:spherical', '8-08', 'Spherical Proteus 2009 IAU', 208000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:8-08:triaxial', '8-08', 'Triaxial Proteus 2009 IAU', 218000.00, null, 9001, null, 201000.00, null,
 208000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:9-99:default', '9-99', 'Pluto 2009 IAU', 1195000.00, 5000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:9-01:default', '9-01', 'Charon 2009 IAU', 605000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:1000005:default', '1000005', 'Effective Borrelly 2009 IAU', 4220.00, 50., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:1000005:measured', '1000005', 'Measured Borrelly 2009 IAU', 3500.00, 200., 9001, null, null, null,
  null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:1000036:triaxial', '1000036', 'Triaxial Halley 2009 IAU', 8000.00, 500., 9001, null, 4000.00, 250.,
 4000.00, 250., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:1000093:spherical', '1000093', 'Spherical Tempel 1 2009 IAU', 3000.00, 100., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:1000093:default', '1000093', 'Biaxial Tempel 1 2009 IAU', 3700.00, null, 9001, null, 2500.00, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:1000107:spherical', '1000107', 'Spherical Wild 2 2009 IAU', 1975.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:1000107:triaxial', '1000107', 'Triaxial Wild 2 2009 IAU', 2700.00, null, 9001, null, 1500.00, null,
 1900.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:9511010:spherical', '9511010', 'Spherical Gaspra 2009 IAU', 6100.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:9511010:triaxial', '9511010', 'Triaxial Gaspra 2009 IAU', 9100.00, null, 9001, null, 4400.00, null,
 5200.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2431010:spherical', '2431010', 'Spherical Ida 2009 IAU', 15650.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2431010:triaxial', '2431010', 'Triaxial Ida 2009 IAU', 26800.00, null, 9001, null, 7600.00, null,
 12000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2000001:spherical', '2000001', 'Spherical Ceres 2009 IAU', 476200.00, 1700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2000001:ellipsoidal', '2000001', 'Ellipsoidal Ceres 2009 IAU', 487300.00, 1800., 9001, null, 454700.00, 1600.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2000004:default', '2000004', 'Vesta 2009 IAU', 289000.00, 5000., 9001, null, 229000.00, 5000.,
 280000.00, 5000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2000021:spherical', '2000021', 'Spherical Lutetia 2009 IAU', 52500.00, 2500., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2000021:triaxial', '2000021', 'Triaxial Lutetia 2009 IAU', 62000.00, 2500., 9001, null, 46500.00, 6500.,
 50500.00, 2000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2000216:default', '2000216', 'Kleopatra 2009 IAU', 108500.00, null, 9001, null, 40500.00, null,
 47000.00, null, null, null,
 null, null);
insert into ssbd_ellipsoid values ('2009:2000433:spherical', '2000433', 'Spherical Eros 2009 IAU', 8450.00, 20., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2000433:triaxial', '2000433', 'Triaxial Eros 2009 IAU', 17000.00, null, 9001, null, 5500.00, null,
 5500.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2000511:spherical', '2000511', 'Spherical Davida 2009 IAU', 150000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2000511:triaxial', '2000511', 'Triaxial Davida 2009 IAU', 180000.00, null, 9001, null, 127000.00, null,
 147000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2000253:spherical', '2000253', 'Spherical Mathilde 2009 IAU', 26500.00, 1300., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2000253:triaxial', '2000253', 'Triaxial Mathilde 2009 IAU', 33000.00, null, 9001, null, 23000.00, null,
 24000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2002867:spherical', '2002867', 'Spherical Steins 2009 IAU', 2700.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2002867:triaxial', '2002867', 'Triaxial Steins 2009 IAU', 3240.00, null, 9001, null, 2040.00, null,
 2730.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2004179:default', '2004179', 'Toutatis 2009 IAU', 2130.00, null, 9001, null, 850.00, null,
 1015.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');
insert into ssbd_ellipsoid values ('2009:2025143:default', '2025143', 'Itokawa 2009 IAU', 535.00, null, 9001, null, 209.00, null,
 294.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009');






insert into ssbd_ellipsoid values ('2015:0:default', '0', 'Sun 2015 IAU', 695700000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:1-99:spherical', '1-99', 'Spherical Mercury 2015 IAU', 2439400.00, 100., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:1-99:ellipsoidal', '1-99', 'Ellipsoidal Mercury 2015 IAU', 2440530.00, 40., 9001, null, 2438260.00, 40.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:1-99:triaxial', '1-99', 'Triaxial Mercury 2015 IAU', 2440530.00, 40., 9001, null, 2438260.00, 40.,
 2439280.00, 40., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2-99:default', '2-99', 'Venus 2015 IAU', 6051800.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:3-99:spherical', '3-99', 'Spherical Earth 2015 IAU', 6371008.40, .1, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:3-99:ellipsoidal', '3-99', 'Ellipsoidal Earth 2015 IAU', 6378136.60, .1, 9001, null, 6356751.90, .1,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:3-99:ellipsoidal-iau', '3-99', 'Ellipsoidal Earth 2015 IAU Resolution', 6378100., null, 9001, null, 6356800., null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:3-01:default', '3-01', 'Moon 2015 IAU', 1737400.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');

insert into ssbd_ellipsoid values ('2015:4-99:spherical', '4-99', 'Spherical Mars 2015 IAU', 3389500.00, 200., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:4-99:ellipsoidal', '4-99', 'Ellipsoidal Mars 2015 IAU', 3396190.00, 10., 9001, null, 3376200.00, 10.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:4-99:default', '4-99', 'Quadriaxial Mars 2015 IAU', 3396190.00, null, 9001, null, 3373190.00, 10.,
 null, null, 3379210., 10.,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:4-01:spherical', '4-01', 'Spherical Phobos 2015 IAU', 11080.00, 40., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:4-01:triaxial', '4-01', 'Triaxial Phobos 2015 IAU', 13000.00, null, 9001, null, 9100.00, null,
 11400.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:4-02:spherical', '4-02', 'Spherical Deimos 2015 IAU', 6200.00, 250., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:4-02:triaxial', '4-02', 'Triaxial Deimos 2015 IAU', 7800.00, null, 9001, null, 5100.00, null,
 6000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');

insert into ssbd_ellipsoid values ('2015:5-99:spherical', '5-99', 'Spherical Jupiter 2015 IAU', 69911000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:5-99:ellipsoidal', '5-99', 'Ellipsoidal Jupiter 2015 IAU', 71492000.00, 4000., 9001, null, 66854000.00, 10000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:5-01:spherical', '5-01', 'Spherical Io 2015 IAU', 1821490.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:5-01:triaxial', '5-01', 'Triaxial Io 2015 IAU', 1829400.00, null, 9001, null, 1815700.00, null,
 1819400.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:5-02:spherical', '5-02', 'Spherical Europa 2015 IAU', 1560800.00, 300., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:5-02:triaxial', '5-02', 'Triaxial Europa 2015 IAU', 1562600.00, null, 9001, null, 1559500.00, null,
 1560300.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:5-03:default', '5-03', 'Ganymede 2015 IAU', 2631200.00, 1700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:5-04:default', '5-04', 'Callisto 2015 IAU', 2410300.00, 1500., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:5-05:spherical', '5-05', 'Spherical Amalthea 2015 IAU', 83500.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:5-05:triaxial', '5-05', 'Triaxial Amalthea 2015 IAU', 125000.00, null, 9001, null, 64000.00, null,
 73000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:5-06:default', '5-06', 'Himalia 2015 IAU', 85000.00, 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:5-07:default', '5-07', 'Elara 2015 IAU', 40000.00, 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:5-08:default', '5-08', 'Pasiphae 2015 IAU', 18000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:5-09:default', '5-09', 'Sinope 2015 IAU', 14000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:5-10:default', '5-10', 'Lysithea 2015 IAU', 12000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:5-11:default', '5-11', 'Carme 2015 IAU', 15000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:5-12:default', '5-12', 'Ananke 2015 IAU', 10000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:5-13:default', '5-13', 'Leda 2015 IAU', 5000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:5-14:spherical', '5-14', 'Spherical Thebe 2015 IAU', 49300.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:5-14:triaxial', '5-14', 'Triaxial Thebe 2015 IAU', 58000.00, null, 9001, null, 42000.00, null,
 49000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:5-15:spherical', '5-15', 'Spherical Adrastea 2015 IAU', 8200.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:5-15:triaxial', '5-15', 'Triaxial Adrastea 2015 IAU', 10000.00, null, 9001, null, 7000.00, null,
 8000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:5-16:spherical', '5-16', 'Spherical Metis 2015 IAU', 21500.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:5-16:triaxial', '5-16', 'Triaxial Metis 2015 IAU', 30000.00, null, 9001, null, 17000.00, null,
 20000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');

insert into ssbd_ellipsoid values ('2015:6-99:spherical', '6-99', 'Spherical Saturn 2015 IAU', 58232000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-99:ellipsoidal', '6-99', 'Ellipsoidal Saturn 2015 IAU', 60268000.00, 4000., 9001, null, 54364000.00, 10000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-01:spherical', '6-01', 'Spherical Mimas 2015 IAU', 198200.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-01:triaxial', '6-01', 'Triaxial Mimas 2015 IAU', 207800.00, 500., 9001, null, 190600.00, 300.,
 196700.00, 500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-02:spherical', '6-02', 'Spherical Enceladus 2015 IAU', 252100.00, 200., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-02:triaxial', '6-02', 'Triaxial Enceladus 2015 IAU', 256600.00, 600., 9001, null, 248300.00, 200.,
 251400.00, 200., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-03:spherical', '6-03', 'Spherical Tethys 2015 IAU', 531000.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-03:triaxial', '6-03', 'Triaxial Tethys 2015 IAU', 538400.00, 300., 9001, null, 526300.00, 600.,
 528300.00, 1100., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-04:spherical', '6-04', 'Spherical Dione 2015 IAU', 561400.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-04:triaxial', '6-04', 'Triaxial Dione 2015 IAU', 563400.00, 600., 9001, null, 559600.00, 400.,
 561300.00, 500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-05:spherical', '6-05', 'Spherical Rhea 2015 IAU', 763500.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-05:triaxial', '6-05', 'Triaxial Rhea 2015 IAU', 765000.00, 700., 9001, null, 762400.00, 600.,
 763100.00, 600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-06:spherical', '6-06', 'Spherical Titan 2015 IAU', 2575000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-06:bestfit', '6-06', 'Best-fit Spherical Titan 2015 IAU', 2574730.00, 90., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-06:triaxial', '6-06', 'Triaxial Titan 2015 IAU', 2575150.00, 20., 9001, null, 2574470.00, 60.,
 2574780.00, 60., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-07:spherical', '6-07', 'Spherical Hyperion 2015 IAU', 135000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-07:triaxial', '6-07', 'Triaxial Hyperion 2015 IAU', 180100.00, 2000., 9001, null, 102700.00, 4500.,
 133000.00, 4500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-08:spherical', '6-08', 'Spherical Iapetus 2015 IAU', 734300.00, 2800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-08:triaxial', '6-08', 'Triaxial Iapetus 2015 IAU', 745700.00, 2900., 9001, null, 712100.00, 1600.,
 745700.00, 2900., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-09:spherical', '6-09', 'Spherical Phoebe 2015 IAU', 106500.00, 700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-09:triaxial', '6-09', 'Triaxial Phoebe 2015 IAU', 109400.00, 1400., 9001, null, 101800.00, 300.,
 108500.00, 600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-10:spherical', '6-10', 'Spherical Janus 2015 IAU', 89200.00, 800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-10:triaxial', '6-10', 'Triaxial Janus 2015 IAU', 101700.00, 1600., 9001, null, 76300.00, 400.,
 93000.00, 700., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-11:spherical', '6-11', 'Spherical Epimetheus 2015 IAU', 58200.00, 1200., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-11:triaxial', '6-11', 'Triaxial Epimetheus 2015 IAU', 64900.00, 1300., 9001, null, 53000.00, 500.,
 57300.00, 2500., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-12:spherical', '6-12', 'Spherical Helene 2015 IAU', 18000.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-12:triaxial', '6-12', 'Triaxial Helene 2015 IAU', 22500.00, 500., 9001, null, 13300.00, 200.,
 19600.00, 300., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-13:spherical', '6-13', 'Spherical Telesto 2015 IAU', 12400.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-13:triaxial', '6-13', 'Triaxial Telesto 2015 IAU', 16300.00, 500., 9001, null, 9800.00, 300.,
 11800.00, 300., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-14:spherical', '6-14', 'Spherical Calypso 2015 IAU', 9600.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-14:triaxial', '6-14', 'Triaxial Calypso 2015 IAU', 15300.00, 300., 9001, null, 6300.00, 600.,
 9300.00, 2200., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-15:spherical', '6-15', 'Spherical Atlas 2015 IAU', 15100.00, 800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-15:triaxial', '6-15', 'Triaxial Atlas 2015 IAU', 20500.00, 900., 9001, null, 9400.00, 800.,
 17800.00, 700., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-16:spherical', '6-16', 'Spherical Prometheus 2015 IAU', 43100.00, 1200., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-16:triaxial', '6-16', 'Triaxial Prometheus 2015 IAU', 68200.00, 800., 9001, null, 28200.00, 800.,
 41600.00, 1800., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-17:spherical', '6-17', 'Spherical Pandora 2015 IAU', 40600.00, 1500., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-17:triaxial', '6-17', 'Triaxial Pandora 2015 IAU', 52200.00, 1800., 9001, null, 31500.00, 900.,
 40800.00, 2000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-18:spherical', '6-18', 'Spherical Pan 2015 IAU', 14000.00, 1200., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-18:triaxial', '6-18', 'Triaxial Pan 2015 IAU', 17200.00, 1700., 9001, null, 10400.00, 900.,
 15400.00, 1200., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-32:spherical', '6-32', 'Spherical Methone 2015 IAU', 1450.00, 30., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-32:triaxial', '6-32', 'Triaxial Methone 2015 IAU', 1940.00, 20., 9001, null, 1210.00, 20.,
 1290.00, 40., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-33:spherical', '6-33', 'Spherical Pallene 2015 IAU', 2230.00, 70., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-33:triaxial', '6-33', 'Triaxial Pallene 2015 IAU', 2880.00, 70., 9001, null, 1800.00, 70.,
 2080.00, 70., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-34:spherical', '6-34', 'Spherical Polydeuces 2015 IAU', 1300.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-34:triaxial', '6-34', 'Triaxial Polydeuces 2015 IAU', 1500.00, 600., 9001, null, 1000.00, 200.,
 1200.00, 400., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-35:spherical', '6-35', 'Spherical Daphnis 2015 IAU', 3800.00, 800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-35:triaxial', '6-35', 'Triaxial Daphnis 2015 IAU', 4600.00, 700., 9001, null, 2800.00, 800.,
 4500.00, 900., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-49:default', '6-49', 'Anthe 2015 IAU', 500.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-53:spherical', '6-53', 'Spherical Aegaeon 2015 IAU', 330.00, 60., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:6-53:triaxial', '6-53', 'Triaxial Aegaeon 2015 IAU', 700.00, 50., 9001, null, 200.00, 80.,
 250.00, 60., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');

insert into ssbd_ellipsoid values ('2015:7-99:spherical', '7-99', 'Spherical Uranus 2015 IAU', 25362000.00, 7000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:7-99:ellipsoidal', '7-99', 'Ellipsoidal Uranus 2015 IAU', 25559000.00, 4000., 9001, null, 24973000.00, 20000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:7-01:spherical', '7-01', 'Spherical Ariel 2015 IAU', 578900.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:7-01:triaxial', '7-01', 'Triaxial Ariel 2015 IAU', 581100.00, 900., 9001, null, 577700.00, 100.,
 577900.00, 600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:7-02:default', '7-02', 'Umbriel 2015 IAU', 584700.00, 2800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:7-03:default', '7-03', 'Titania 2015 IAU', 788900.00, 1800., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:7-04:default', '7-04', 'Oberon 2015 IAU', 761400.00, 2600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:7-05:spherical', '7-05', 'Spherical Miranda 2015 IAU', 235800.00, 700., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:7-05:triaxial', '7-05', 'Triaxial Miranda 2015 IAU', 240400.00, 600., 9001, null, 232900.00, 1200.,
 234200.00, 900., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:7-06:default', '7-06', 'Cordelia 2015 IAU', 13000.00, 2000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:7-07:default', '7-07', 'Ophelia 2015 IAU', 15000.00, 2000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:7-08:default', '7-08', 'Bianca 2015 IAU', 21000.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:7-09:default', '7-09', 'Cressida 2015 IAU', 31000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:7-10:default', '7-10', 'Desdemona 2015 IAU', 27000.00, 3000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:7-11:default', '7-11', 'Juliet 2015 IAU', 42000.00, 5000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:7-12:default', '7-12', 'Portia 2015 IAU', 54000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:7-13:default', '7-13', 'Rosalind 2015 IAU', 27000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:7-14:default', '7-14', 'Belinda 2015 IAU', 33000.00, 4000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:7-15:default', '7-15', 'Puck 2015 IAU', 77000.00, 51900., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');

insert into ssbd_ellipsoid values ('2015:8-99:spherical', '8-99', 'Spherical Neptune 2015 IAU', 24622000.00, 19000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:8-99:ellipsoidal', '8-99', 'Ellipsoidal Neptune 2015 IAU', 24764000.00, 15000., 9001, null, 24341000.00, 30000.,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:8-01:default', '8-01', 'Triton 2015 IAU', 1352600.00, 2400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:8-02:default', '8-02', 'Nereid 2015 IAU', 170000.00, 25000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:8-03:default', '8-03', 'Naiad 2015 IAU', 29000.00, 6000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:8-04:default', '8-04', 'Thalassa 2015 IAU', 40000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:8-05:default', '8-05', 'Despina 2015 IAU', 74000.00, 10000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:8-06:default', '8-06', 'Galatea 2015 IAU', 79000.00, 12000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:8-07:spherical', '8-07', 'Spherical Larissa 2015 IAU', 96000.00, 7000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:8-07:ellipsoidal', '8-07', 'Ellipsoidal Larissa 2015 IAU', 104000.00, null, 9001, null, 89000.00, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:8-08:spherical', '8-08', 'Spherical Proteus 2015 IAU', 208000.00, 8000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:8-08:triaxial', '8-08', 'Triaxial Proteus 2015 IAU', 218000.00, null, 9001, null, 201000.00, null,
 208000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');

insert into ssbd_ellipsoid values ('2015:9-99:default', '9-99', 'Pluto 2015 IAU', 1188300.00, 1600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:9-01:default', '9-01', 'Charon 2015 IAU', 606000.00, 1000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:1000005:spherical', '1000005', 'Spherical Borrelly 2015 IAU', 4220.00, 50., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:1000005:measured', '1000005', 'Measured Borrelly 2015 IAU', 3500.00, 200., 9001, null, -1, null,
  null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:1000012:spherical', '1000012', 'Spherical Churyumov-Gerasimenko 2015 IAU', 1650.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:1000012:triaxial', '1000012', 'Triaxial Churyumov-Gerasimenko 2015 IAU', 2400.00, null, 9001, null, 1200.00, null,
 1550.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:1000036:default', '1000036', 'Halley 2015 IAU', 8000.00, 500., 9001, null, 4000.00, 250.,
 4000.00, 250., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:1000041:spherical', '1000041', 'Spherical Hartley 2 2015 IAU', 580.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:1000041:triaxial', '1000041', 'Triaxial Hartley 2 2015 IAU', 340.00, null, 9001, null, 1160.00, null,
 1160.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:1000093:spherical', '1000093', 'Spherical Tempel 1 2015 IAU', 3000.00, 100., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:1000093:default', '1000093', 'Biaxial Tempel 1 2015 IAU', 3700.00, null, 9001, null, 2500., null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:1000107:spherical', '1000107', 'Spherical Wild 2 2015 IAU', 1975.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:1000107:triaxial', '1000107', 'Triaxial Wild 2 2015 IAU', 2700.00, null, 9001, null, 1500.00, null,
 1900.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:9511010:spherical', '9511010', 'Spherical Gaspra 2015 IAU', 6100.00, 400., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:9511010:triaxial', '9511010', 'Triaxial Gaspra 2015 IAU', 9100.00, null, 9001, null, 4400.00, null,
 5200.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2431010:spherical', '2431010', 'Spherical Ida 2015 IAU', 15650.00, 600., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2431010:triaxial', '2431010', 'Triaxial Ida 2015 IAU', 26800.00, null, 9001, null, 7600.00, null,
 12000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2000001:spherical', '2000001', 'Spherical Ceres 2015 IAU', 470000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2000001:ellipsoidal', '2000001', 'Ellipsoidal Ceres 2015 IAU', 487300.00, null, 9001, null, 446000.00, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2000004:default', '2000004', 'Vesta 2015 IAU', 289000.00, 5000., 9001, null, 229000.00, 5000.,
 280000.00, 5000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2000016:spherical', '2000016', 'Spherical Psyche 2015 IAU', 113000.00, 23000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2000016:triaxial', '2000016', 'Triaxial Psyche 2015 IAU', 139500.00, 13950., 9001, null, 94500.00, 9450.,
 116000.0, 11600., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2000021:spherical', '2000021', 'Spherical Lutetia 2015 IAU', 52500.00, 2500., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2000021:triaxial', '2000021', 'Triaxial Lutetia 2015 IAU', 62000.00, 2500., 9001, null, 46500.00, 6500.,
 50500.00, 2000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:-2000052:spherical', '-2000052', 'Spherical 52 Europa 2015 IAU', 157500.00, 7000., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:-2000052:triaxial', '-2000052', 'Triaxial 52 Europa 2015 IAU', 189500.00, 16000., 9001, null, 124500.00, 10000.,
 165000.00, 8000., null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2000216:default', '2000216', 'Kleopatra 2015 IAU', 108500.00, null, 9001, null, 40500.00, null,
 47000.00, null, null, null,
 null, null);
insert into ssbd_ellipsoid values ('2015:2000433:spherical', '2000433', 'Spherical Eros 2015 IAU', 8450.00, 20., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2000433:triaxial', '2000433', 'Triaxial Eros 2015 IAU', 17000.00, null, 9001, null, 5500.00, null,
 5500.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2000511:spherical', '2000511', 'Spherical Davida 2015 IAU', 150000.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2000511:triaxial', '2000511', 'Triaxial Davida 2015 IAU', 180000.00, null, 9001, null, 127000.00, null,
 147000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2000253:spherical', '2000253', 'Spherical Mathilde 2015 IAU', 26500.00, 1300., 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2000253:triaxial', '2000253', 'Triaxial Mathilde 2015 IAU', 33000.00, null, 9001, null, 23000.00, null,
 24000.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2002867:spherical', '2002867', 'Spherical Steins 2015 IAU', 2700.00, null, 9001, null, null, null,
 null, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2002867:triaxial', '2002867', 'Triaxial Steins 2015 IAU', 3240.00, null, 9001, null, 2040.00, null,
 2730.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2004179:default', '2004179', 'Toutatis 2015 IAU', 2130.00, null, 9001, null, 850.00, null,
 1015.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');
insert into ssbd_ellipsoid values ('2015:2025143:default', '2025143', 'Itokawa 2015 IAU', 268.00, null, 9001, null, 104.00, null,
 147.00, null, null, null,
 null, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2015');

-- on construit un identifiant de système de méridiens origines de la manière suivante :
-- <identifiant de corps>:<identifiant du système pour le corps>
--
-- exemple : '1-99:crust' identifie le système de méridiens origines attachés à la croûte de Mercure
insert into ssbd_primemeridiansystem values ('1-99', 'crust', 'Mercury crust system', null, null);
insert into ssbd_primemeridiansystem values ('2-99', 'crust', 'Venus crust system', null, null);
insert into ssbd_primemeridiansystem values ('4-99', 'crust', 'Mars crust system', null, null);
insert into ssbd_primemeridiansystem values ('5-99', '1', 'System I Jupiter', 'Refers to the mean atmospheric equatorial rotation.', null);
insert into ssbd_primemeridiansystem values ('5-99', '2', 'System II Jupiter', 'Refers to the mean atmospheric rotation north of the south component of the north equatorial belt, and south of the north component of the south equatorial belt.', null);
insert into ssbd_primemeridiansystem values ('5-99', '3', 'System III Jupiter', 'Refers to the magnetic field rotation.', null);
insert into ssbd_primemeridiansystem values ('6-99', '1', 'System I Saturn', 'Refers to the mean atmospheric equatorial rotation.', null);
insert into ssbd_primemeridiansystem values ('6-99', '2', 'System II Saturn', 'Refers to the mean atmospheric rotation north of the south component of the north equatorial belt, and south of the north component of the south equatorial belt.', null);
insert into ssbd_primemeridiansystem values ('6-99', '3', 'System III Saturn', 'Refers to the magnetic field rotation.', null);
insert into ssbd_primemeridiansystem values ('7-99', '1', 'System I Uranus', 'Refers to the mean atmospheric equatorial rotation.', null);
insert into ssbd_primemeridiansystem values ('7-99', '2', 'System II Uranus', 'Refers to the mean atmospheric rotation north of the south component of the north equatorial belt, and south of the north component of the south equatorial belt.', null);
insert into ssbd_primemeridiansystem values ('7-99', '3', 'System III Uranus', 'Refers to the magnetic field rotation.', null);
insert into ssbd_primemeridiansystem values ('8-99', '2', 'System II Neptune', 'Refers to the rotation of optically observed features in the Neptunian atmosphere.', null);

-- on construit un identifiant de méridien origine de la manière suivante :
-- <identifiant de sytème de méridien origine>:<identifiant de méridien origine dans le système>
--
-- exemple '1-99:crust:hun_kal' identifie le méridien origine 'Hun Kal' du système de méridiens origines attachés à la
-- croûte de Mercure
insert into ssbd_primemeridian values ('1-99', 'crust', 'hun_kal', 'Hun Kal Mercury Meridian', 0., 'prograde', 20., 20., 'prograde', 9102, null, null);
insert into ssbd_primemeridian values ('2-99', 'crust', 'ariadne', 'Ariadne Venus Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, null, null);
insert into ssbd_primemeridian values ('4-99', 'crust', 'airy-0', 'Airy-0 Mars Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, null, null);
insert into ssbd_primemeridian values ('5-99', '1', 'pm', 'System I Jupiter Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, null, null);
insert into ssbd_primemeridian values ('5-99', '2', 'pm', 'System II Jupiter Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, null, null);
insert into ssbd_primemeridian values ('5-99', '3', 'pm', 'System III Jupiter Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, null, null);
insert into ssbd_primemeridian values ('6-99', '1', 'pm', 'System I Saturn Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, null, null);
insert into ssbd_primemeridian values ('6-99', '2', 'pm', 'System II Saturn Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, null, null);
insert into ssbd_primemeridian values ('6-99', '3', 'pm', 'System III Saturn Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, null, null);
insert into ssbd_primemeridian values ('7-99', '1', 'pm', 'System I Uranus Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, null, null);
insert into ssbd_primemeridian values ('7-99', '2', 'pm', 'System II Uranus Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, null, null);
insert into ssbd_primemeridian values ('7-99', '3', 'pm', 'System III Uranus Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, null, null);
insert into ssbd_primemeridian values ('8-99', '2', 'pm', 'System II Neptune Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, null, null);


insert into ssbd_range values (1, -180., 180., 'Typically used for earth longitudes.', null);
insert into ssbd_range values (2, 0., 360., 'Typically used for planetary longitudes.', null);


insert into ssbd_datum values ('2000:1-99', 'Mercury 2000', 'geodetic', null, null, '2000:1-99:default', '1-99', 'crust', 'hun_kal', 'Planetology.', null, null);


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


insert into ssbd_coordinatereferencesystem values ('2000:1-99:planetocentric', 'Mercury 2000 planetocentric 3D',
 'planetocentric 3D', 'spherical:3d:direct', '2000:1-99', null, null, null, null, null, null);
insert into ssbd_coordinatereferencesystem values ('2000:1-99:planetographic', 'Mercury 2000 planetographic 3D',
 'planetographic 3D', 'ellipsoidal:3d:direct', '2000:1-99', null, null, null, null, null, null);


insert into ssbd_coordinatereferencesystemrange values ('2000:1-99:planetocentric', 2, 'spherical:3d:direct', 2, null, null);
insert into ssbd_coordinatereferencesystemrange values ('2000:1-99:planetographic', 2, 'ellipsoidal:3d:direct', 2, null, null);

commit;
