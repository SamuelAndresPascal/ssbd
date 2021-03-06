-- title: drop script
--
-- comment: Ordered deletion of ssbd schema and epsg dumped tables.
--
-- author: Samuel Andrés

-- drop ssbd schema
drop table ssbd_coordinatereferencesystemrange;
drop table ssbd_coordinatereferencesystem;
drop table ssbd_coordinateaxis;
drop table ssbd_coordinatesystem;
drop table ssbd_datum;
drop table ssbd_primemeridian;
drop table ssbd_range;
drop table ssbd_primemeridiansystem;
drop table ssbd_ellipsoid;
drop table ssbd_phenomenon;
drop table ssbd_change;
