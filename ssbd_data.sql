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


insert into ssbd_ellipsoid values (199, 502000199, 'Mercury 2000 IAU', 2439700.00, 9001, null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (299, 502000299, 'Venus 2000 IAU', 6051800.00, 9001, null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (399, 502000399, 'Spherical Earth 2000 IAU', 6371000.00, 9001, null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (399, 512000399, 'Ellipsoidal Earth 2000 IAU', 6378140.00, 9001, null, 6356750.00, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (499, 502000499, 'Spherical Mars 2000 IAU', 3389500.00, 9001, null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (499, 512000499, 'Ellipsoidal Mars 2000 IAU', 3396190.00, 9001, null, 3376200.00, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (499, 522000499, 'Quadriaxial Mars 2000 IAU', 3396190.00, 9001, null, 3373190.00, null, 3379210.00, 'This ellipsoid is considered quadriaxial even if subplanetary and along orbit equatorial axis are equal.', 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (599, 502000599, 'Spherical Jupiter 2000 IAU', 69911000.00, 9001, null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (599, 512000599, 'Ellipsoidal Jupiter 2000 IAU', 71492000.00, 9001, null, 66854000.00, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (301, 502000301, 'Spherical Moon 2000 IAU', 1737400.00, 9001, null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (401, 502000401, 'Spherical Phobos 2000 IAU', 11100.00, 9001, null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (401, 512000401, 'Triaxial Phobos 2000 IAU', 13400.00, 9001, null, 9200.00, 11200.00, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (402, 502000402, 'Spherical Deimos 2000 IAU', 6200.00, 9001, null, null, null, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');
insert into ssbd_ellipsoid values (402, 512000402, 'Triaxial Deimos 2000 IAU', 7500.00, 9001, null, 5200.00, 6100.00, null, null, 'Report of the IAU/IAG working group on cartographic coordinates and rotational elements of the planets and satellites: 2000');


insert into ssbd_primemeridiansystem values (160199, 'Mercury crust system', 199, null, null);
insert into ssbd_primemeridiansystem values (160299, 'Venus crust system', 299, null, null);
insert into ssbd_primemeridiansystem values (160499, 'Mars crust system', 499, null, null);
insert into ssbd_primemeridiansystem values (160599, 'System I Jupiter', 599, 'Refers to the mean atmospheric equatorial rotation.', null);
insert into ssbd_primemeridiansystem values (161599, 'System II Jupiter', 599, 'Refers to the mean atmospheric rotation north of the south component of the north equatorial belt, and south of the north component of the south equatorial belt.', null);
insert into ssbd_primemeridiansystem values (162599, 'System III Jupiter', 599, 'Refers to the magnetic field rotation.', null);
insert into ssbd_primemeridiansystem values (160699, 'System I Saturn', 699, 'Refers to the mean atmospheric equatorial rotation.', null);
insert into ssbd_primemeridiansystem values (161699, 'System II Saturn', 699, 'Refers to the mean atmospheric rotation north of the south component of the north equatorial belt, and south of the north component of the south equatorial belt.', null);
insert into ssbd_primemeridiansystem values (162699, 'System III Saturn', 699, 'Refers to the magnetic field rotation.', null);
insert into ssbd_primemeridiansystem values (160799, 'System I Uranus', 799, 'Refers to the mean atmospheric equatorial rotation.', null);
insert into ssbd_primemeridiansystem values (161799, 'System II Uranus', 799, 'Refers to the mean atmospheric rotation north of the south component of the north equatorial belt, and south of the north component of the south equatorial belt.', null);
insert into ssbd_primemeridiansystem values (162799, 'System III Uranus', 799, 'Refers to the magnetic field rotation.', null);
insert into ssbd_primemeridiansystem values (161899, 'System II Neptune', 799, 'Refers to the rotation of optically observed features in the Neptunian atmosphere.', null);


insert into ssbd_primemeridian values (170160199, 'Hun Kal Mercury Meridian', 0., 'prograde', 20., 20., 'prograde', 9102, 160199, null, null);
insert into ssbd_primemeridian values (170160299, 'Ariadne Venus Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, 160299, null, null);
insert into ssbd_primemeridian values (170160499, 'Airy-0 Mars Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, 160499, null, null);
insert into ssbd_primemeridian values (170160599, 'System I Jupiter Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, 160599, null, null);
insert into ssbd_primemeridian values (170161599, 'System II Jupiter Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, 161599, null, null);
insert into ssbd_primemeridian values (170162599, 'System III Jupiter Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, 162599, null, null);
insert into ssbd_primemeridian values (170160699, 'System I Saturn Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, 160699, null, null);
insert into ssbd_primemeridian values (170161699, 'System II Saturn Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, 161699, null, null);
insert into ssbd_primemeridian values (170162699, 'System III Saturn Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, 162699, null, null);
insert into ssbd_primemeridian values (170160799, 'System I Uranus Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, 160799, null, null);
insert into ssbd_primemeridian values (170161799, 'System II Uranus Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, 161799, null, null);
insert into ssbd_primemeridian values (170162799, 'System III Uranus Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, 162799, null, null);
insert into ssbd_primemeridian values (170161899, 'System II Neptune Meridian', 0., 'prograde', .0, .0, 'prograde', 9102, 161899, null, null);

insert into ssbd_range values (300001, -180., 180., 'retrograde', 'Typically used for earth longitudes.', null);
insert into ssbd_range values (300002, 0., 360., 'prograde', 'Typically used for planetary longitudes.', null);


insert into ssbd_datum values (42000199, 'Mercury 2000', 'geodetic', null, null, 502000199, 170160199, 'Planetology.', null, null);


insert into ssbd_coordinatereferencesystem values (19900, 'Mercury 2000 planetocentric', 'geocentric', 6404, 42000199, null, null, null, null, null, null);
insert into ssbd_coordinatereferencesystem values (19901, 'Mercury 2000 planetographic 3D', 'geographic 3D', 6423, 42000199, null, null, null, null, null, null);


insert into ssbd_coordinatereferencesystemrange values (19900, 300002, 61, null, null);
insert into ssbd_coordinatereferencesystemrange values (19901, 300002, 109, null, null);

commit;
