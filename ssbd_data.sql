-- title: SSBD (Solar System Body Database) data
--
--
--
-- author: Samuel Andrés

begin;

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
insert into ssbd_body values (699, 'Saturn', 'direct', null, null);
insert into ssbd_body values (799, 'Uranus', 'indirect', null, null);
insert into ssbd_body values (899, 'Neptune', 'direct', null, null);
insert into ssbd_body values (999, 'Pluto', 'indirect', null, null);


insert into ssbd_ellipsoid values (199, 1, 'Mercury 2000 IAU', 2439700.00, 1000., 9001, null, null, null,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (299, 2, 'Venus 2000 IAU', 6051800.00, 1000., 9001, null, null, null,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (399, 3, 'Spherical Earth 2000 IAU', 6371000.00, 10., 9001, null, null, null,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (399, 4, 'Ellipsoidal Earth 2000 IAU', 6378140.00, 10., 9001, null, 6356750.00, 10.,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (499, 5, 'Spherical Mars 2000 IAU', 3389500.00, 200., 9001, null, null, null,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (499, 6, 'Ellipsoidal Mars 2000 IAU', 3396190.00, 100., 9001, null, 3376200.00, 100.,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (499, 7, 'Quadriaxial Mars 2000 IAU', 3396190.00, 100., 9001, null, 3373190.00, 100.,
 null, null, 3379210.00, 100., 'This ellipsoid is considered quadriaxial even if subplanetary and along orbit equatorial axis are equal.', 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (599, 8, 'Spherical Jupiter 2000 IAU', 69911000.00, 6000., 9001, null, null, null,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (599, 9, 'Ellipsoidal Jupiter 2000 IAU', 71492000.00,  4000., 9001, null, 66854000.00, 10000.,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (699, 10, 'Spherical Saturn 2000 IAU', 58232000.00, 6000., 9001, null, null, null,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (699, 11, 'Ellipsoidal Saturn 2000 IAU', 60268000.00,  4000., 9001, null, 54364000.00, 10000.,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (799, 12, 'Spherical Uranus 2000 IAU', 25362000.00, 7000., 9001, null, null, null,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (799, 13, 'Ellipsoidal Uranus 2000 IAU', 25559000.00,  4000., 9001, null, 24973000.00, 20000.,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (899, 14, 'Spherical Neptune 2000 IAU', 24622000.00, 19000., 9001, null, null, null,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (899, 15, 'Ellipsoidal Neptune 2000 IAU', 24764000.00,  15000., 9001, null, 24341000.00, 30000.,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (999, 16, 'Spherical Pluto 2000 IAU', 1195000.00,  5000., 9001, null, null, null,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');

insert into ssbd_ellipsoid values (301, 17, 'Spherical Moon 2000 IAU', 1737400.00, 1000., 9001, null, null, null,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (401, 18, 'Spherical Phobos 2000 IAU', 11100.00, 150., 9001, null, null, null,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (401, 19, 'Triaxial Phobos 2000 IAU', 13400.00, null, 9001, null, 9200.00, null,
 11200.00, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (402, 20, 'Spherical Deimos 2000 IAU', 6200.00, 180., 9001, null, null, null,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (402, 21, 'Triaxial Deimos 2000 IAU', 7500.00, null, 9001, null, 5200.00, null,
 6100.00, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (516, 22, 'Spherical Metis 2000 IAU', 21500., 4000., 9001, null, null, null,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (516, 23, 'Ellipsoidal Metis 2000 IAU', 30000., null, 9001, null, 20000., null,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (515, 24, 'Spherical Adrastea 2000 IAU', 8200., 4000., 9001, null, null, null,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (515, 25, 'Triaxial Adrastea 2000 IAU', 10000., null, 9001, null, 7000., null,
 8000., null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (505, 26, 'Spherical Amalthea 2000 IAU', 83500., 3000., 9001, null, null, null,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (505, 27, 'Triaxial Amalthea 2000 IAU', 125000., null, 9001, null, 73000., null,
 64000., null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (514, 28, 'Spherical Thebe 2000 IAU', 49300., 4000., 9001, null, null, null,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (514, 29, 'Triaxial Thebe 2000 IAU', 58000., null, 9001, null, 49000., null,
 42000., null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (501, 30, 'Spherical Io 2000 IAU', 1821460., null, 9001, null, null, null,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (501, 31, 'Triaxial Io 2000 IAU', 1829400., null, 9001, null, 1819300., null,
 1815700., null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (502, 32, 'Spherical Europa 2000 IAU', 1562090., null, 9001, null, null, null,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (502, 33, 'Triaxial Europa 2000 IAU', 1564130., null, 9001, null, 1561230., null,
 1560930., null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (503, 34, 'Spherical Ganymede 2000 IAU', 2632345., null, 9001, null, null, null,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (503, 35, 'Triaxial Ganymede 2000 IAU', 2632400., null, 9001, null, 2632290., null,
 2632350., null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (504, 36, 'Spherical Callisto 2000 IAU', 2409300., null, 9001, null, null, null,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (504, 37, 'Triaxial Callisto 2000 IAU', 2409400., null, 9001, null, 2409200., null,
 2409300., null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (513, 38, 'Leda 2000 IAU', 5000., null, 9001, null, null, null,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (506, 39, 'Himalia 2000 IAU', 85000., 10000., 9001, null, null, null,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (510, 40, 'Lysithea 2000 IAU', 12000., null, 9001, null, null, null,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (507, 41, 'Elara 2000 IAU', 40000., 10000., 9001, null, null, null,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (512, 42, 'Ananke 2000 IAU', 10000., null, 9001, null, null, null,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (511, 43, 'Carme 2000 IAU', 15000., null, 9001, null, null, null,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (508, 44, 'Pasiphae 2000 IAU', 18000., null, 9001, null, null, null,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (509, 45, 'Sinope 2000 IAU', 14000., null, 9001, null, null, null,
 null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');


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
