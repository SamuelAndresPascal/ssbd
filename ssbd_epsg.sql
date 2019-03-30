-- title: SSBD (Solar System Body Database) optional integrity constraints to EPSG 9.5.5 extract
--
-- author: Samuel Andrés

begin;

alter table ssbd_ellipsoid add constraint fk_uom_code4 foreign key ( uom_code ) references epsg_unitofmeasure ( uom_code ) ;
alter table ssbd_primemeridian add constraint fk_uom_code foreign key ( uom_code ) references epsg_unitofmeasure ( uom_code ) ;
alter table ssbd_coordinatereferencesystemrange add constraint fk_coord_axis_code foreign key ( coord_axis_code ) references epsg_coordinateaxis ( coord_axis_code ) ;

commit;
