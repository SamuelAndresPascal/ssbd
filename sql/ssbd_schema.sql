-- title: SSBD (Solar System Body Database) schema
--
-- The schema for referencement on solar system bodies is inspired from the EPSG schema. The SSBD schema is under
-- constuction.
--
-- author: Samuel Andrés

begin;

create table ssbd_change (
    change_code                                        varchar(255),
    report_date                                        date not null,
    date_closed                                        date,
    reporter                                           varchar(254) not null,
    request                                            varchar(254) not null,
    tables_affected                                    varchar(254),
    codes_affected                                     varchar(254),
    change_comment                                     varchar(254),
    action                                             varchar(4000),
    constraint pk_change primary key ( change_code )
);


-- phenomenon (concept code : PHENOMENON)
--
-- purpose: Information of the phenomenon on which a reference system is defined.
--
-- phenomenon_code: for the moment, identifier derived from naif codes, but it seems they are not the official names
-- used by the IAU
--
-- phenomenon_name: usual phenomenon name
--
-- see: https://naif.jpl.nasa.gov/pub/naif/toolkit_docs/FORTRAN/req/naif_ids.html
-- see: https://planetarynames.wr.usgs.gov/Page/Planets
-- see: "planetary_name" table from "planetary_name.sql" script for a future merge
create table ssbd_phenomenon (
    phenomenon_code                                    varchar(254),
    phenomenon_name                                    varchar(80) not null,
    remarks                                            varchar(254),
    information_source                                 varchar(254),
    constraint pk_phenomenon primary key ( phenomenon_code )
);

comment on table ssbd_phenomenon is 'The table of the solar system bodies.';


-- ellipsoid (concept code : ELLIPSOID)
--
-- purpose: Information on shape representation of bodies. There is no absolute link between a shape and a body, so
-- that an ellipsoid can potentially be used to approximate the shape of distinct bodies. This is not very probable for
-- the main solar system bodies like planets or satellites, but may be usefull for other bodies classified by shape and
-- size.
--
-- phenomenon_code: this column is indicative and does not focus on a phenomenon an ellipsoid would be exclusively used
-- for, but possibly the phenomenon for which it has been defined first
--
-- semi_major_axis: (subplanetary) equatorial radius
--
-- uom_code: unit code for radius measurements (EPSG code)
--
-- inv_flattening: for biaxial ellipsoids only if semi_minor_axis is null
--
-- semi_minor_axis: (north) pole radius, may be null for biaxial ellipsoids if inv_flattening is not null
--
-- semi_axis_b: along orbit equatorial radius if it differs from subplanetary equatorial radius, null otherwise
--
-- semi_axis_s: south pole radius if it differs from north pole radius, null otherwise
--
-- see: https://github.com/USGS-Astrogeology/GDAL_scripts/blob/master/OGC_IAU2000_WKT_v2/Docs/IAU2000_Cartographic.pdf (2000)
-- see: https://apps.dtic.mil/dtic/tr/fulltext/u2/a471037.pdf (2006)
-- see: https://aa.usno.navy.mil/publications/reports/Archinaletal2011a.pdf (2009)
-- see: https://link.springer.com/article/10.1007/s10569-011-9362-2 (erratum to 2006/2009)
-- see: https://astropedia.astrogeology.usgs.gov/download/Docs/WGCCRE/WGCCRE2015reprint.pdf (2015)
create table ssbd_ellipsoid (
    ellipsoid_code                                     varchar(254) not null,
    phenomenon_code                                    varchar(254),
    ellipsoid_name                                     varchar(80) not null,
    semi_major_axis                                    double precision not null,
    semi_major_axis_error                              double precision,
    uom_code                                           varchar(80) not null,
    inv_flattening                                     double precision,
    semi_minor_axis                                    double precision,
    second_parameter_error                             double precision,
    semi_axis_b                                        double precision,
    semi_axis_b_error                                  double precision,
    semi_axis_s                                        double precision,
    semi_axis_s_error                                  double precision,
    -- ellipsoid_shape                                    smallint not null,
    remarks                                            varchar(254),
    information_source                                 varchar(254),
    data_source                                        varchar(40) not null,
    revision_date                                      date not null,
    change_code                                        varchar(255),
    deprecated                                         smallint not null,
    constraint pk_ellipsoid primary key ( ellipsoid_code )
);

alter table ssbd_ellipsoid add constraint fk_phenomenon_code foreign key ( phenomenon_code ) references ssbd_phenomenon ( phenomenon_code ) ;
alter table ssbd_ellipsoid add constraint fk_change_code foreign key ( change_code ) references ssbd_change ( change_code ) ;

