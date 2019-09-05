-- title: SSBD (Solar System Body Database) optional integrity constraints to EPSG 9.5.5 extract
--
-- author: Samuel Andrés

begin;

alter table ssbd_coordinateaxis add constraint fk_coord_axis_name_code foreign key ( coord_axis_name_code ) references epsg_coordinateaxisname( coord_axis_name_code );
alter table ssbd_coordinateaxis add constraint fk_uom_code2 foreign key ( uom_code ) references epsg_unitofmeasure ( uom_code );
alter table ssbd_ellipsoid add constraint fk_uom_code4 foreign key ( uom_code ) references epsg_unitofmeasure ( uom_code ) ;
alter table ssbd_primemeridiansystem add constraint fk_uom_code foreign key ( uom_code ) references epsg_unitofmeasure ( uom_code ) ;
alter table ssbd_primemeridian add constraint fk_uom_code foreign key ( uom_code ) references epsg_unitofmeasure ( uom_code ) ;

commit;