comment on column ssbd_ellipsoid.phenomenon_code is 'This column is optional and indicative about the phenomenon for which the ellipsoid has been defined. It may be null and even if it is not, it does not mean the ellipsoid is exclusively defined for the related phenomenon.';


-- prime meridian system (concept code : PMS)
--
-- purpose: information on the physical phenomenon that provides the reference by which related prime meridians are
-- defined (planet crust, atmospherical or magnetic phenomenon...)
--
-- rotation: rotation relative to the International Celestial Reference Frame
--
-- note: It would be interesting to reference the absolute primeridian of a given system, but it would significates two
-- opposite foreign key constraints. May be for a next update...
create table ssbd_primemeridiansystem (
    phenomenon_code                                    varchar(254) not null,
    prime_meridian_system_code                         varchar(254) not null,
    prime_meridian_system_name                         varchar(80) not null,
    rotation                                           double precision,
    rotation_error                                     double precision,
    uom_code                                           varchar(80),
    remarks                                            varchar(254),
    information_source                                 varchar(254),
    data_source                                        varchar(40) not null,
    revision_date                                      date not null,
    change_code                                        varchar(255),
    deprecated                                         smallint not null,
    constraint pk_primemeridiansystem primary key ( phenomenon_code, prime_meridian_system_code )
);

alter table ssbd_primemeridiansystem add constraint fk_phenomenon_code foreign key ( phenomenon_code ) references ssbd_phenomenon ( phenomenon_code ) ;
alter table ssbd_primemeridiansystem add constraint fk_change_code foreign key ( change_code ) references ssbd_change ( change_code ) ;

comment on column ssbd_primemeridiansystem.phenomenon_code is 'This column is mandatory and defines the phenomenon on which meridians and datums are defined.';


-- prime meridian (concept code : PM)
--
-- purpose: The prime meridian is an abstract concept linking the "reference meridian" (i.e. the meridian which passes
-- through an observable reference) to the "longitude origin" (i.e. the meridian on which the longitude is abitrary
-- defined to 0). On Earth, longitude is set to 0 on the very reference meridian, but both concepts may differ on other
-- bodies.
--
-- Following this acceptation, "prime meridian" is no longer a synonym of "reference meridian" or "longitude origin"
-- but only the link, between different couples (longitude origin, reference meridian) of a given prime meridian system
-- on a phenomenon (i.e. Greenwich longitudes on earth crust).
--
-- Earth usage is to give a single significance to "reference meridian" and "origin of longitudes". So, there is no
-- need to distinguish both concepts. Since it is necessary to split longitude origin considerations from reference
-- meridian considerations in planetology, the natural issue arises of the location of the prime meridian on the
-- origin of longitudes or on the reference meridian. As there are arguments for both conventions, there is however no
-- reason for the prime meridian to be located at the same place of these two particular longitudes. Hence, we give
-- here the possibility to give an arbitrary location to the prime meridian.
--
-- Schema (LO: longitude origin; PM: prime meridian; RM: reference meridian):
--
--  [==========reference meridian A==========]                          [=======reference meridian B=======]
--  [=======(other reference meridian)=======]                          [(absolute body reference meridian)]
--
--  LO            PM                       RM                            LO                  PM           RM
--   |             x                        :                            |                   x            :
--   |             x                        :                            |                   x            :
--   |             x                        : _                          |                   x           _:
--   |             x                       _:/ \                         |                   x          / :\  physical
--   |             x                      | : _| physical ref. (A)       |                   x          \ : | ref. (B)
--   |             x                       \:_|    (crater)              |                   x           \:_\ (crater)
--   |             x                        :                            |                   x            :
--   |             x                        :                            |                   x            :
--   |             x                        :                            |                   x            :
--   |             x                        :                            |                   x            :
--   |             x                        :                            |                   x            :
--   |             x                        :                            |                   x            :
--   |             x                        :                            |                   x            :
--   |             x                        :                            |                   x            :
--
-- RELATIVE LONGITUDE : prime meridian B to prime meridian A :
--
--   |             x                        :                            |                   x            :
--   |             x <======================:============================|================== x            :
--   |             x                        :                            |                   x            :
--
-- Prime meridian a relative longitude is given from the absolute prime meridian for the given body (i.e. the equivalent
-- of the Greenwich meridian). The direction of this longitude
--
--
-- REFERENCE MERIDIAN LONGITUDE : angle between the origin of longitudes and the reference meridian
--
-- for (A) :
--   |             x                        :
--   | ============x======================> :
--   |             x                        :
--
-- for (B) :
--                                                                       |                   x            :
--                                                                       | ==================x==========> :
--                                                                       |                   x            :
--
--
-- PRIME MERIDIAN LONGITUDE : angle between the origin of longitudes and the prime meridian
--
-- for (A) :
--   |             x                        :
--   | ==========> x                        :
--   |             x                        :
--
-- for (B) :
--                                                                       |                   x            :
--                                                                       | ================> x            :
--                                                                       |                   x            :
--
--
--
--
--
-- relative_longitude: Longitude of the prime meridian relatively to the absolute prime meridian of the prime meridian
-- system.
--
-- relative_longitude_orientation: The orientation of positive longitude for the relative longitude measurement. The
-- orientation may be based on the prime meridian system rotation (prograde, retrograde) or based on the celestial
-- reference frame of the prime meridian system (direct, indirect). NULL if and only if the meridian is the absolute
-- prime meridian of the prime meridian system.
--
-- reference_meridian_longitude: Longitude of the reference meridian (from the longitude origin). It is the longitude
-- where the physical reference passes through.
--
-- prime_meridian longitude: Longitude of the prime meridian (from the longitude origin). It is the longitude of the
-- meridian which is separated of a "relative_longitude" angle from the absolute prime meridian of the prime meridian
-- system.
--
-- longitude_origin_orientation: The orientation of positive longitude for reference meridian and prime meridian
-- longitude measurements. The orientation may be based on the planet rotation (prograde, retrograde) or
-- based on the celestial reference frame of the prime meridian system (direct, indirect).
--
-- system_code: The code of the prime meridian system.
create table ssbd_primemeridian (
    phenomenon_code                                    varchar(254) not null,
    system_code                                        varchar(254) not null,
    prime_meridian_code                                varchar(254) not null,
    prime_meridian_name                                varchar(80) not null,
    relative_longitude                                 double precision not null,
    relative_longitude_orientation                     varchar(24),
    reference_meridian_longitude                       double precision not null,
    prime_meridian_longitude                           double precision not null,
    longitude_orientation                              varchar(24) not null,
    uom_code                                           varchar(80) not null,
    remarks                                            varchar(254),
    information_source                                 varchar(254),
    data_source                                        varchar(40) not null,
    revision_date                                      date not null,
    change_code                                        varchar(255),
    deprecated                                         smallint not null,
    constraint pk_primemeridian primary key ( phenomenon_code, system_code, prime_meridian_code ),
    constraint ck_primemeridian_relative_longitude_orientation check (relative_longitude_orientation in ('direct', 'indirect', 'prograde', 'retrograde')),
    constraint ck_primemeridian_longitude_orientation check (longitude_orientation in ('direct', 'indirect', 'prograde', 'retrograde'))
);

alter table ssbd_primemeridian add constraint fk_system_code foreign key ( phenomenon_code, system_code ) references ssbd_primemeridiansystem ( phenomenon_code, prime_meridian_system_code ) ;
alter table ssbd_primemeridian add constraint fk_change_code foreign key ( change_code ) references ssbd_change ( change_code ) ;

comment on column ssbd_primemeridian.relative_longitude is 'Angle from the absolute prime meridian of the meridian system to the current prime meridian.';
comment on column ssbd_primemeridian.reference_meridian_longitude is 'Longitude of the reference meridian from the origin of longitudes.';
comment on column ssbd_primemeridian.prime_meridian_longitude is 'Longitude of the prime meridian from the origin of longitudes.';


-- datum (concept code : DATUM)
--
create table ssbd_datum (
    datum_code                                         varchar(254) not null,
    datum_name                                         varchar(80) not null,
    datum_type                                         varchar(24) not null,
    origin_description                                 varchar(254),
    realization_epoch                                  varchar(10),
    ellipsoid_code                                     varchar(254),
    phenomenon_code                                    varchar(254),
    prime_meridian_system_code                         varchar(254),
    prime_meridian_code                                varchar(254),
    -- area_of_use_code                                   integer not null,
    datum_scope                                        varchar(254) not null,
    remarks                                            varchar(254),
    information_source                                 varchar(254),
    data_source                                        varchar(40) not null,
    revision_date                                      date not null,
    change_code                                        varchar(255),
    deprecated                                         smallint not null,
    constraint pk_datum primary key ( datum_code )
);

alter table ssbd_datum add constraint fk_ellipsoid_code foreign key ( ellipsoid_code ) references ssbd_ellipsoid ( ellipsoid_code ) ;
alter table ssbd_datum add constraint fk_prime_meridian_code foreign key ( phenomenon_code, prime_meridian_system_code, prime_meridian_code )
 references ssbd_primemeridian ( phenomenon_code, system_code, prime_meridian_code ) ;
alter table ssbd_datum add constraint fk_change_code foreign key ( change_code ) references ssbd_change ( change_code ) ;


-- coordinate system (concept code : CS)
--
create table ssbd_coordinatesystem (
    coord_sys_code                                      varchar(254) not null,
    coord_sys_name                                      varchar(254) not null,
    coord_sys_type                                      varchar(24) not null,
    dimension                                           smallint not null,
    remarks                                             varchar(254),
    information_source                                  varchar(254),
    data_source                                         varchar(50) not null,
    revision_date                                       date not null,
    change_code                                         varchar(255),
    deprecated                                          smallint not null,
    constraint pk_coordinatesystem primary key ( coord_sys_code )
);

alter table ssbd_coordinatesystem add constraint fk_change_code foreign key ( change_code ) references ssbd_change ( change_code ) ;

-- coordinateaxis (concept code : CSA)
--
create table ssbd_coordinateaxis (
    coord_sys_code                                      varchar(254) not null,
    coord_axis_order                                    smallint not null,
    coord_axis_name_code                                varchar(80) not null,
    coord_axis_orientation                              varchar(24) not null,
    coord_axis_abbreviation                             varchar(24) not null,
    uom_code                                            varchar(80) not null,
    constraint pk_coordinateaxis primary key ( coord_sys_code, coord_axis_order )
);

alter table ssbd_coordinateaxis add constraint fk_coord_sys_code foreign key ( coord_sys_code ) references ssbd_coordinatesystem( coord_sys_code );


-- coordinate reference system (concept code : CRS)
--
-- see: https://planetarynames.wr.usgs.gov/TargetCoordinates
-- see: https://planetarynames.wr.usgs.gov/GIS_Downloads
-- see: https://planetarynames.wr.usgs.gov/Page/Website
create table ssbd_coordinatereferencesystem (
    coord_ref_sys_code                                 varchar(254) not null,
    coord_ref_sys_name                                 varchar(80) not null,
    -- area_of_use_code                                   integer not null,
    coord_ref_sys_kind                                 varchar(24) not null,
    coord_sys_code                                     varchar(254),
    datum_code                                         varchar(254),
    source_geogcrs_code                                integer,
    projection_conv_code                               integer,
    cmpd_horizcrs_code                                 integer,
    cmpd_vertcrs_code                                  integer,
    crs_scope                                          varchar(254) not null,
    remarks                                            varchar(254),
    information_source                                 varchar(254),
    data_source                                        varchar(40) not null,
    revision_date                                      date not null,
    change_code                                        varchar(255),
    show_crs                                           smallint not null,
    deprecated                                         smallint not null,
    constraint pk_coordinatereferencesystem primary key ( coord_ref_sys_code )
);

alter table ssbd_coordinatereferencesystem add constraint fk_coord_sys_code foreign key ( coord_sys_code ) references ssbd_coordinatesystem ( coord_sys_code ) ;
alter table ssbd_coordinatereferencesystem add constraint fk_datum_code foreign key ( datum_code ) references ssbd_datum ( datum_code ) ;
alter table ssbd_coordinatereferencesystem add constraint fk_change_code foreign key ( change_code ) references ssbd_change ( change_code ) ;


-- range
--
-- purpose: Information on the validity range constraints on axes depending of the coordinate reference system they are
-- associated with.
create table ssbd_range (
    range_code                                      integer not null,
    min_value                                       double precision not null,
    min_inclusive                                   boolean not null,
    max_value                                       double precision not null,
    max_inclusive                                   boolean not null,
    remarks                                         varchar(254),
    information_source                              varchar(254),
    constraint pk_range primary key ( range_code )
);


-- coordinate system axis range
--
-- purpose: Constraints on some coordinate reference system axes.
--
create table ssbd_coordinatereferencesystemrange (
    coord_ref_sys_code                                 varchar(254) not null,
    range_code                                         integer not null,
    coord_sys_code                                     varchar(254) not null,
    coord_axis_order                                   smallint not null,
    remarks                                            varchar(254),
    information_source                                 varchar(254),
    constraint pk_coordinatereferencesystemrange primary key ( coord_ref_sys_code, range_code, coord_sys_code, coord_axis_order )
);

alter table ssbd_coordinatereferencesystemrange add constraint fk_coord_ref_sys_code foreign key ( coord_ref_sys_code ) references ssbd_coordinatereferencesystem ( coord_ref_sys_code ) ;
alter table ssbd_coordinatereferencesystemrange add constraint fk_range_code foreign key ( range_code ) references ssbd_range ( range_code ) ;
alter table ssbd_coordinatereferencesystemrange add constraint fk_coord_axis_code foreign key ( coord_sys_code, coord_axis_order ) references ssbd_coordinateaxis ( coord_sys_code, coord_axis_order ) ;

commit;
