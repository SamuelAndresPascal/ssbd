-- title: epsg extract
--
-- comment: The schema nor the data of this file cannot be held as a substitute to the official EPSG dataset or the
-- official SQL exports provided by the IOGP. The purpose of this script is to avoid focusing on non-planetology issues
-- such as axis catalog, coordinate system definitiobn or unit conversions which are transversal to planetology and
-- geography. The usage of EPSG codes from SSBD schema may be temporary.
-- Please found official EPSG dataset on the EPSG registry website : http://www.epsg-registry.org/.
--
-- For the moment, Solar System Body Database (SSBD) can be seen as an extension of EPSG database that references some
-- of its tables. The purpose of this file is to provide just the EPSG tables the SSBD needs.
--
-- author: Samuel Andrés (dump made from EPSG 9.5.5 Postgresql export)

begin;

create table epsg_unitofmeasure (
    uom_code                                           integer not null,
    unit_of_meas_name                                  varchar(80) not null,
    unit_of_meas_type                                  varchar(50),
    target_uom_code                                    integer not null,
    factor_b                                           double precision,
    factor_c                                           double precision,
    remarks                                            varchar(254),
    information_source                                 varchar(254),
    data_source                                        varchar(40) not null,
    revision_date                                      DATE not null,
    change_id                                          varchar(255),
    deprecated                                         smallint not null,
    constraint pk_unitofmeasure primary key ( uom_code )
);
comment on table epsg_unitofmeasure is 'This table is a dump of the EPSG table epsg_unitofmeasure extracted from the Postgresql export of the EPSG dataset 9.5.5.';

insert into epsg_unitofmeasure values (1024, 'bin', 'scale', 9201, 1, 1, '', 'OGP', 'OGP', '2012-07-14', '2011.106', 0);
insert into epsg_unitofmeasure values (1025, 'millimetre', 'length', 9001, 1, 1000, '', 'ISO 1000.', 'IOGP', '2015-11-25', '2013.021 2015.062', 0);
insert into epsg_unitofmeasure values (1026, 'metre per second', 'length', 1026, 1, 1, 'SI coherent derived unit (standard unit) for velocity.', 'Bureau International des Poids et Mesures (BIPM), www.bipm.org', 'IOGP', '2018-05-29', '2013.021 2015.062 2018.028', 0);
insert into epsg_unitofmeasure values (1027, 'millimetres per year', 'length', 1026, 1, 31556925445, 'Year taken to be IUGS definition of 31556925.445 seconds; see UoM code 1029.', 'ISO 1000.', 'OGP', '2013-09-02', '2013.021 2013.042', 0);
insert into epsg_unitofmeasure values (1028, 'parts per billion', 'scale', 9201, 1, 1000000000, 'Billion is internationally ambiguous, in different languages being 1E+9 and 1E+12. One billion taken here to be 1E+9.', 'OGP', 'OGP', '2013-05-29', '2013.021', 0);
insert into epsg_unitofmeasure values (1029, 'year', 'time', 1040, 31556925.4450000003, 1, '', 'International Union of Geological Sciences (IUGS) and International Union of Pure and Applied Chemistry (IUPAC). Pure Appl. Chem., Vol. 83, No. 5, pp. 1159–1162, 2011.', 'OGP', '2013-05-28', '2013.021', 0);
insert into epsg_unitofmeasure values (1030, 'parts per billion per year', 'scale', 1036, 1, 31556925445000000, 'Year taken to be IUGS definition of 31556925.445 seconds; see UoM code 1029. Billion is internationally ambiguous, in different languages being 1E+9 and 1E+12. One billion taken here to be 1E+9.', 'ISO 1000.', 'IOGP', '2015-06-24', '2013.021 2013.042 2013.067 2015.036', 0);
insert into epsg_unitofmeasure values (1031, 'milliarc-second', 'angle', 9101, 3.14159265358979001, 648000000, '= ((pi/180) / 3600 / 1000) radians', '', 'IOGP', '2015-11-25', '2013.021 2015.062', 0);
insert into epsg_unitofmeasure values (1032, 'milliarc-seconds per year', 'angle', 1035, 3.14159265358979001, 20448887688360000, '= ((pi/180) / 3600 / 1000) radians per year. Year taken to be IUGS definition of 31556925.445 seconds; see UoM code 1029.', '', 'OGP', '2013-09-02', '2013.021 2013.042', 0);
insert into epsg_unitofmeasure values (1033, 'centimetre', 'length', 9001, 1, 100, '', 'ISO 1000.', 'IOGP', '2015-11-25', '2013.021 2015.062', 0);
insert into epsg_unitofmeasure values (1034, 'centimetres per year', 'length', 1026, 1, 3155692544.5, 'Year taken to be IUGS definition of 31556925.445 seconds; see UoM code 1029.', 'ISO 1000.', 'OGP', '2013-09-02', '2013.021 2013.042', 0);
insert into epsg_unitofmeasure values (1035, 'radian per second', 'angle', 1035, 1, 1, 'SI coherent derived unit (standard unit) for angular velocity.', 'Bureau International des Poids et Mesures (BIPM), www.bipm.org', 'IOGP', '2018-05-29', '2013.021 2015.062 2018.028', 0);
insert into epsg_unitofmeasure values (1036, 'unity per second', 'scale', 1036, 1, 1, 'EPSG standard unit for scale rate. SI coherent derived unit (standard unit) for dimensionless quantity velocity.', 'OGP', 'IOGP', '2018-05-29', '2013.021 2018.028', 0);
insert into epsg_unitofmeasure values (1040, 'second', 'time', 1040, 1, 1, 'SI base unit for time. Not to be confused with the angle unit arc-second.', 'Bureau International des Poids et Mesures (BIPM), www.bipm.org', 'IOGP', '2018-05-29', '2013.021 2015.062 2018.028', 0);
insert into epsg_unitofmeasure values (1041, 'parts per million per year', 'scale', 1036, 1, 31556925445000, 'Year taken to be IUGS definition of 31556925.445 seconds; see UoM code 1029.', '', 'OGP', '2013-09-02', '2013.021 2013.037 2013.042', 0);
insert into epsg_unitofmeasure values (1042, 'metres per year', 'length', 1026, 1, 31556925.4450000003, 'Year taken to be IUGS definition of 31556925.445 seconds; see UoM code 1029.', 'OGP', 'OGP', '2013-09-02', '2013.021 2013.042', 0);
insert into epsg_unitofmeasure values (1043, 'arc-seconds per year', 'angle', 1035, 3.14159265358979001, 20448887688360, '=((pi/180) / 3600) radians per year. Year taken to be IUGS definition of 31556925.445 seconds; see UoM code 1029.', '', 'IOGP', '2015-03-06', '2013.021 2013.042 2015.014', 0);
insert into epsg_unitofmeasure values (9001, 'metre', 'length', 9001, 1, 1, 'SI base unit for length.', 'Bureau International des Poids et Mesures (BIPM), www.bipm.org', 'IOGP', '2018-05-29', '2015.062 2018.028', 0);
insert into epsg_unitofmeasure values (9002, 'foot', 'length', 9001, 0.304800000000000015, 1, '', 'ISO 1000; 1958', 'IOGP', '2015-11-25', '2015.062', 0);
insert into epsg_unitofmeasure values (9003, 'US survey foot', 'length', 9001, 12, 39.3699999999999974, 'Used in USA.', 'OGP', 'IOGP', '2015-11-25', '1999.990 2015.062', 0);
insert into epsg_unitofmeasure values (9005, 'Clarke''s foot', 'length', 9001, 0.304797265400000017, 1, 'Assumes Clarke''s 1865 ratio of 1 British foot = 0.3047972654 French legal metres applies to the international metre.   Used in older Australian, southern African & British West Indian mapping.', 'Australian Land Information Group  www.auslig.gov.au', 'IOGP', '2015-11-25', '1997.233 1999.990 2000.050 2005.370 2005.460 2015.062', 0);
insert into epsg_unitofmeasure values (9014, 'fathom', 'length', 9001, 1.82879999999999998, 1, '= 6 feet.', '', 'IOGP', '2015-11-25', '2015.062', 0);
insert into epsg_unitofmeasure values (9030, 'nautical mile', 'length', 9001, 1852, 1, '', '', 'IOGP', '2015-11-25', '1996.240 2015.062', 0);
insert into epsg_unitofmeasure values (9031, 'German legal metre', 'length', 9001, 1.0000135965000001, 1, 'Used in Namibia.', 'Chief Directorate Surveys and Land Information; Mowbray; South Africa', 'IOGP', '2015-11-25', '2015.062', 0);
insert into epsg_unitofmeasure values (9033, 'US survey chain', 'length', 9001, 792, 39.3699999999999974, 'Used in USA primarily for public lands cadastral work.', 'Bureau of Land Management technical bulletin 6 (1973) and Standard Field Tables 8th edition (1956).', 'IOGP', '2015-11-25', '1999.990 2015.062', 0);
insert into epsg_unitofmeasure values (9034, 'US survey link', 'length', 9001, 7.91999999999999993, 39.3699999999999974, 'Used in USA primarily for public lands cadastral work.', 'Bureau of Land Management technical bulletin 6 (1973) and Standard Field Tables 8th edition (1956).', 'IOGP', '2015-11-25', '1999.990 2015.062', 0);
insert into epsg_unitofmeasure values (9035, 'US survey mile', 'length', 9001, 63360, 39.3699999999999974, 'Used in USA primarily for public lands cadastral work.', 'Bureau of Land Management technical bulletin 6 (1973) and Standard Field Tables 8th edition (1956).', 'IOGP', '2015-11-25', '1999.990 2015.062', 0);
insert into epsg_unitofmeasure values (9036, 'kilometre', 'length', 9001, 1000, 1, '', 'ISO 1000.', 'IOGP', '2015-11-25', '2015.062', 0);
insert into epsg_unitofmeasure values (9037, 'Clarke''s yard', 'length', 9001, 0.914391796199999995, 1, '=3 Clarke''s feet.  Assumes Clarke''s 1865 ratio of 1 British foot = 0.3047972654 French legal metres applies to the international metre.   Used in older Australian, southern African & British West Indian mapping.', 'Australian Land Information Group  www.auslig.gov.au', 'IOGP', '2015-11-25', '1997.233 1999.990 2005.370 2005.460 2015.062', 0);
insert into epsg_unitofmeasure values (9038, 'Clarke''s chain', 'length', 9001, 20.1166195164000001, 1, '=22 Clarke''s yards.  Assumes Clarke''s 1865 ratio of 1 British foot = 0.3047972654 French legal metres applies to the international metre.   Used in older Australian, southern African & British West Indian mapping.', 'Australian Land Information Group  www.auslig.gov.au', 'IOGP', '2015-11-25', '1997.233 1999.990 2005.370 2005.460 2015.062', 0);
insert into epsg_unitofmeasure values (9039, 'Clarke''s link', 'length', 9001, 0.201166195164, 1, '=1/100 Clarke''s chain. Assumes Clarke''s 1865 ratio of 1 British foot = 0.3047972654 French legal metres applies to the international metre.   Used in older Australian, southern African & British West Indian mapping.', 'Australian Land Information Group  www.auslig.gov.au', 'IOGP', '2015-11-25', '1997.233 1999.990 2005.370 2005.460 2015.062', 0);
insert into epsg_unitofmeasure values (9040, 'British yard (Sears 1922)', 'length', 9001, 36, 39.3701470000000029, 'Uses Sear''s 1922 British yard-metre ratio as given by Bomford as 39.370147 inches per metre.  Used in East Malaysian and older New Zealand mapping.', 'G. Bomford "Geodesy" 2nd edition 1962; after J.S.Clark "Remeasurement of the Old Length Standards"; Empire Survey Review no. 90; 1953.', 'IOGP', '2015-11-25', '1997.233 1999.990 2015.062', 0);
insert into epsg_unitofmeasure values (9041, 'British foot (Sears 1922)', 'length', 9001, 12, 39.3701470000000029, 'Uses Sear''s 1922 British yard-metre ratio as given by Bomford as 39.370147 inches per metre.  Used in East Malaysian and older New Zealand mapping.', 'G. Bomford "Geodesy" 2nd edition 1962; after J.S.Clark "Remeasurement of the Old Length Standards"; Empire Survey Review no. 90; 1953.', 'IOGP', '2015-11-25', '1997.233 1999.990 2015.062', 0);
insert into epsg_unitofmeasure values (9207, 'Bin width 37.5 metres', 'length', 9001, 37.5, 1, '', 'OGP', 'OGP', '2000-10-19', '2000.590 2011.106', 1);
insert into epsg_unitofmeasure values (9208, 'Bin width 25 metres', 'length', 9001, 25, 1, '', 'OGP', 'OGP', '2000-10-19', '2000.590 2011.106', 1);
insert into epsg_unitofmeasure values (9209, 'Bin width 12.5 metres', 'length', 9001, 12.5, 1, '', 'OGP', 'OGP', '2000-10-19', '2000.590 2011.106', 1);
insert into epsg_unitofmeasure values (9042, 'British chain (Sears 1922)', 'length', 9001, 792, 39.3701470000000029, 'Uses Sear''s 1922 British yard-metre ratio as given by Bomford as 39.370147 inches per metre.  Used in East Malaysian and older New Zealand mapping.', 'G. Bomford "Geodesy" 2nd edition 1962; after J.S.Clark "Remeasurement of the Old Length Standards"; Empire Survey Review no. 90; 1953.', 'IOGP', '2015-11-25', '1997.233 1999.990 2015.062', 0);
insert into epsg_unitofmeasure values (9043, 'British link (Sears 1922)', 'length', 9001, 7.91999999999999993, 39.3701470000000029, 'Uses Sear''s 1922 British yard-metre ratio as given by Bomford as 39.370147 inches per metre.  Used in East Malaysian and older New Zealand mapping.', 'G. Bomford "Geodesy" 2nd edition 1962; after J.S.Clark "Remeasurement of the Old Length Standards"; Empire Survey Review no. 90; 1953.', 'IOGP', '2015-11-25', '1997.233 1999.990 2015.062', 0);
insert into epsg_unitofmeasure values (9050, 'British yard (Benoit 1895 A)', 'length', 9001, 0.914399199999999968, 1, 'Uses Benoit''s 1895 British yard-metre ratio as given by Clark as 0.9143992 metres per yard.  Used for deriving metric size of ellipsoid in Palestine.', 'J.S.Clark; "Remeasurement of the Old Length Standards"; Empire Survey Review no. 90; 1953.', 'IOGP', '2015-11-25', '1997.233 1999.990 2006.260 2015.062', 0);
insert into epsg_unitofmeasure values (9051, 'British foot (Benoit 1895 A)', 'length', 9001, 0.914399199999999968, 3, 'Uses Benoit''s 1895 British yard-metre ratio as given by Clark as 0.9143992 metres per yard.  Used for deriving metric size of ellipsoid in Palestine.', 'J.S.Clark; "Remeasurement of the Old Length Standards"; Empire Survey Review no. 90; 1953.', 'IOGP', '2015-11-25', '1997.233 1999.990 2006.260 2015.062', 0);
insert into epsg_unitofmeasure values (9052, 'British chain (Benoit 1895 A)', 'length', 9001, 20.1167824000000017, 1, 'Uses Benoit''s 1895 British yard-metre ratio as given by Clark as 0.9143992 metres per yard.  Used for deriving metric size of ellipsoid in Palestine.', 'J.S.Clark; "Remeasurement of the Old Length Standards"; Empire Survey Review no. 90; 1953.', 'IOGP', '2015-11-25', '1997.233 1999.990 2006.260 2015.062', 0);
insert into epsg_unitofmeasure values (9053, 'British link (Benoit 1895 A)', 'length', 9001, 0.201167823999999995, 1, 'Uses Benoit''s 1895 British yard-metre ratio as given by Clark as 0.9143992 metres per yard.  Used for deriving metric size of ellipsoid in Palestine.', 'J.S.Clark; "Remeasurement of the Old Length Standards"; Empire Survey Review no. 90; 1953.', 'IOGP', '2015-11-25', '1997.233 1999.990 2006.260 2015.062', 0);
insert into epsg_unitofmeasure values (9060, 'British yard (Benoit 1895 B)', 'length', 9001, 36, 39.3701130000000035, 'G. Bomford "Geodesy" 2nd edition 1962; after J.S.Clark "Remeasurement of the Old Length Standards"; Empire Survey Review no. 90; 1953.', 'G. Bomford "Geodesy" 2nd edition 1962; after J.S.Clark "Remeasurement of the Old Length Standards"; Empire Survey Review no. 90; 1953.', 'IOGP', '2015-11-25', '1997.233 1999.990 2015.062', 0);
insert into epsg_unitofmeasure values (9061, 'British foot (Benoit 1895 B)', 'length', 9001, 12, 39.3701130000000035, 'Uses Benoit''s 1895 British yard-metre ratio as given by Bomford as 39.370113 inches per metre.  Used in West Malaysian mapping.', 'G. Bomford "Geodesy" 2nd edition 1962; after J.S.Clark "Remeasurement of the Old Length Standards"; Empire Survey Review no. 90; 1953.', 'IOGP', '2015-11-25', '1997.233 1999.990 2015.062', 0);
insert into epsg_unitofmeasure values (9062, 'British chain (Benoit 1895 B)', 'length', 9001, 792, 39.3701130000000035, 'Uses Benoit''s 1895 British yard-metre ratio as given by Bomford as 39.370113 inches per metre.  Used in West Malaysian mapping.', 'G. Bomford "Geodesy" 2nd edition 1962; after J.S.Clark "Remeasurement of the Old Length Standards"; Empire Survey Review no. 90; 1953.', 'IOGP', '2015-11-25', '1997.233 1999.990 2015.062', 0);
insert into epsg_unitofmeasure values (9063, 'British link (Benoit 1895 B)', 'length', 9001, 7.91999999999999993, 39.3701130000000035, 'Uses Benoit''s 1895 British yard-metre ratio as given by Bomford as 39.370113 inches per metre.  Used in West Malaysian mapping.', 'G. Bomford; "Geodesy"; 3rd edition 1975', 'IOGP', '2015-11-25', '1997.233 1999.990 2015.062', 0);
insert into epsg_unitofmeasure values (9070, 'British foot (1865)', 'length', 9001, 0.914402500000000007, 3, 'Uses Clark''s estimate of 1853-1865 British foot-metre ratio of 0.9144025 metres per yard.  Used in 1962 and 1975 estimates of Indian foot.', 'J.S.Clark; "Remeasurement of the Old Length Standards"; Empire Survey Review no. 90; 1953.', 'IOGP', '2015-11-25', '1997.233 1999.990 2015.062', 0);
insert into epsg_unitofmeasure values (9080, 'Indian foot', 'length', 9001, 12, 39.3701420000000013, 'Indian Foot = 0.99999566 British feet (A.R.Clarke 1865).  British yard (= 3 British feet) taken to be J.S.Clark''s 1865 value of 0.9144025 metres.', 'G. Bomford; "The Re-adjustment of the Indian Triangulation"; Survey of India Professional Paper 28; 1939.', 'IOGP', '2015-11-25', '1997.231 1999.990 2015.062', 0);
insert into epsg_unitofmeasure values (9081, 'Indian foot (1937)', 'length', 9001, 0.30479841000000002, 1, 'Indian Foot = 0.99999566 British feet (A.R.Clarke 1865).  British foot taken to be 1895 Benoit value of 12/39.370113m.  Rounded to 8 decimal places as 0.30479841. Used from Bangladesh to Vietnam.  Previously used in India and Pakistan but superseded.', 'G. Bomford; "The Re-adjustment of the Indian Triangulation"; Survey of India Professional Paper 28; 1939.', 'IOGP', '2015-11-25', '1997.231 1999.990 2015.062', 0);
insert into epsg_unitofmeasure values (9082, 'Indian foot (1962)', 'length', 9001, 0.304799600000000004, 1, 'Indian Foot = 0.99999566 British feet (A.R.Clarke 1865).  British yard (3 feet) taken to be J.S. Clark''s 1865 value of 0.9144025m. Rounded to 7 significant figures with a small error as 1 Ind ft=0.3047996m.  Used in Pakistan since metrication.', 'G. Bomford; "Geodesy"; 2nd edition 1962', 'IOGP', '2015-11-25', '1997.231 1999.990 2007.011 2015.062', 0);
insert into epsg_unitofmeasure values (9083, 'Indian foot (1975)', 'length', 9001, 0.304799500000000001, 1, 'Indian Foot = 0.99999566 British feet (A.R.Clarke 1865).  British yard (3 feet) taken to be J.S. Clark''s 1865 value of 0.9144025m. Rounded to 7 significant figures as 1 Ind ft=0.3047995m.  Used in India since metrication.', 'G. Bomford; "Geodesy"; 3rd edition 1975', 'IOGP', '2015-11-25', '1997.231 1999.990 2007.011 2015.062', 0);
insert into epsg_unitofmeasure values (9084, 'Indian yard', 'length', 9001, 36, 39.3701420000000013, 'Indian Foot = 0.99999566 British feet (A.R.Clarke 1865).  British yard (= 3 British feet) taken to be J.S.Clark''s 1865 value of 0.9144025 metres.', 'G. Bomford; "The Re-adjustment of the Indian Triangulation"; Survey of India Professional Paper 28; 1939.', 'IOGP', '2015-11-25', '1997.231 1999.990 2015.062', 0);
insert into epsg_unitofmeasure values (9085, 'Indian yard (1937)', 'length', 9001, 0.914395230000000003, 1, 'Indian Foot = 0.99999566 British feet (A.R.Clarke 1865).  British foot taken to be 1895 Benoit value of 12/39.370113m.  Rounded to 8 decimal places as 0.30479841. Used from Bangladesh to Vietnam.  Previously used in India and Pakistan but superseded.', 'G. Bomford; "The Re-adjustment of the Indian Triangulation"; Survey of India Professional Paper 28; 1939.', 'IOGP', '2015-11-25', '1997.231 1999.990 2015.062', 0);
insert into epsg_unitofmeasure values (9086, 'Indian yard (1962)', 'length', 9001, 0.914398799999999956, 1, 'Indian Foot = 0.99999566 British feet (A.R.Clarke 1865).  British yard (3 feet) taken to be J.S. Clark''s 1865 value of 0.9144025m. Rounded to 7 significant figures with a small error as 1 Ind ft=0.3047996m.  Used in Pakistan since metrication.', 'G. Bomford; "Geodesy"; 2nd edition 1962', 'IOGP', '2015-11-25', '1997.231 1999.990 2007.011 2015.062', 0);
insert into epsg_unitofmeasure values (9087, 'Indian yard (1975)', 'length', 9001, 0.914398500000000003, 1, 'Indian Foot = 0.99999566 British feet (A.R.Clarke 1865).  British yard (3 feet) taken to be J.S. Clark''s 1865 value of 0.9144025m. Rounded to 7 significant figures as 1 Ind ft=0.3047995m.  Used in India since metrication.', 'G. Bomford; "Geodesy"; 3rd edition 1975', 'IOGP', '2015-11-25', '1997.231 1999.990 2007.011 2015.062', 0);
insert into epsg_unitofmeasure values (9093, 'Statute mile', 'length', 9001, 1609.34400000000005, 1, '=5280 feet', 'OGP', 'IOGP', '2015-11-25', '2015.062', 0);
insert into epsg_unitofmeasure values (9094, 'Gold Coast foot', 'length', 9001, 6378300, 20926201, 'Used in Ghana and some adjacent parts of British west Africa prior to metrication, except for the metrication of projection defining parameters when British foot (Sears 1922) used.', 'Ordnance Survey International', 'IOGP', '2015-11-25', '2000.861 2015.062', 0);
insert into epsg_unitofmeasure values (9095, 'British foot (1936)', 'length', 9001, 0.30480074909999999, 1, 'For the 1936 retriangulation OSGB defines the relationship of 10 feet of 1796 to the International metre through the logarithmic relationship (10^0.48401603 exactly). 1 ft = 0.3048007491…m. Also used for metric conversions in Ireland.', '1. "The Retriangulation of Great Britain", Ordnance Survey of Great Britain.¶2. "The Irish Grid - A Description of the Co-ordinate Reference System" published by Ordnance Survey of Ireland, Dublin and Ordnance Survey of Northern Ireland, Belfast.', 'IOGP', '2015-11-25', '2002.621 2006.932 2015.062', 0);
insert into epsg_unitofmeasure values (9096, 'yard', 'length', 9001, 0.914399999999999991, 1, '=3 international feet.', 'OGP', 'IOGP', '2015-11-25', '2015.062', 0);
insert into epsg_unitofmeasure values (9097, 'chain', 'length', 9001, 20.1168000000000013, 1, '=22 international yards or 66 international feet.', 'OGP', 'IOGP', '2015-11-25', '2015.062', 0);
insert into epsg_unitofmeasure values (9098, 'link', 'length', 9001, 20.1168000000000013, 100, '=1/100 international chain.', 'OGP', 'IOGP', '2015-11-25', '2015.062', 0);
insert into epsg_unitofmeasure values (9099, 'British yard (Sears 1922 truncated)', 'length', 9001, 0.914398000000000044, 1, 'Uses Sear''s 1922 British yard-metre ratio (UoM code 9040) truncated to 6 significant figures.', 'Defence Geographic Centre', 'IOGP', '2015-11-25', '2006.901 2015.062', 0);
insert into epsg_unitofmeasure values (9101, 'radian', 'angle', 9101, 1, 1, 'SI coherent derived unit (standard unit) for plane angle.', 'Bureau International des Poids et Mesures (BIPM), www.bipm.org', 'IOGP', '2018-05-29', '2015.062 2018.028', 0);
insert into epsg_unitofmeasure values (9102, 'degree', 'angle', 9101, 3.14159265358979001, 180, '= pi/180 radians', '', 'IOGP', '2015-11-25', '1996.220 2002.860 2015.062', 0);
insert into epsg_unitofmeasure values (9103, 'arc-minute', 'angle', 9101, 3.14159265358979001, 10800, '1/60th degree = ((pi/180) / 60) radians', '', 'IOGP', '2015-11-25', '1996.220 2002.860 2015.062', 0);
insert into epsg_unitofmeasure values (9104, 'arc-second', 'angle', 9101, 3.14159265358979001, 648000, '1/60th arc-minute = ((pi/180) / 3600) radians', '', 'IOGP', '2015-11-25', '1996.220 2002.860 2015.062', 0);
insert into epsg_unitofmeasure values (9105, 'grad', 'angle', 9101, 3.14159265358979001, 200, '=pi/200 radians.', 'OGP', 'IOGP', '2015-11-25', '1996.220 1999.050 2002.860 2015.062', 0);
insert into epsg_unitofmeasure values (9106, 'gon', 'angle', 9101, 3.14159265358979001, 200, '=pi/200 radians', '', 'OGP', '2002-11-18', '1996.220 2002.860 2015.062', 1);
insert into epsg_unitofmeasure values (9107, 'degree minute second', 'angle', 9102, NULL, NULL, 'Degree representation. Format: signed degrees (integer) - arc-minutes (integer) - arc-seconds (real, any precision). Different symbol sets are in use as field separators, for example º '' ". Convert to degrees using algorithm.', 'OGP', 'IOGP', '2015-11-25', '1996.190 2002.070 2002.780 2015.062', 0);
insert into epsg_unitofmeasure values (9108, 'degree minute second hemisphere', 'angle', 9102, NULL, NULL, 'Degree representation. Format: degrees (integer) - arc-minutes (integer) - arc-seconds (real) - hemisphere abbreviation (single character N S E or W). Different symbol sets are in use as field separators for example º '' ". Convert to deg using algorithm.', 'OGP', 'IOGP', '2015-11-25', '1996.190 2002.070 2002.780 2015.062', 0);
insert into epsg_unitofmeasure values (9109, 'microradian', 'angle', 9101, 1, 1000000, 'rad * 10E-6', 'ISO 1000.', 'OGP', '1996-10-18', '1999.050', 0);
insert into epsg_unitofmeasure values (9110, 'sexagesimal DMS', 'angle', 9102, NULL, NULL, 'Pseudo unit. Format: signed degrees - period - minutes (2 digits) - integer seconds (2 digits) - fraction of seconds (any precision). Must include leading zero in minutes and seconds and exclude decimal point for seconds. Convert to deg using algorithm.', 'OGP', 'IOGP', '2016-12-15', '2002.270 2002.780 2008.020 2015.062 2016.047', 0);
insert into epsg_unitofmeasure values (9111, 'sexagesimal DM', 'angle', 9102, NULL, NULL, 'Pseudo unit. Format: signed degrees - period - integer minutes (2 digits) - fraction of minutes (any precision). Must include leading zero in minutes and exclude decimal point for minutes. Convert to degree using algorithm.', 'OGP', 'IOGP', '2016-12-15', '2002.070 2002.780 2015.062 2016.047', 0);
insert into epsg_unitofmeasure values (9112, 'centesimal minute', 'angle', 9101, 3.14159265358979001, 20000, '1/100 of a grad and gon = ((pi/200) / 100) radians', 'http://www.geodesy.matav.hu/', 'IOGP', '2015-11-25', '1998.480 1999.510 2002.860 2005.460 2015.062', 0);
insert into epsg_unitofmeasure values (9113, 'centesimal second', 'angle', 9101, 3.14159265358979001, 2000000, '1/100 of a centesimal minute or 1/10,000th of a grad and gon = ((pi/200) / 10000) radians', 'http://www.geodesy.matav.hu/', 'IOGP', '2015-11-25', '1999.510 2002.860 2005.460 2015.062', 0);
insert into epsg_unitofmeasure values (9114, 'mil_6400', 'angle', 9101, 3.14159265358979001, 3200, 'Angle subtended by 1/6400 part of a circle.  Approximates to 1/1000th radian.  Note that other approximations (notably 1/6300 circle and 1/6000 circle) also exist.', 'http://www.geodesy.matav.hu/', 'IOGP', '2015-11-25', '1999.510 2005.460 2015.062', 0);
insert into epsg_unitofmeasure values (9115, 'degree minute', 'angle', 9102, NULL, NULL, 'Degree representation. Format: signed degrees (integer)  - arc-minutes (real, any precision). Different symbol sets are in use as field separators, for example º ''. Convert to degrees using algorithm.', 'OGP', 'IOGP', '2015-11-25', '2002.780 2015.062', 0);
insert into epsg_unitofmeasure values (9116, 'degree hemisphere', 'angle', 9102, NULL, NULL, 'Degree representation. Format: degrees (real, any precision) - hemisphere abbreviation (single character N S E or W). Convert to degrees using algorithm.', 'OGP', 'IOGP', '2015-11-25', '2015.062', 0);
insert into epsg_unitofmeasure values (9117, 'hemisphere degree', 'angle', 9102, NULL, NULL, 'Degree representation. Format: hemisphere abbreviation (single character N S E or W) - degrees (real, any precision). Convert to degrees using algorithm.', 'OGP', 'IOGP', '2015-11-25', '2015.062', 0);
insert into epsg_unitofmeasure values (9118, 'degree minute hemisphere', 'angle', 9102, NULL, NULL, 'Degree representation. Format: degrees (integer) - arc-minutes (real, any precision) - hemisphere abbreviation (single character N S E or W). Different symbol sets are in use as field separators, for example º ''. Convert to degrees using algorithm.', 'OGP', 'IOGP', '2015-11-25', '2015.062', 0);
insert into epsg_unitofmeasure values (9119, 'hemisphere degree minute', 'angle', 9102, NULL, NULL, 'Degree representation. Format:  hemisphere abbreviation (single character N S E or W) - degrees (integer) - arc-minutes (real, any precision). Different symbol sets are in use as field separators, for example º ''. Convert to degrees using algorithm.', 'OGP', 'IOGP', '2015-11-25', '2015.062', 0);
insert into epsg_unitofmeasure values (9120, 'hemisphere degree minute second', 'angle', 9102, NULL, NULL, 'Degree representation. Format: hemisphere abbreviation (single character N S E or W) - degrees (integer) - arc-minutes (integer) - arc-seconds (real). Different symbol sets are in use as field separators for example º '' ". Convert to deg using algorithm.', 'OGP', 'IOGP', '2015-11-25', '2015.062', 0);
insert into epsg_unitofmeasure values (9121, 'sexagesimal DMS.s', 'angle', 9104, NULL, NULL, 'Pseudo unit. Format: signed degrees - minutes (2 digits) - integer seconds (2 digits) - period - fraction of seconds (any precision). Must include leading zero in minutes and seconds and include decimal point for seconds. Convert to deg using algorithm.', 'ISO 6709:1983.', 'IOGP', '2016-12-15', '2015.062 2016.047', 0);
insert into epsg_unitofmeasure values (9122, 'degree (supplier to define representation)', 'angle', 9101, 3.14159265358979001, 180, '= pi/180 radians. The degree representation (e.g. decimal, DMSH, etc.) must be clarified by suppliers of data associated with this code.', 'OGP', 'IOGP', '2015-11-25', '2015.062', 0);
insert into epsg_unitofmeasure values (9201, 'unity', 'scale', 9201, 1, 1, 'EPSG standard unit for scale. SI coherent derived unit (standard unit) for dimensionless quantity, expressed by the number one but this is not explicitly shown.', 'EPSG', 'IOGP', '2018-05-29', '2015.062 2018.028', 0);
insert into epsg_unitofmeasure values (9202, 'parts per million', 'scale', 9201, 1, 1000000, '', '', 'IOGP', '2015-11-25', '2013.021 2013.037 2015.062', 0);
insert into epsg_unitofmeasure values (9203, 'coefficient', 'scale', 9201, 1, 1, 'Used when parameters are coefficients.  They inherently take the units which depend upon the term to which the coefficient applies.', 'OGP', 'OGP', '2004-09-14', '2004.530', 0);
insert into epsg_unitofmeasure values (9204, 'Bin width 330 US survey feet', 'length', 9001, 3960, 39.3699999999999974, '', 'OGP', 'OGP', '2000-10-19', '2000.590 2011.106', 1);
insert into epsg_unitofmeasure values (9205, 'Bin width 165 US survey feet', 'length', 9001, 1980, 39.3699999999999974, '', 'OGP', 'OGP', '2000-10-19', '2000.590 2011.106', 1);
insert into epsg_unitofmeasure values (9206, 'Bin width 82.5 US survey feet', 'length', 9001, 990, 39.3699999999999974, '', 'OGP', 'OGP', '2000-10-19', '2000.590 2011.106', 1);
insert into epsg_unitofmeasure values (9210, 'Bin width 6.25 metres', 'length', 9001, 6.25, 1, '', 'OGP', 'OGP', '2000-10-19', '2000.590 2011.106', 1);
insert into epsg_unitofmeasure values (9211, 'Bin width 3.125 metres', 'length', 9001, 3.125, 1, '', 'OGP', 'OGP', '2000-10-19', '2000.590 2011.106', 1);
insert into epsg_unitofmeasure values (9300, 'British foot (Sears 1922 truncated)', 'length', 9001, 0.914398000000000044, 3, 'Uses Sear''s 1922 British yard-metre ratio (UoM code 9040) truncated to 6 significant figures; this truncated ratio (0.914398, UoM code 9099) then converted to other imperial units. 3 ftSe(T) = 1 ydSe(T).', 'Defence Geographic Centre', 'IOGP', '2015-11-25', '2006.901 2015.062', 0);
insert into epsg_unitofmeasure values (9301, 'British chain (Sears 1922 truncated)', 'length', 9001, 20.1167559999999987, 1, 'Uses Sear''s 1922 British yard-metre ratio (UoM code 9040) truncated to 6 significant figures; this truncated ratio (0.914398, UoM code 9099) then converted to other imperial units. 1 chSe(T) = 22 ydSe(T). Used in metrication of Malaya RSO grid.', 'Defence Geographic Centre', 'IOGP', '2015-11-25', '2006.901 2015.062', 0);
insert into epsg_unitofmeasure values (9302, 'British link (Sears 1922 truncated)', 'length', 9001, 20.1167559999999987, 100, 'Uses Sear''s 1922 British yard-metre ratio (UoM code 9040) truncated to 6 significant figures; this truncated ratio (0.914398, UoM code 9099) then converted to other imperial units. 100 lkSe(T) = 1 chSe(T).', 'Defence Geographic Centre', 'IOGP', '2015-11-25', '2006.901 2015.062', 0);


create table epsg_coordinateaxisname (
    coord_axis_name_code integer not null,
    coord_axis_name character varying(80) not null,
    description character varying(254),
    remarks character varying(254),
    information_source character varying(254),
    data_source character varying(40) not null,
    revision_date date not null,
    change_id character varying(255),
    deprecated smallint not null,
    constraint pk_coordinateaxisname primary key ( coord_axis_name_code )
);
comment on table epsg_coordinateaxisname is 'This table is a dump of the EPSG table epsg_coordinateaxisname extracted from the Postgresql export of the EPSG dataset 9.5.5.';


insert into epsg_coordinateaxisname values (1024, 'Forward', 'An axis of a local or engineering grid 2D or 3D coordinate system for a moving platform. The axis is along or parallel to the centreline of the platform, positive towards the bow or nose cone.', 'Aligned to the body of the moving platform and independent of the movement of the platform.', 'OGP', 'IOGP', '2016-02-13', '2016.003', 0);
insert into epsg_coordinateaxisname values (1025, 'Starboard', 'An axis of a local or engineering grid 2D or 3D coordinate system for a moving platform. Starboard is 90 degrees clockwise from the Forward axis when viewed from above the plane containing the two axes.', 'Aligned to the body of the moving platform and independent of the movement of the platform.', 'OGP', 'IOGP', '2016-02-12', '2016.003', 0);
insert into epsg_coordinateaxisname values (1026, 'Platform Up', 'Distance measured perpendicular to the plane formed by the Platform North and Platform East axes of a fixed offshore platform or by the Forward and Starboard axes of a moving platform, positive upwards.', 'For a moving platform, aligned to the body of the platform and independent of its movement.', 'IOGP', 'IOGP', '2016-02-13', '2016.003', 0);
insert into epsg_coordinateaxisname values (1027, 'Platform Down', 'Distance measured perpendicular to the plane formed by the Platform North and Platform East axes of a fixed offshore platform or by the Forward and Starboard axes of a moving platform, positive downwards.', 'For a moving platform, aligned to the body of the platform and independent of its movement.', 'IOGP', 'IOGP', '2016-02-13', '2016.003', 0);
insert into epsg_coordinateaxisname values (9901, 'Geodetic latitude', 'Angle from the equatorial plane to the perpendicular to the ellipsoid through a given point, northwards usually treated as positive.', 'Used in geographic 2D and geographic 3D coordinate reference systems.', 'OGP', 'OGP', '2000-03-07', '', 0);
insert into epsg_coordinateaxisname values (9902, 'Geodetic longitude', 'Angle from the prime meridian plane to the meridian plane passing through the given point, eastwards usually treated as positive.', 'Used in geographic 2D and geographic 3D coordinate reference systems.', 'OGP', 'OGP', '2000-03-07', '', 0);
insert into epsg_coordinateaxisname values (9903, 'Ellipsoidal height', 'Distance of a point from the ellipsoid measured along the perpendicular from the ellipsoid to this point. Positive if upwards or outside of the ellipsoid.', 'Used only as part of an ellipsoidal 3D coordinate system in a geographic 3D coordinate reference system, never on its own.', 'OGP based on ISO 19111', 'IOGP', '2016-02-15', '2016.006', 0);
insert into epsg_coordinateaxisname values (9904, 'Gravity-related height', 'Height influenced by the Earth''s gravity field. In particular, orthometric height or normal height which are both approximations of the distance of a point above sea level. Positive upwards.', 'Used in a 1D vertical coordinate system.', 'ISO 19111 "Geographical information - Spatial referencing by coordinates".', 'IOGP', '2016-02-15', '2016.006', 0);
insert into epsg_coordinateaxisname values (9905, 'Depth', 'Distance measured perpendicular to a reference surface, positive downwards.', 'Generally is a straight line through the reference surface, but there may be engineering applications where depth follows the plumb line; because of the short distances and near parallelism involved the two are considered to be insignificantly different.', 'OGP', 'OGP', '2012-08-10', '2012.068', 0);
insert into epsg_coordinateaxisname values (9906, 'Easting', 'East pointing axis used in 2D projected coordinate systems.', '', 'OGP', 'OGP', '2000-03-07', '', 0);
insert into epsg_coordinateaxisname values (9907, 'Northing', 'North pointing axis used in 2D projected coordinate systems.', '', 'OGP', 'OGP', '2000-03-07', '', 0);
insert into epsg_coordinateaxisname values (9908, 'Westing', 'West pointing axis used in 2D projected coordinate systems (e.g. south oriented transverse Mercator)', '', 'OGP', 'OGP', '2000-03-07', '', 0);
insert into epsg_coordinateaxisname values (9909, 'Southing', 'South pointing axis used in 2D projected coordinate systems (e.g. south oriented transverse Mercator)', '', 'OGP', 'OGP', '2000-03-07', '', 0);
insert into epsg_coordinateaxisname values (9910, 'Geocentric X', 'First axis of a right-handed earth centered 3D Cartesian coordinate system; lies in the equatorial plane such that a vector pointing in the direction of the positive X is in the plane of the international meridian.', '', 'OGP', 'IOGP', '2016-12-15', '2016.045', 0);
insert into epsg_coordinateaxisname values (9911, 'Geocentric Y', 'Second axis of a right-handed earth centered 3D Cartesian coordinate system; in the equatorial plane perpendicular to both of the X and Z axes and pointing eastward such that it forms a right-handed coordinate system.', '', 'OGP', 'IOGP', '2016-12-15', '2016.045', 0);
insert into epsg_coordinateaxisname values (9912, 'Geocentric Z', 'Third axis of a right-handed earth centered 3D Cartesian coordinate system; the Z-axis is approximately parallel to the earth''s rotation axis, positive towards the north pole.', '', 'OGP', 'IOGP', '2016-12-15', '2016.045', 0);
insert into epsg_coordinateaxisname values (9913, 'First local axis', 'First axis of any local coordinate system.', 'First and second local coordinate axes are assumed to be horizontal and may be supplemented by ''local height'' or ''local depth'' to form a local 3D coordinate system.', 'OGP', 'OGP', '2000-03-07', '', 0);
insert into epsg_coordinateaxisname values (9914, 'Second local axis', 'Second axis of any local coordinate system.', '', 'OGP', 'OGP', '2000-03-07', '', 0);
insert into epsg_coordinateaxisname values (9915, 'Third local axis', 'Third axis of any local coordinate system.', 'If the local coordinate system is 3-dimensional, then the first and second local coordinate axes shall be horizontal and the third axis vertical.', 'OGP', 'OGP', '2000-06-22', '', 0);
insert into epsg_coordinateaxisname values (9916, 'Local height', 'Height influenced by the Earth''s gravity field, positive upwards.', 'Differs from gravity-related height in having an origin offset from sea level.', 'OGP', 'OGP', '2000-03-07', '2012.068', 1);
insert into epsg_coordinateaxisname values (9917, 'Local depth', 'Depth influenced by the Earth''s gravity field, positive downwards.', 'Similar to local height, but with the positive increments in the opposite direction.', 'OGP', 'OGP', '2000-03-07', '2012.068', 1);
insert into epsg_coordinateaxisname values (9918, 'Plant East', 'An axis of a local engineering grid 2D or 3D coordinate system. Plant East is 90 degrees clockwise from the Plant North axis when viewed from above the plane containing the two axes.', 'Not necessarily orientated to geographical east.', 'OGP', 'IOGP', '2016-02-15', '2016.006', 0);
insert into epsg_coordinateaxisname values (9919, 'Plant North', 'An axis of a local engineering grid 2D or 3D coordinate system. Plant North is 90 degrees counter-clockwise from the Plant East axis when viewed from above the plane containing the two axes.', 'Not necessarily orientated to geographical north.', 'OGP', 'IOGP', '2016-02-15', '2016.006', 0);
insert into epsg_coordinateaxisname values (9920, 'Bin grid I', 'First axis of seismic bin grid.', 'The rotation of this axis relative to the J-axis defines the handedness of the bin grid.', 'OGP', 'OGP', '2012-07-31', '2011.106', 0);
insert into epsg_coordinateaxisname values (9921, 'Bin grid J', 'Second axis of seismic bin grid.', 'The map grid bearing of this axis defines the orientation of the bin grid.', 'OGP', 'OGP', '2012-07-31', '2011.106', 0);
insert into epsg_coordinateaxisname values (9922, 'Inline', 'First axis of a seismic bingrid.', 'Inline is an ambiguous term, varying by usage.', 'OGP', 'OGP', '2000-03-07', '', 0);
insert into epsg_coordinateaxisname values (9923, 'Crossline', 'Second axis of a seismic bingrid.', 'Crossline is an ambiguous term, varying by usage.', 'OGP', 'OGP', '2000-03-07', '', 0);
insert into epsg_coordinateaxisname values (9924, 'Platform East', 'An axis of an offshore platform engineering grid 2D or 3D coordinate system. Platform East is 90 degrees clockwise from the Platform North axis when viewed from above the plane containing the two axes.', 'Not necessarily orientated to geographical east.', 'OGP', 'IOGP', '2016-02-15', '2016.006', 0);
insert into epsg_coordinateaxisname values (9925, 'Platform North', 'An axis of an offshore platform engineering grid 2D or 3D coordinate system. Platform North is 90 degrees counter-clockwise from the Platform East axis when viewed from above the plane containing the two axes.', 'Not necessarily orientated to geographical north.', 'OGP', 'IOGP', '2016-02-15', '2016.006', 0);
insert into epsg_coordinateaxisname values (9926, 'Spherical latitude', 'Angle from the equatorial plane to the geocentric point vector, northwards usually treated as positive.', '', 'Open GIS Consortium', 'OGP', '2002-02-12', '', 0);
insert into epsg_coordinateaxisname values (9927, 'Spherical longitude', 'Angle from the prime meridian plane to the meridian plane passing through a point, eastwards usually treated as positive.', '', 'Open GIS Consortium', 'OGP', '2002-02-12', '', 0);
insert into epsg_coordinateaxisname values (9928, 'Geocentric radius', 'The distance from the (geocentric) coordinate system origin to a point. The third axis of a spherical coordinate system.', 'Used to avoid the singularity when the two angles in a 3D polar coordinate system lie in the same plane.', 'Open GIS Consortium', 'OGP', '2002-02-12', '', 0);
insert into epsg_coordinateaxisname values (9929, 'Topocentric height', 'Vertical axis of a Cartesian 3D CS which is perpendicular to the ellipsoid and passes through the topocentric origin. Positive is up at the topocentric origin.', 'Used in topocentric coordinate-systems related geometrically to the ellipsoid, as opposed to those that are gravity-related. If the topocentric origin is on the ellipsoid surface, topocentric height = ellipsoidal height.', 'OGP', 'OGP', '2007-10-29', '', 0);
insert into epsg_coordinateaxisname values (9930, 'Topocentric East', 'East pointing axis used in topocentric coordinate systems.', '', 'OGP', 'OGP', '2007-10-29', '', 0);
insert into epsg_coordinateaxisname values (9931, 'Topocentric North', 'Norh pointing axis used in topocentric coordinate systems.', '', 'OGP', 'OGP', '2007-10-29', '', 0);



create table epsg_coordinatesystem (
    coord_sys_code integer not null,
    coord_sys_name character varying(254) not null,
    coord_sys_type character varying(24) not null,
    dimension smallint not null,
    remarks character varying(254),
    information_source character varying(254),
    data_source character varying(50) not null,
    revision_date date not null,
    change_id character varying(255),
    deprecated smallint not null,
    constraint pk_coordinatesystem primary key ( coord_sys_code )
);
comment on table epsg_coordinatesystem is 'This table is a dump of the EPSG table epsg_coordinatesystem extracted from the Postgresql export of the EPSG dataset 9.5.5.';


insert into epsg_coordinatesystem values (1024, 'Cartesian 2D CS. Axes: easting, northing (M,P). Orientations east, north. UoM m.', 'Cartesian', 2, 'Used in projected and engineering coordinate reference systems in Portuguese territories.', 'OGP', 'OGP', '2009-11-14', '2009.085', 0);
insert into epsg_coordinatesystem values (1025, 'Cartesian 2D CS for south polar azimuthal lonO 140°E. Axes: X,Y. Orientations: X along 130°W, Y along 140°E meridians. UoM: m.', 'Cartesian', 2, 'Used for South Pole tangential and secant projections.', 'OGP', 'OGP', '2010-03-14', '2009.034', 0);
insert into epsg_coordinatesystem values (1026, 'Cartesian 2D CS for UPS north. Axes: E,N. Orientations: E along 90°E meridian, N along 180°E meridian. UoM: m.', 'Cartesian', 2, 'Used for North Pole tangential and secant projections.', 'OGP', 'OGP', '2010-03-24', '2010.022', 0);
insert into epsg_coordinatesystem values (1027, 'Cartesian 2D CS for UPS south. Axes: E,N. Orientations: E along 90°E, N along 0°E meridians. UoM: m.', 'Cartesian', 2, 'Used for South Pole tangential and secant projections.', 'OGP', 'OGP', '2010-03-14', '2010.022', 0);
insert into epsg_coordinatesystem values (1028, 'Cartesian 2D CS. Axes: easting, northing (E,N). Orientations: east, north. UoM: ydCl.', 'Cartesian', 2, 'Used in projected and engineering coordinate reference systems.', 'OGP', 'OGP', '2011-07-22', '2011.026', 0);
insert into epsg_coordinatesystem values (1029, 'Cartesian 2D CS. Axes: northing, easting (N,E). Orientations: north, east. UoM: ft.', 'Cartesian', 2, 'Used in projected and engineering coordinate reference systems.', 'OGP', 'OGP', '2011-09-03', '2011.074', 0);
insert into epsg_coordinatesystem values (1030, 'Vertical CS. Axis: height (H). Orientation: up. UoM: ft.', 'vertical', 1, 'Used in vertical coordinate reference systems.', 'OGP', 'OGP', '2011-09-20', '2011.086', 0);
insert into epsg_coordinatesystem values (1031, 'Cartesian 2D CS. Axes: northing, westing (Y,X). Orientations: north, west. UoM: m.', 'Cartesian', 2, 'Used in Danish projected coordinate reference systems.', 'OGP', 'OGP', '2012-01-16', '2011.085', 0);
insert into epsg_coordinatesystem values (1032, 'Cartesian 3D CS (gravity-related Topocentric). Axes: plant E, Plant N, height (x,y,z). Orientations: east, north, up. UoM: m.', 'Cartesian', 3, 'Used in engineering coordinate reference systems. x and y are in the horizontal plane and z is the local vertical. Not to be confused with CS 4461.', 'OGP', 'OGP', '2012-07-05', '2012.068', 0);
insert into epsg_coordinatesystem values (1033, 'Bin grid CS (I = J+90°). Axes: I,J.', 'Cartesian', 2, 'I-axis positive direction is rotated 90° clockwise from J-axis when viewed from above. Geographical direction of axes and bin dimensions in map grid units are defined in associated coordinate operation.', 'OGP', 'OGP', '2012-07-18', '2011.106', 0);
insert into epsg_coordinatesystem values (1034, 'Bin grid CS (I = J-90°). Axes: I,J.', 'Cartesian', 2, 'I-axis positive direction is rotated 90° counter-clockwise from J-axis when viewed from above. Geographical direction of axes and bin dimensions in map grid units are defined in associated coordinate operation.', 'OGP', 'OGP', '2012-07-18', '2011.106', 0);
insert into epsg_coordinatesystem values (1035, 'Cartesian 2D CS for north polar azimuthal lonO 90°E. Axes: X,Y. Orientations: X along 180°E, Y along 90°W meridians. UoM: m.', 'Cartesian', 2, 'Used for North Pole tangential and secant projections.', 'OGP', 'OGP', '2012-11-13', '2012.084', 0);
insert into epsg_coordinatesystem values (1036, 'Cartesian 2D CS for north polar azimuthal lonO 33°W. Axes: X,Y. Orientations: X along 57°E, Y along 147°E meridians. UoM: m.', 'Cartesian', 2, 'Used for North Pole tangential and secant projections.', 'OGP', 'OGP', '2012-12-01', '2012.088', 0);
insert into epsg_coordinatesystem values (1037, 'Cartesian 2D CS for north polar azimuthal lonO 18°E. Axes: X,Y. Orientations: X along 108°E, Y along 162°W meridians. UoM: m.', 'Cartesian', 2, 'Used for North Pole tangential and secant projections.', 'OGP', 'OGP', '2012-12-01', '2012.088', 0);
insert into epsg_coordinatesystem values (1038, 'Cartesian 2D CS for north polar azimuthal lonO 105°E. Axes: X,Y. Orientations: X along 165°W, Y along 75°W meridians. UoM: m.', 'Cartesian', 2, 'Used for North Pole tangential and secant projections.', 'OGP', 'OGP', '2012-12-01', '2012.088', 0);
insert into epsg_coordinatesystem values (1039, 'Cartesian 2D CS. Axes: easting, northing (E,N). Orientations: east, north. UoM: ft.', 'Cartesian', 2, 'Used in projected and engineering coordinate reference systems.', 'OGP', 'OGP', '2012-12-08', '2012.095', 0);
insert into epsg_coordinatesystem values (1040, 'Cartesian 3D CS. Axes: x,y,z. Orientations: forward, starboard, up. UoM: m.', 'Cartesian', 3, 'Left-handed Cartesian 3D CS, used on moving platforms. Axes directions are for the platform body when it is at rest.', 'IOGP', 'IOGP', '2016-02-14', '2016.003', 0);
insert into epsg_coordinatesystem values (1041, 'Cartesian 3D CS. Axes: x,y,z. Orientations: forward, starboard, down. UoM: m.', 'Cartesian', 3, 'Right-handed Cartesian 3D CS, used on moving platforms. Axes directions are for the platform body when it is at rest.', 'IOGP', 'IOGP', '2016-02-13', '2016.003', 0);
insert into epsg_coordinatesystem values (1042, 'Cartesian 3D CS. Axes: x,y,z. Orientations: starboard, forward, up. UoM: m.', 'Cartesian', 3, 'Right-handed Cartesian 3D CS, used on moving platforms. Axes directions are for the platform body when it is at rest.', 'IOGP', 'IOGP', '2016-02-13', '2016.003', 0);
insert into epsg_coordinatesystem values (1043, 'Vertical CS. Axis: depth (D). Orientation: down. UoM: ftUS.', 'vertical', 1, 'Used in US vertical coordinate reference systems.', 'OGP', 'OGP', '2013-08-21', '2013.028', 0);
insert into epsg_coordinatesystem values (1044, 'Cartesian 2D CS for south polar azimuthal lonO 180°E. Axes: N,E. Orientations: N along 180°E, E along 90°W meridians. UoM: m.', 'Cartesian', 2, 'Used for South Pole tangential and secant projections.', 'OGP', 'OGP', '2014-07-22', '2014.046', 0);
insert into epsg_coordinatesystem values (1045, 'Cartesian 3D CS. Axes: x,y,z. Orientations: starboard, forward, down. UoM: m.', 'Cartesian', 3, 'Left-handed Cartesian 3D CS, used on moving platforms. Axes directions are for the platform body when it is at rest.', 'IOGP', 'IOGP', '2016-02-13', '2016.003', 0);
insert into epsg_coordinatesystem values (4400, 'Cartesian 2D CS. Axes: easting, northing (E,N). Orientations: east, north. UoM: m.', 'Cartesian', 2, 'Used in projected and engineering coordinate reference systems.', 'OGP', 'OGP', '2001-04-29', '', 0);
insert into epsg_coordinatesystem values (4401, 'Cartesian 2D CS. Axes: easting, northing (E,N). Orientations: east, north. UoM: chBnB.', 'Cartesian', 2, 'Used in projected and engineering coordinate reference systems.', 'OGP', 'OGP', '2001-04-29', '', 0);
insert into epsg_coordinatesystem values (4402, 'Cartesian 2D CS. Axes: easting, northing (E,N). Orientations: east, north. UoM: chSe.', 'Cartesian', 2, 'Used in projected and engineering coordinate reference systems.', 'OGP', 'OGP', '2001-04-29', '', 0);
insert into epsg_coordinatesystem values (4403, 'Cartesian 2D CS. Axes: easting, northing (E,N). Orientations: east, north. UoM: ftCla.', 'Cartesian', 2, 'Used in projected and engineering coordinate reference systems.', 'OGP', 'OGP', '2001-04-29', '', 0);
insert into epsg_coordinatesystem values (4404, 'Cartesian 2D CS. Axes: easting, northing (E,N). Orientations: east, north. UoM: ftGC.', 'Cartesian', 2, 'Used in projected and engineering coordinate reference systems.', 'OGP', 'OGP', '2001-04-29', '', 0);
insert into epsg_coordinatesystem values (4405, 'Cartesian 2D CS. Axes: easting, northing (E,N). Orientations: east, north. UoM: ftSe.', 'Cartesian', 2, 'Used in projected and engineering coordinate reference systems.', 'OGP', 'OGP', '2001-04-29', '', 0);
insert into epsg_coordinatesystem values (4406, 'Cartesian 2D CS. Axes: easting, northing (E,N). Orientations: east, north. UoM: km.', 'Cartesian', 2, 'Used in projected and engineering coordinate reference systems.', 'OGP', 'OGP', '2001-04-29', '', 0);
insert into epsg_coordinatesystem values (4407, 'Cartesian 2D CS. Axes: easting, northing (E,N). Orientations: east, north. UoM: lkCla.', 'Cartesian', 2, 'Used in projected and engineering coordinate reference systems.', 'OGP', 'OGP', '2001-04-29', '', 0);
insert into epsg_coordinatesystem values (4408, 'Cartesian 2D CS. Axes: easting, northing (E,N). Orientations: east, north. UoM: ydInd.', 'Cartesian', 2, 'Used in projected and engineering coordinate reference systems.', 'OGP', 'OGP', '2001-04-29', '', 0);
insert into epsg_coordinatesystem values (4409, 'Cartesian 2D CS. Axes: easting, northing (E,N). Orientations: east, north. UoM: ydSe.', 'Cartesian', 2, 'Used in projected and engineering coordinate reference systems.', 'OGP', 'OGP', '2001-04-29', '', 0);
insert into epsg_coordinatesystem values (4410, 'Cartesian 2D CS. Axes: easting, northing (E,N). Orientations: east, north. UoM: chSe(T).', 'Cartesian', 2, 'Used in projected and engineering coordinate reference systems.', 'OGP', 'OGP', '2006-07-24', '', 0);
insert into epsg_coordinatesystem values (4460, 'Cartesian 2D CS for north polar azimuthal lonO 0°E. Axes: E,N. Orientations: E along 90°E, N along 180°E meridians. UoM: m.', 'Cartesian', 2, 'Used for North Pole tangential and secant projections.', 'OGP', 'OGP', '2008-09-19', '', 0);
insert into epsg_coordinatesystem values (4461, 'Cartesian 3D CS (ellipsoid-based Topocentric). Axes: easting, northing, topocentric height (U,V,W). Orientations: east, north, up. UoM: m.', 'Cartesian', 3, 'U = tangent to ellipsoidal surface at topocentric origin, positive east; V = tangent to ellipsoid surface at topocentric origin, positive north; and W = orthogonal to ellipsoidal surface passing through topocentric origin and positive up.', 'OGP', 'OGP', '2007-11-01', '', 0);
insert into epsg_coordinatesystem values (4462, 'Cartesian 2D CS for north polar azimuthal lonO 90°E. Axes: X,Y. Orientations: X along 180°W, Y along 90°W meridians. UoM: m.', 'Cartesian', 2, 'Used for North Pole tangential and secant projections.', 'OGP', 'OGP', '2008-06-23', '2008.045 2012.096', 1);
insert into epsg_coordinatesystem values (4463, 'Cartesian 2D CS for north polar azimuthal lonO 10°E. Axes: X,Y. Orientations: X along 100°E, Y along 170°W meridians. UoM: m.', 'Cartesian', 2, 'Used for North Pole tangential and secant projections.', 'OGP', 'OGP', '2008-06-23', '2008.045', 0);
insert into epsg_coordinatesystem values (4464, 'Cartesian 2D CS for north polar azimuthal lonO 180°E. Axes: X,Y. Orientations: X along 90°W, Y along 0°E meridians. UoM: m.', 'Cartesian', 2, 'Used for North Pole tangential and secant projections.', 'OGP', 'OGP', '2008-06-23', '2008.045', 0);
insert into epsg_coordinatesystem values (4465, 'Cartesian 2D CS for north polar azimuthal lonO 40°W. Axes: X,Y. Orientations: X along 50°E, Y along 140°E meridians. UoM: m.', 'Cartesian', 2, 'Used for North Pole tangential and secant projections.', 'OGP', 'OGP', '2008-06-23', '2008.045', 0);
insert into epsg_coordinatesystem values (4466, 'Cartesian 2D CS for north polar azimuthal lonO 100°W. Axes: X,Y. Orientations: X along 10°W, Y along 80°E meridians. UoM: m.', 'Cartesian', 2, 'Used for North Pole tangential and secant projections.', 'OGP', 'OGP', '2008-06-23', '2008.045', 0);
insert into epsg_coordinatesystem values (4467, 'Cartesian 2D CS for north polar azimuthal lonO 150°W. Axes: X,Y. Orientations: X along 60°W, Y along 30°E meridians. UoM: m.', 'Cartesian', 2, 'Used for North Pole tangential and secant projections.', 'OGP', 'OGP', '2008-06-23', '2008.045', 0);
insert into epsg_coordinatesystem values (4468, 'Cartesian 2D CS for north polar azimuthal lonO 45°W. Axes: X,Y. Orientations: X along 45°E, Y along 135°E meridians. UoM: m.', 'Cartesian', 2, 'Used for North Pole tangential and secant projections.', 'OGP', 'OGP', '2008-06-23', '2008.045', 0);
insert into epsg_coordinatesystem values (4469, 'Cartesian 2D CS for north polar azimuthal lonO 0°E. Axes: X,Y. Orientations: X along 90°E, Y along 180°E meridians. UoM: m.', 'Cartesian', 2, 'Used for North Pole tangential and secant projections.', 'OGP', 'OGP', '2008-06-23', '2008.045', 0);
insert into epsg_coordinatesystem values (4470, 'Cartesian 2D CS for south polar azimuthal lonO 0°E. Axes: X,Y. Orientations: X along 90°E, Y along 0°E meridians. UoM: m.', 'Cartesian', 2, 'Used for South Pole tangential and secant projections.', 'OGP', 'OGP', '2008-06-23', '2008.045', 0);
insert into epsg_coordinatesystem values (4471, 'Cartesian 2D CS for south polar azimuthal lonO 165°W. Axes: E,N. Orientations: E along 75°W, N along 165°W meridians. UoM: m.', 'Cartesian', 2, 'Used for South Pole tangential and secant projections.', 'OGP', 'OGP', '2008-06-23', '2008.045', 0);
insert into epsg_coordinatesystem values (4472, 'Cartesian 2D CS for south polar azimuthal lonO 150°W. Axes: E,N. Orientations: E along 60°W, N along 150°W meridians. UoM: m.', 'Cartesian', 2, 'Used for South Pole tangential and secant projections.', 'OGP', 'OGP', '2008-06-23', '2008.045', 0);
insert into epsg_coordinatesystem values (4473, 'Cartesian 2D CS for south polar azimuthal lonO 135°W. Axes: E,N. Orientations: E along 45°W, N along 135°W meridians. UoM: m.', 'Cartesian', 2, 'Used for South Pole tangential and secant projections.', 'OGP', 'OGP', '2008-06-23', '2008.045', 0);
insert into epsg_coordinatesystem values (4474, 'Cartesian 2D CS for south polar azimuthal lonO 105°W. Axes: E,N. Orientations: E along 15°W, N along 105°W meridians. UoM: m.', 'Cartesian', 2, 'Used for South Pole tangential and secant projections.', 'OGP', 'OGP', '2008-06-23', '2008.045', 0);
insert into epsg_coordinatesystem values (4475, 'Cartesian 2D CS for south polar azimuthal lonO 90°W. Axes: E,N. Orientations: E along 0°E, N along 90°W meridians. UoM: m.', 'Cartesian', 2, 'Used for South Pole tangential and secant projections.', 'OGP', 'OGP', '2008-06-23', '2008.045', 0);
insert into epsg_coordinatesystem values (4476, 'Cartesian 2D CS for south polar azimuthal lonO 75°W. Axes: E,N. Orientations: E along 15°E, N along 75°W meridians. UoM: m.', 'Cartesian', 2, 'Used for South Pole tangential and secant projections.', 'OGP', 'OGP', '2008-06-23', '2008.045', 0);
insert into epsg_coordinatesystem values (4477, 'Cartesian 2D CS for south polar azimuthal lonO 45°W. Axes: E,N. Orientations: E along 45°E, N along 45°W meridians. UoM: m.', 'Cartesian', 2, 'Used for South Pole tangential and secant projections.', 'OGP', 'OGP', '2008-06-23', '2008.045', 0);
insert into epsg_coordinatesystem values (4478, 'Cartesian 2D CS for south polar azimuthal lonO 30°W. Axes: E,N. Orientations: E along 60°E, N along 30°W meridians. UoM: m.', 'Cartesian', 2, 'Used for South Pole tangential and secant projections.', 'OGP', 'OGP', '2008-06-23', '2008.045', 0);
insert into epsg_coordinatesystem values (4479, 'Cartesian 2D CS for south polar azimuthal lonO 15°W. Axes: E,N. Orientations: E along 75°E, N along 15°W meridians. UoM: m.', 'Cartesian', 2, 'Used for South Pole tangential and secant projections.', 'OGP', 'OGP', '2008-06-23', '2008.045', 0);
insert into epsg_coordinatesystem values (4480, 'Cartesian 2D CS for south polar azimuthal lonO 15°E. Axes: E,N. Orientations: E along 105°E, N along 15°E meridians. UoM: m.', 'Cartesian', 2, 'Used for South Pole tangential and secant projections.', 'OGP', 'OGP', '2008-06-23', '2008.045', 0);
insert into epsg_coordinatesystem values (4481, 'Cartesian 2D CS for south polar azimuthal lonO 30°E. Axes: E,N. Orientations: E along 120°E, N along 30°Emeridians. UoM: m.', 'Cartesian', 2, 'Used for South Pole tangential and secant projections.', 'OGP', 'OGP', '2008-06-23', '2008.045', 0);
insert into epsg_coordinatesystem values (4482, 'Cartesian 2D CS for south polar azimuthal lonO 45°E. Axes: E,N. Orientations: E along 135°E, N along 45°E meridians. UoM: m.', 'Cartesian', 2, 'Used for South Pole tangential and secant projections.', 'OGP', 'OGP', '2008-06-23', '2008.045', 0);
insert into epsg_coordinatesystem values (4483, 'Cartesian 2D CS for south polar azimuthal lonO 75°E. Axes: E,N. Orientations: E along 165°E, N along 75°E meridians. UoM: m.', 'Cartesian', 2, 'Used for South Pole tangential and secant projections.', 'OGP', 'OGP', '2008-06-23', '2008.045', 0);
insert into epsg_coordinatesystem values (4484, 'Cartesian 2D CS for south polar azimuthal lonO 90°E. Axes: E,N. Orientations: E along 180°E, N along 90°E meridians. UoM: m.', 'Cartesian', 2, 'Used for South Pole tangential and secant projections.', 'OGP', 'OGP', '2008-06-23', '2008.045', 0);
insert into epsg_coordinatesystem values (4485, 'Cartesian 2D CS for south polar azimuthal lonO 105°E. Axes: E,N. Orientations: E along 165°W, N along 105°E meridians. UoM: m.', 'Cartesian', 2, 'Used for South Pole tangential and secant projections.', 'OGP', 'OGP', '2008-06-23', '2008.045', 0);
insert into epsg_coordinatesystem values (4486, 'Cartesian 2D CS for south polar azimuthal lonO 135°E. Axes: E,N. Orientations: E along 135°W, N along 135°E meridians. UoM: m.', 'Cartesian', 2, 'Used for South Pole tangential and secant projections.', 'OGP', 'OGP', '2008-06-23', '2008.045', 0);
insert into epsg_coordinatesystem values (4487, 'Cartesian 2D CS for south polar azimuthal lonO 150°E. Axes: E,N. Orientations: E along 120°W, N along 150°E meridians. UoM: m.', 'Cartesian', 2, 'Used for South Pole tangential and secant projections.', 'OGP', 'OGP', '2008-06-23', '2008.045', 0);
insert into epsg_coordinatesystem values (4488, 'Cartesian 2D CS for south polar azimuthal lonO 165°E. Axes: E,N. Orientations: E along 105°W, N along 165°E meridians. UoM: m.', 'Cartesian', 2, 'Used for South Pole tangential and secant projections.', 'OGP', 'OGP', '2008-06-23', '2008.045', 0);
insert into epsg_coordinatesystem values (4489, 'Cartesian 2D CS for south polar azimuthal lonO 70°E. Axes: E,N. Orientations: E along 160°E, N along 70°E meridians. UoM: m.', 'Cartesian', 2, 'Used for South Pole tangential and secant projections.', 'OGP', 'OGP', '2008-06-23', '2008.045', 0);
insert into epsg_coordinatesystem values (4490, 'Cartesian 2D CS for south polar azimuthal lonO 0°E. Axes: E,N. Orientations: E along 90°E, N along 0°E meridians. UoM: m.', 'Cartesian', 2, 'Used for South Pole tangential and secant projections.', 'OGP', 'OGP', '2008-06-23', '2008.045', 0);
insert into epsg_coordinatesystem values (4491, 'Cartesian 2D CS. Axes: westing, northing (W,N). Orientations: west, north. UoM: m.', 'Cartesian', 2, 'Used in old Danish coordinate reference systems.', 'Landmaelingar Islands (National Land Survey of Iceland).', 'OGP', '2001-04-29', '', 0);
insert into epsg_coordinatesystem values (4492, 'Cartesian 2D CS for south polar azimuthal lonO 140°E. Axes: X,Y. Orientations: X along 130°W, Y along 140°E meridians. UoM: m.', 'Cartesian', 2, 'Used for South Pole tangential and secant projections.', 'OGP', 'OGP', '2008-06-23', '2008.045 2009.034', 1);
insert into epsg_coordinatesystem values (4493, 'Cartesian 2D CS for UPS north. Axes: N,E. Orientations: N along 180°E meridian, E along 90°E meridian. UoM: m.', 'Cartesian', 2, 'Used for North Pole tangential and secant projections.', 'DMA TM8358.2', 'OGP', '2010-03-30', '2008.045 2010.022', 0);
insert into epsg_coordinatesystem values (4494, 'Cartesian 2D CS for UPS south. Axes: N,E. Orientations: N along 0°E, E along 90°E meridians. UoM: m.', 'Cartesian', 2, 'Used for South Pole tangential and secant projections.', 'DMA TM8358.2', 'OGP', '2008-06-23', '2008.045', 0);
insert into epsg_coordinatesystem values (4495, 'Cartesian 2D CS. Axes: easting, northing (X,Y). Orientations: east, north. UoM: ft.', 'Cartesian', 2, 'Used in projected and engineering coordinate reference systems.', 'OGP', 'OGP', '2001-11-06', '', 0);
insert into epsg_coordinatesystem values (4496, 'Cartesian 2D CS. Axes: easting, northing [E(X),N(Y)]. Orientations: east, north. UoM: m.', 'Cartesian', 2, 'Used in projected and engineering coordinate reference systems.', 'OGP', 'OGP', '2001-04-29', '', 0);
insert into epsg_coordinatesystem values (4497, 'Cartesian 2D CS. Axes: easting, northing (X,Y). Orientations: east, north. UoM: ftUS.', 'Cartesian', 2, 'Used in projected and engineering coordinate reference systems.', 'OGP', 'OGP', '2001-04-29', '', 0);
insert into epsg_coordinatesystem values (4498, 'Cartesian 2D CS. Axes: easting, northing (Y,X). Orientations: east, north. UoM: m.', 'Cartesian', 2, 'Used in projected and engineering coordinate reference systems.', 'OGP', 'OGP', '2001-04-29', '', 0);
insert into epsg_coordinatesystem values (4499, 'Cartesian 2D CS. Axes: easting, northing (X,Y). Orientations: east, north. UoM: m.', 'Cartesian', 2, 'Used in projected and engineering coordinate reference systems.', 'OGP', 'OGP', '2001-04-29', '', 0);
insert into epsg_coordinatesystem values (4500, 'Cartesian 2D CS. Axes: northing, easting (N,E). Orientations: north, east. UoM: m.', 'Cartesian', 2, 'Used in projected and engineering coordinate reference systems.', 'OGP', 'OGP', '2001-04-29', '', 0);
insert into epsg_coordinatesystem values (4501, 'Cartesian 2D CS. Axes: northing, westing (N,E). Orientations: north, west. UoM: m.', 'Cartesian', 2, 'Used in Danish projected coordinate reference systems. Note that second axis has abbreviation E but is positive west.', 'OGP', 'OGP', '2002-01-26', '', 0);
insert into epsg_coordinatesystem values (4502, 'Cartesian 2D CS. Axes: northing, easting (N,E). Orientations: north, east. UoM: ftCla.', 'Cartesian', 2, 'Used in projected and engineering coordinate reference systems.', 'OGP', 'OGP', '2006-09-25', '', 0);
insert into epsg_coordinatesystem values (4530, 'Cartesian 2D CS. Axes: northing, easting (X,Y). Orientations: north, east. UoM: m.', 'Cartesian', 2, 'Used in projected and engineering coordinate reference systems.', 'OGP', 'OGP', '2001-04-29', '', 0);
insert into epsg_coordinatesystem values (4531, 'Cartesian 2D CS. Axes: northing, easting (x,y). Orientations: north, east. UoM: m.', 'Cartesian', 2, 'Used in projected and engineering coordinate reference systems.', 'OGP', 'OGP', '2001-04-29', '', 0);
insert into epsg_coordinatesystem values (4532, 'Cartesian 2D CS. Axes: northing, easting (Y,X). Orientations: north, east. UoM: m.', 'Cartesian', 2, 'Used in projected and engineering coordinate reference systems.', 'OGP', 'OGP', '2001-04-29', '', 0);
insert into epsg_coordinatesystem values (4533, 'Cartesian 2D CS. Axes: northing, easting (X,Y). Orientations: north, east. UoM: lk.', 'Cartesian', 2, 'Used in projected and engineering coordinate reference systems.', 'OGP', 'OGP', '2006-07-19', '', 0);
insert into epsg_coordinatesystem values (4534, 'Cartesian 2D CS. Axes: northing, easting (no abbrev). Orientations: north, east. UoM: m.', 'Cartesian', 2, 'Used in projected coordinate reference systems for nautical charting.', 'OGP', 'OGP', '2006-07-30', '', 0);
insert into epsg_coordinatesystem values (6401, 'Ellipsoidal 3D CS. Axes: latitude, longitude, ellipsoidal height. Orientations: north, east, up. UoM: DMSH, DMSH, m.', 'ellipsoidal', 3, 'Used in geographic 3D coordinate reference systems. Preferred axis unit format for human interface.', 'OGP', 'OGP', '2002-11-18', '2002.850', 1);
insert into epsg_coordinatesystem values (6402, 'Ellipsoidal 2D CS. Axes: latitude, longitude. Orientations: north, east. UoM: DMSH.', 'ellipsoidal', 2, 'Used in geographic 2D coordinate reference systems. Preferred axis unit format for human interface.', 'OGP', 'OGP', '2002-11-18', '2002.850', 1);
insert into epsg_coordinatesystem values (6403, 'Ellipsoidal 2D CS. Axes: latitude, longitude. Orientations: north, east. UoM: grads.', 'ellipsoidal', 2, 'Used in geographic 2D coordinate reference systems.', 'OGP', 'IOGP', '2015-05-22', '2002.850 2015.018', 0);
insert into epsg_coordinatesystem values (6404, 'Spherical 3D CS. Axes: latitude, longitude, radius. Orientations: north, east, up. UoM: degrees, degrees, metres.', 'spherical', 3, 'Used in geocentric 3D coordinate reference systems.', 'Open GIS Consortium', 'OGP', '2004-01-06', '2002.300 2003.390', 0);
insert into epsg_coordinatesystem values (6405, 'Ellipsoidal 2D CS. Axes: latitude, longitude. Orientations: north, east. UoM: dec deg', 'ellipsoidal', 2, 'Used for computer interchange of geographic 2D coordinate reference systems.', 'OGP', 'OGP', '2002-11-22', '', 1);
insert into epsg_coordinatesystem values (6406, 'Ellipsoidal 2D CS. Axes: latitude, longitude. Orientations: north, east. UoM: degH', 'ellipsoidal', 2, 'Used in geographic 2D coordinate reference systems adopting an alternative representation to degree minute second hemisphere.', 'OGP', 'OGP', '2002-11-22', '', 1);
insert into epsg_coordinatesystem values (6407, 'Ellipsoidal 2D CS. Axes: latitude, longitude. Orientations: north, east. UoM: Hdeg', 'ellipsoidal', 2, 'Used in geographic 2D coordinate reference systems adopting an alternative representation to degree minute second hemisphere.', 'OGP', 'OGP', '2002-11-22', '', 1);
insert into epsg_coordinatesystem values (6408, 'Ellipsoidal 2D CS. Axes: latitude, longitude. Orientations: north, east. UoM: DM', 'ellipsoidal', 2, 'Used in geographic 2D coordinate reference systems adopting an alternative representation to degree minute second hemisphere.', 'OGP', 'OGP', '2002-11-22', '', 1);
insert into epsg_coordinatesystem values (6409, 'Ellipsoidal 2D CS. Axes: latitude, longitude. Orientations: north, east. UoM: DMH', 'ellipsoidal', 2, 'Used in geographic 2D coordinate reference systems adopting an alternative representation to degree minute second hemisphere.', 'OGP', 'OGP', '2002-11-22', '', 1);
insert into epsg_coordinatesystem values (6410, 'Ellipsoidal 2D CS. Axes: latitude, longitude. Orientations: north, east. UoM: HDM', 'ellipsoidal', 2, 'Used in geographic 2D coordinate reference systems adopting an alternative representation to degree minute second hemisphere.', 'OGP', 'OGP', '2002-11-22', '', 1);
insert into epsg_coordinatesystem values (6411, 'Ellipsoidal 2D CS. Axes: latitude, longitude. Orientations: north, east. UoM: DMS', 'ellipsoidal', 2, 'Used in geographic 2D coordinate reference systems adopting an alternative representation to degree minute second hemisphere.', 'OGP', 'OGP', '2002-11-22', '', 1);
insert into epsg_coordinatesystem values (6412, 'Ellipsoidal 2D CS. Axes: latitude, longitude. Orientations: north, east. UoM: HDMS', 'ellipsoidal', 2, 'Used in geographic 2D coordinate reference systems adopting an alternative representation to degree minute second hemisphere.', 'OGP', 'OGP', '2002-11-22', '', 1);
insert into epsg_coordinatesystem values (6413, 'Ellipsoidal 3D CS. Axes: latitude, longitude, ellipsoidal height. Orientations: north, east, up. UoM: dec deg, dec deg, m.', 'ellipsoidal', 3, 'Used for computer interchange of geographic 3D coordinate reference systems.', 'OGP', 'OGP', '2002-11-22', '', 1);
insert into epsg_coordinatesystem values (6414, 'Ellipsoidal 3D CS. Axes: latitude, longitude, ellipsoidal height. Orientations: north, east, up. UoM: degH, degH, m.', 'ellipsoidal', 3, 'Used in geographic 3D coordinate reference systems adopting an alternative representation to degree minute second hemisphere.', 'OGP', 'OGP', '2002-11-22', '', 1);
insert into epsg_coordinatesystem values (6415, 'Ellipsoidal 3D CS. Axes: latitude, longitude, ellipsoidal height. Orientations: north, east, up. UoM: Hdeg, Hdeg, m.', 'ellipsoidal', 3, 'Used in geographic 3D coordinate reference systems adopting an alternative representation to degree minute second hemisphere.', 'OGP', 'OGP', '2002-11-22', '', 1);
insert into epsg_coordinatesystem values (6416, 'Ellipsoidal 3D CS. Axes: latitude, longitude, ellipsoidal height. Orientations: north, east, up. UoM: DM, DM, m.', 'ellipsoidal', 3, 'Used in geographic 3D coordinate reference systems adopting an alternative representation to degree minute second hemisphere.', 'OGP', 'OGP', '2002-11-22', '', 1);
insert into epsg_coordinatesystem values (6417, 'Ellipsoidal 3D CS. Axes: latitude, longitude, ellipsoidal height. Orientations: north, east, up. UoM: DMH, DMH, m.', 'ellipsoidal', 3, 'Used in geographic 3D coordinate reference systems adopting an alternative representation to degree minute second hemisphere.', 'OGP', 'OGP', '2002-11-22', '', 1);
insert into epsg_coordinatesystem values (6418, 'Ellipsoidal 3D CS. Axes: latitude, longitude, ellipsoidal height. Orientations: north, east, up. UoM: HDM, HDM, m.', 'ellipsoidal', 3, 'Used in geographic 3D coordinate reference systems adopting an alternative representation to degree minute second hemisphere.', 'OGP', 'OGP', '2002-11-22', '', 1);
insert into epsg_coordinatesystem values (6419, 'Ellipsoidal 3D CS. Axes: latitude, longitude, ellipsoidal height. Orientations: north, east, up. UoM: DMS, DMS, m.', 'ellipsoidal', 3, 'Used in geographic 3D coordinate reference systems adopting an alternative representation to degree minute second hemisphere.', 'OGP', 'OGP', '2002-11-22', '', 1);
insert into epsg_coordinatesystem values (6420, 'Ellipsoidal 3D CS. Axes: latitude, longitude, ellipsoidal height. Orientations: north, east, up. UoM: HDMS, HDMS, m.', 'ellipsoidal', 3, 'Used in geographic 3D coordinate reference systems adopting an alternative representation to degree minute second hemisphere.', 'OGP', 'OGP', '2002-11-22', '', 1);
insert into epsg_coordinatesystem values (6421, 'Ellipsoidal 3D CS. Axes: latitude, longitude, ellipsoidal height. Orientations: north, east, up. UoM: grads, grads, m.', 'ellipsoidal', 3, 'Used in geographic 3D coordinate reference systems.', 'OGP', 'IOGP', '2015-05-22', '2015.018', 0);
insert into epsg_coordinatesystem values (6422, 'Ellipsoidal 2D CS. Axes: latitude, longitude. Orientations: north, east. UoM: degree', 'ellipsoidal', 2, 'Coordinates referenced to this CS are in degrees. Any degree representation (e.g. DMSH, decimal, etc.) may be used but that used must be declared for the user by the supplier of data. Used in geographic 2D coordinate reference systems.', 'OGP', 'IOGP', '2015-05-22', '2008.045 2015.018', 0);
insert into epsg_coordinatesystem values (6423, 'Ellipsoidal 3D CS. Axes: latitude, longitude, ellipsoidal height. Orientations: north, east, up. UoM: degree, degree, metre.', 'ellipsoidal', 3, 'Horizontal coordinates referenced to this CS are in degrees. Any degree representation (e.g. DMSH, decimal, etc.) may be used but that used must be declared for the user. Used in geographic 3D coordinate reference systems.', 'OGP', 'IOGP', '2015-05-22', '2008.045 2015.018', 0);
insert into epsg_coordinatesystem values (6424, 'Ellipsoidal 2D CS. Axes: longitude, latitude. Orientations: east, north. UoM: degree', 'ellipsoidal', 2, 'Used in geog2D CRSs for some web mapping: CS code 6422 recommended. Coordinates referenced to this CS are in degrees. Any degree representation (e.g. DMSH, decimal, etc.) may be used but that used must be declared for the user by the supplier of data.', 'OGP', 'IOGP', '2015-05-22', '2008.045 2015.018', 0);
insert into epsg_coordinatesystem values (6425, 'Ellipsoidal 2D CS. Axes: longitude, latitude. Orientations: east, north. UoM: grads.', 'ellipsoidal', 2, 'Used in geographic 2D coordinate reference systems for web mapping. Not recommended for use at the human interface: use of CS code 6403 is preferred.', 'OGP', 'IOGP', '2015-05-22', '2015.018', 0);
insert into epsg_coordinatesystem values (6426, 'Ellipsoidal 3D CS. Axes: longitude, latitude, ellipsoidal height. Orientations: east, north, up. UoM: degree, degree, metre.', 'ellipsoidal', 3, 'Used in some geographic 3D CRSs for web mapping. CS code 6423 recommended instead. Horizontal coordinates referenced to this CS are in degrees. Any degree representation (e.g. DMSH, decimal, etc.) may be used but that used must be declared for the user.', 'OGP', 'IOGP', '2015-05-22', '2008.045 2015.018', 0);
insert into epsg_coordinatesystem values (6427, 'Ellipsoidal 3D CS. Axes: longitude, latitude, ellipsoidal height. Orientations: east, north, up. UoM: grads, grads, m.', 'ellipsoidal', 3, 'Used in geographic 3D coordinate reference systems for web mapping. Not recommended for use at the human interface: use of CS code 6421 is preferred.', 'OGP', 'IOGP', '2015-05-22', '2015.018', 0);
insert into epsg_coordinatesystem values (6428, 'Ellipsoidal 2D CS. Axes: latitude, longitude. Orientations: north, east. UoM: rad', 'ellipsoidal', 2, 'Used in geographic 2D coordinate reference systems.', 'OGP', 'IOGP', '2015-05-22', '2015.018', 0);
insert into epsg_coordinatesystem values (6429, 'Ellipsoidal 2D CS. Axes: longitude, latitude. Orientations: east, north. UoM: rad', 'ellipsoidal', 2, 'Used in geographic 2D coordinate reference systems for web mapping. Not recommended for use at the human interface: use of CS code 6428 is preferred.', 'OGP', 'IOGP', '2015-05-22', '2015.018', 0);
insert into epsg_coordinatesystem values (6430, 'Ellipsoidal 3D CS. Axes: latitude, longitude, ellipsoidal height. Orientations: north, east, up. UoM: rad, rad, m.', 'ellipsoidal', 3, 'Used in geographic 3D coordinate reference systems.', 'OGP', 'IOGP', '2015-05-22', '2015.018', 0);
insert into epsg_coordinatesystem values (6431, 'Ellipsoidal 3D CS. Axes: longitude, latitude, ellipsoidal height. Orientations: east, north, up. UoM: rad, rad, m.', 'ellipsoidal', 3, 'Used in geographic 3D coordinate reference systems for web mapping. Not recommended for use at the human interface: use of CS code 6430 is preferred.', 'OGP', 'IOGP', '2015-05-22', '2015.018', 0);
insert into epsg_coordinatesystem values (6495, 'Vertical CS. Axis: depth (D). Orientation: down. UoM: ft.', 'vertical', 1, 'Used in vertical coordinate reference systems.', 'OGP', 'OGP', '2008-03-14', '', 0);
insert into epsg_coordinatesystem values (6496, 'Vertical CS. Axis: height (H). Orientation: up. UoM: ft(Br36).', 'vertical', 1, 'Used in vertical coordinate reference systems.', 'OGP', 'OGP', '2006-11-28', '', 0);
insert into epsg_coordinatesystem values (6497, 'Vertical CS. Axis: height (H). Orientation: up. UoM: ftUS.', 'vertical', 1, 'Used in vertical coordinate reference systems.', 'OGP', 'OGP', '2006-11-28', '', 0);
insert into epsg_coordinatesystem values (6498, 'Vertical CS. Axis: depth (D). Orientation: down. UoM: m.', 'vertical', 1, 'Used in vertical coordinate reference systems.', 'OGP', 'OGP', '2006-11-28', '', 0);
insert into epsg_coordinatesystem values (6499, 'Vertical CS. Axis: height (H). Orientation: up. UoM: m.', 'vertical', 1, 'Used in vertical coordinate reference systems.', 'OGP', 'OGP', '2006-11-28', '', 0);
insert into epsg_coordinatesystem values (6500, 'Earth centred, earth fixed, righthanded 3D coordinate system, consisting of 3 orthogonal axes with X and Y axes in the equatorial plane, positive Z-axis parallel to mean earth rotation axis and pointing towards North Pole. UoM: m.', 'Cartesian', 3, 'Cartesian 3D CS, used in geocentric coordinate reference systems.', 'OGP', 'OGP', '2008-06-23', '2008.045', 0);
insert into epsg_coordinatesystem values (6501, 'Cartesian 2D CS. Axes: southing, westing (X,Y). Orientations: south, west. UoM: m.', 'Cartesian', 2, 'Used in projected and engineering coordinate reference systems.', 'OGP', 'OGP', '2001-04-29', '', 0);
insert into epsg_coordinatesystem values (6502, 'Cartesian 2D CS. Axes: westing, southing (Y,X). Orientations: west, south. UoM: GLM.', 'Cartesian', 2, 'Used in projected and engineering coordinate reference systems.', 'OGP', 'OGP', '2001-04-29', '', 0);
insert into epsg_coordinatesystem values (6503, 'Cartesian 2D CS. Axes: westing, southing (Y,X). Orientations: west, south. UoM: m.', 'Cartesian', 2, 'Used in projected and engineering coordinate reference systems.', 'OGP', 'OGP', '2001-04-29', '', 0);
insert into epsg_coordinatesystem values (6504, 'Cartesian 2D CS. Axes: plant N, Plant E (n,e). Orientations: northwest, northeast. UoM: m.', 'Cartesian', 2, 'Used in engineering coordinate reference systems.', 'OGP', 'OGP', '2014-07-28', '2014.047', 0);
insert into epsg_coordinatesystem values (6505, 'Cartesian 2D CS. Axes: 1st local axis, 2nd local axis (n,e). Orientations: northwest, northeast. UoM: m.', 'Cartesian', 2, 'Used in engineering coordinate reference systems.', 'OGP', 'OGP', '2014-07-28', '2014.047', 0);
insert into epsg_coordinatesystem values (6506, 'Cartesian 2D CS. Axes: 1st local axis, 2nd local axis (I,J). Orientations: ese/nne. UoM: 165 x 330 ftUS.', 'Cartesian', 2, 'Used in engineering coordinate reference systems for seismic bin grids.', 'OGP', 'OGP', '2001-01-19', '2014.047', 1);
insert into epsg_coordinatesystem values (6507, 'Cartesian 2D CS. Axes: 1st local axis, 2nd local axis (X,Y). Orientations: north, west. UoM: m.', 'Cartesian', 2, 'Used in engineering coordinate reference systems.', 'OGP', 'OGP', '2001-01-19', '', 0);
insert into epsg_coordinatesystem values (6508, 'Cartesian 2D CS. Axes: bin grid J, bin grid I (J,I). Orientations: nne/ese. UoM: 12.5 x 25m.', 'Cartesian', 2, 'Used in engineering coordinate reference systems for seismic bin grids.', 'OGP', 'OGP', '2001-01-19', '2011.106', 1);
insert into epsg_coordinatesystem values (6509, 'Cartesian 2D CS. Axes: southing, westing (P,M). Orientations: south, west. UoM: m.', 'Cartesian', 2, 'Used in old projected coordinate reference systems in Portugal.', 'OGP', 'OGP', '2002-07-13', '', 0);
insert into epsg_coordinatesystem values (6510, 'Cartesian 2D CS. Axes: plant E, Plant N (x,y). Orientations: northeast, northwest. UoM: m.', 'Cartesian', 2, 'Used in engineering coordinate reference systems.', 'OGP', 'OGP', '2014-07-28', '2014.047', 0);
insert into epsg_coordinatesystem values (6511, 'Seismic acquisition bin grid. Axes: Inline, Crossline (I,J). Orientations: Along rx line, across rx line. UoM: 25m x 12.5m.', 'Cartesian', 2, 'Bin grid increment on I axis = 1 bin, bin grid increment on J axis = 1 bin.¶By definition, I axis is rotated 90 degrees clockwise from J axis.', 'OGP', 'OGP', '2005-09-09', '2011.106', 1);
insert into epsg_coordinatesystem values (6512, 'Cartesian 3D CS (gravity-related Topocentric). Axes: plant E, Plant N, height (x,y,z). Orientations: east, north, up. UoM: m.', 'Cartesian', 3, 'Used in engineering coordinate reference systems. x and y are in the horizontal plane and z is the local vertical. Not to be confused with CS 4461.', 'OGP', 'OGP', '2008-08-17', '2008.086 2012.068', 1);



CREATE TABLE epsg_coordinateaxis (
    coord_axis_code integer,
    coord_sys_code integer not null,
    coord_axis_name_code integer not null,
    coord_axis_orientation character varying(24) not null,
    coord_axis_abbreviation character varying(24) not null,
    uom_code integer not null,
    coord_axis_order smallint not null,
    constraint pk_coordinateaxis primary key ( coord_sys_code, coord_axis_name_code )
);
comment on table epsg_coordinateaxis is 'This table is a dump of the EPSG table epsg_coordinateaxis extracted from the Postgresql export of the EPSG dataset 9.5.5.';


alter table epsg_coordinateaxis add constraint epsg_coordinateaxis_coord_axis_code_key unique ( coord_axis_code );

alter table epsg_coordinateaxis add constraint fk_coord_axis_name_code foreign key ( coord_axis_name_code ) references epsg_coordinateaxisname( coord_axis_name_code );
alter table epsg_coordinateaxis add constraint fk_coord_sys_code foreign key ( coord_sys_code ) references epsg_coordinatesystem( coord_sys_code );
alter table epsg_coordinateaxis add constraint fk_uom_code2 foreign key ( uom_code ) references epsg_unitofmeasure ( uom_code );


insert into epsg_coordinateaxis values (1039, 1024, 9906, 'east', 'M', 9001, 1);
insert into epsg_coordinateaxis values (1040, 1024, 9907, 'north', 'P', 9001, 2);
insert into epsg_coordinateaxis values (1062, 1025, 9906, 'North along 130°W', 'X', 9001, 1);
insert into epsg_coordinateaxis values (1063, 1025, 9907, 'North along 140°E', 'Y', 9001, 2);
insert into epsg_coordinateaxis values (1065, 1026, 9906, 'South along 90°E', 'E', 9001, 1);
insert into epsg_coordinateaxis values (1066, 1026, 9907, 'South along 180°E', 'N', 9001, 2);
insert into epsg_coordinateaxis values (1056, 1027, 9906, 'North along 90°E', 'E', 9001, 1);
insert into epsg_coordinateaxis values (1058, 1027, 9907, 'North along 0°E', 'N', 9001, 2);
insert into epsg_coordinateaxis values (1073, 1028, 9906, 'east', 'E', 9037, 1);
insert into epsg_coordinateaxis values (1074, 1028, 9907, 'north', 'N', 9037, 2);
insert into epsg_coordinateaxis values (1078, 1029, 9907, 'north', 'N', 9002, 1);
insert into epsg_coordinateaxis values (1079, 1029, 9906, 'east', 'E', 9002, 2);
insert into epsg_coordinateaxis values (1082, 1030, 9904, 'up', 'H', 9002, 1);
insert into epsg_coordinateaxis values (1101, 1031, 9907, 'north', 'Y', 9001, 1);
insert into epsg_coordinateaxis values (1102, 1031, 9908, 'west', 'X', 9001, 2);
insert into epsg_coordinateaxis values (1110, 1032, 9918, 'east', 'x', 9001, 1);
insert into epsg_coordinateaxis values (1111, 1032, 9919, 'north', 'y', 9001, 2);
insert into epsg_coordinateaxis values (1112, 1032, 9904, 'up', 'z', 9001, 3);
insert into epsg_coordinateaxis values (1428, 1033, 9920, 'J-axis plus 90°', 'I', 1024, 1);
insert into epsg_coordinateaxis values (1429, 1033, 9921, 'See associated operation', 'J', 1024, 2);
insert into epsg_coordinateaxis values (1431, 1034, 9920, 'J-axis minus 90°', 'I', 1024, 1);
insert into epsg_coordinateaxis values (1432, 1034, 9921, 'See associated operation', 'J', 1024, 2);
insert into epsg_coordinateaxis values (1466, 1035, 9906, 'South along 180°E', 'X', 9001, 1);
insert into epsg_coordinateaxis values (1467, 1035, 9907, 'South along 90°W', 'Y', 9001, 2);
insert into epsg_coordinateaxis values (1471, 1036, 9906, 'South along 57°E', 'X', 9001, 1);
insert into epsg_coordinateaxis values (1472, 1036, 9907, 'South along 147°E', 'Y', 9001, 2);
insert into epsg_coordinateaxis values (1476, 1037, 9906, 'South along 108°E', 'X', 9001, 1);
insert into epsg_coordinateaxis values (1477, 1037, 9907, 'South along 162°W', 'Y', 9001, 2);
insert into epsg_coordinateaxis values (1481, 1038, 9906, 'South along 165°W', 'X', 9001, 1);
insert into epsg_coordinateaxis values (1482, 1038, 9907, 'South along 75°W', 'Y', 9001, 2);
insert into epsg_coordinateaxis values (1486, 1039, 9906, 'east', 'E', 9002, 1);
insert into epsg_coordinateaxis values (1487, 1039, 9907, 'north', 'N', 9002, 2);
insert into epsg_coordinateaxis values (1024, 1040, 1024, 'Ahead', 'x', 9001, 1);
insert into epsg_coordinateaxis values (1025, 1040, 1025, 'Starboard', 'y', 9001, 2);
insert into epsg_coordinateaxis values (1026, 1040, 1026, 'Upward', 'z', 9001, 3);
insert into epsg_coordinateaxis values (1030, 1041, 1024, 'Ahead', 'x', 9001, 1);
insert into epsg_coordinateaxis values (1031, 1041, 1025, 'Starboard', 'y', 9001, 2);
insert into epsg_coordinateaxis values (1032, 1041, 1027, 'Downward', 'z', 9001, 3);
insert into epsg_coordinateaxis values (1036, 1042, 1025, 'Starboard', 'x', 9001, 1);
insert into epsg_coordinateaxis values (1037, 1042, 1024, 'Ahead', 'y', 9001, 2);
insert into epsg_coordinateaxis values (1038, 1042, 1026, 'Upward', 'z', 9001, 3);
insert into epsg_coordinateaxis values (1516, 1043, 9905, 'down', 'D', 9003, 1);
insert into epsg_coordinateaxis values (1525, 1044, 9907, 'North along 180°E', 'N', 9001, 1);
insert into epsg_coordinateaxis values (1526, 1044, 9906, 'North along 90°W', 'E', 9001, 2);
insert into epsg_coordinateaxis values (1044, 1045, 1025, 'Starboard', 'x', 9001, 1);
insert into epsg_coordinateaxis values (1045, 1045, 1024, 'Ahead', 'y', 9001, 2);
insert into epsg_coordinateaxis values (1046, 1045, 1027, 'Downward', 'z', 9001, 3);
insert into epsg_coordinateaxis values (1, 4400, 9906, 'east', 'E', 9001, 1);
insert into epsg_coordinateaxis values (2, 4400, 9907, 'north', 'N', 9001, 2);
insert into epsg_coordinateaxis values (3, 4401, 9906, 'east', 'E', 9062, 1);
insert into epsg_coordinateaxis values (4, 4401, 9907, 'north', 'N', 9062, 2);
insert into epsg_coordinateaxis values (5, 4402, 9906, 'east', 'E', 9042, 1);
insert into epsg_coordinateaxis values (6, 4402, 9907, 'north', 'N', 9042, 2);
insert into epsg_coordinateaxis values (7, 4403, 9906, 'east', 'E', 9005, 1);
insert into epsg_coordinateaxis values (8, 4403, 9907, 'north', 'N', 9005, 2);
insert into epsg_coordinateaxis values (9, 4404, 9906, 'east', 'E', 9094, 1);
insert into epsg_coordinateaxis values (10, 4404, 9907, 'north', 'N', 9094, 2);
insert into epsg_coordinateaxis values (11, 4405, 9906, 'east', 'E', 9041, 1);
insert into epsg_coordinateaxis values (12, 4405, 9907, 'north', 'N', 9041, 2);
insert into epsg_coordinateaxis values (13, 4406, 9906, 'east', 'X', 9036, 1);
insert into epsg_coordinateaxis values (14, 4406, 9907, 'north', 'Y', 9036, 2);
insert into epsg_coordinateaxis values (15, 4407, 9906, 'east', 'E', 9039, 1);
insert into epsg_coordinateaxis values (16, 4407, 9907, 'north', 'N', 9039, 2);
insert into epsg_coordinateaxis values (17, 4408, 9906, 'east', 'E', 9084, 1);
insert into epsg_coordinateaxis values (18, 4408, 9907, 'north', 'N', 9084, 2);
insert into epsg_coordinateaxis values (19, 4409, 9906, 'east', 'E', 9040, 1);
insert into epsg_coordinateaxis values (20, 4409, 9907, 'north', 'N', 9040, 2);
insert into epsg_coordinateaxis values (181, 4410, 9906, 'east', 'E', 9301, 1);
insert into epsg_coordinateaxis values (182, 4410, 9907, 'north', 'N', 9301, 2);
insert into epsg_coordinateaxis values (236, 4460, 9906, 'South along 90°E.', 'E', 9001, 1);
insert into epsg_coordinateaxis values (237, 4460, 9907, 'South along 180°E', 'N', 9001, 2);
insert into epsg_coordinateaxis values (205, 4461, 9930, 'east', 'U', 9001, 1);
insert into epsg_coordinateaxis values (206, 4461, 9931, 'north', 'V', 9001, 2);
insert into epsg_coordinateaxis values (207, 4461, 9929, 'up', 'W', 9001, 3);
insert into epsg_coordinateaxis values (193, 4462, 9906, 'South along 180°W', 'X', 9001, 1);
insert into epsg_coordinateaxis values (194, 4462, 9907, 'South along 90°W', 'Y', 9001, 2);
insert into epsg_coordinateaxis values (195, 4463, 9906, 'South along 100°E', 'X', 9001, 1);
insert into epsg_coordinateaxis values (196, 4463, 9907, 'South along 170°W', 'Y', 9001, 2);
insert into epsg_coordinateaxis values (197, 4464, 9906, 'South along 90°W', 'X', 9001, 1);
insert into epsg_coordinateaxis values (198, 4464, 9907, 'South along 0°E', 'Y', 9001, 2);
insert into epsg_coordinateaxis values (199, 4465, 9906, 'South along 50°E', 'X', 9001, 1);
insert into epsg_coordinateaxis values (200, 4465, 9907, 'South along 140°E', 'Y', 9001, 2);
insert into epsg_coordinateaxis values (201, 4466, 9906, 'South along 10°W', 'X', 9001, 1);
insert into epsg_coordinateaxis values (202, 4466, 9907, 'South along 80°E', 'Y', 9001, 2);
insert into epsg_coordinateaxis values (203, 4467, 9906, 'South along 60°W', 'X', 9001, 1);
insert into epsg_coordinateaxis values (204, 4467, 9907, 'South along 30°E', 'Y', 9001, 2);
insert into epsg_coordinateaxis values (191, 4468, 9906, 'South along 45°E', 'X', 9001, 1);
insert into epsg_coordinateaxis values (192, 4468, 9907, 'South along 135°E', 'Y', 9001, 2);
insert into epsg_coordinateaxis values (187, 4469, 9906, 'South along 90°E', 'X', 9001, 1);
insert into epsg_coordinateaxis values (188, 4469, 9907, 'South along 180°E', 'Y', 9001, 2);
insert into epsg_coordinateaxis values (185, 4470, 9906, 'North along 90°E', 'X', 9001, 1);
insert into epsg_coordinateaxis values (186, 4470, 9907, 'North along 0°E', 'Y', 9001, 2);
insert into epsg_coordinateaxis values (137, 4471, 9906, 'North along 75°W', 'E', 9001, 1);
insert into epsg_coordinateaxis values (138, 4471, 9907, 'North along 165°W', 'N', 9001, 2);
insert into epsg_coordinateaxis values (156, 4472, 9906, 'North along 60°W', 'E', 9001, 1);
insert into epsg_coordinateaxis values (139, 4472, 9907, 'North along 150°W', 'N', 9001, 2);
insert into epsg_coordinateaxis values (157, 4473, 9906, 'North along 45°W', 'E', 9001, 1);
insert into epsg_coordinateaxis values (140, 4473, 9907, 'North along 135°W', 'N', 9001, 2);
insert into epsg_coordinateaxis values (158, 4474, 9906, 'North along 15°W', 'E', 9001, 1);
insert into epsg_coordinateaxis values (141, 4474, 9907, 'North along 105°W', 'N', 9001, 2);
insert into epsg_coordinateaxis values (159, 4475, 9906, 'North along 0°E', 'E', 9001, 1);
insert into epsg_coordinateaxis values (142, 4475, 9907, 'North along 90°W', 'N', 9001, 2);
insert into epsg_coordinateaxis values (160, 4476, 9906, 'North along 15°E', 'E', 9001, 1);
insert into epsg_coordinateaxis values (143, 4476, 9907, 'North along 75°W', 'N', 9001, 2);
insert into epsg_coordinateaxis values (161, 4477, 9906, 'North along 45°E', 'E', 9001, 1);
insert into epsg_coordinateaxis values (144, 4477, 9907, 'North along 45°W', 'N', 9001, 2);
insert into epsg_coordinateaxis values (162, 4478, 9906, 'North along 60°E', 'E', 9001, 1);
insert into epsg_coordinateaxis values (145, 4478, 9907, 'North along 30°W', 'N', 9001, 2);
insert into epsg_coordinateaxis values (163, 4479, 9906, 'North along 75°E', 'E', 9001, 1);
insert into epsg_coordinateaxis values (146, 4479, 9907, 'North along 15°W', 'N', 9001, 2);
insert into epsg_coordinateaxis values (164, 4480, 9906, 'North along 105°E', 'E', 9001, 1);
insert into epsg_coordinateaxis values (147, 4480, 9907, 'North along 15°E', 'N', 9001, 2);
insert into epsg_coordinateaxis values (165, 4481, 9906, 'North along 120°E', 'E', 9001, 1);
insert into epsg_coordinateaxis values (148, 4481, 9907, 'North along 30°E', 'N', 9001, 2);
insert into epsg_coordinateaxis values (166, 4482, 9906, 'North along 135°E', 'E', 9001, 1);
insert into epsg_coordinateaxis values (149, 4482, 9907, 'North along 45°E', 'N', 9001, 2);
insert into epsg_coordinateaxis values (167, 4483, 9906, 'North along 165°E', 'E', 9001, 1);
insert into epsg_coordinateaxis values (150, 4483, 9907, 'North along 75°E', 'N', 9001, 2);
insert into epsg_coordinateaxis values (168, 4484, 9906, 'North along 180°E', 'E', 9001, 1);
insert into epsg_coordinateaxis values (151, 4484, 9907, 'North along 90°E', 'N', 9001, 2);
insert into epsg_coordinateaxis values (169, 4485, 9906, 'North along 165°W', 'E', 9001, 1);
insert into epsg_coordinateaxis values (152, 4485, 9907, 'North along 105°E', 'N', 9001, 2);
insert into epsg_coordinateaxis values (170, 4486, 9906, 'North along 135°W', 'E', 9001, 1);
insert into epsg_coordinateaxis values (153, 4486, 9907, 'North along 135°E', 'N', 9001, 2);
insert into epsg_coordinateaxis values (171, 4487, 9906, 'North along 120°W', 'E', 9001, 1);
insert into epsg_coordinateaxis values (154, 4487, 9907, 'North along 150°E', 'N', 9001, 2);
insert into epsg_coordinateaxis values (172, 4488, 9906, 'North along 105°W', 'E', 9001, 1);
insert into epsg_coordinateaxis values (155, 4488, 9907, 'North along 165°E', 'N', 9001, 2);
insert into epsg_coordinateaxis values (21, 4489, 9906, 'North along 160°E', 'E', 9001, 1);
insert into epsg_coordinateaxis values (22, 4489, 9907, 'North along 70°E', 'N', 9001, 2);
insert into epsg_coordinateaxis values (23, 4490, 9906, 'North along 90°E', 'E', 9001, 1);
insert into epsg_coordinateaxis values (24, 4490, 9907, 'North along 0°E', 'N', 9001, 2);
insert into epsg_coordinateaxis values (26, 4491, 9908, 'west', 'W', 9001, 1);
insert into epsg_coordinateaxis values (25, 4491, 9907, 'north', 'N', 9001, 2);
insert into epsg_coordinateaxis values (27, 4492, 9913, 'North along 130°W', 'X', 9001, 1);
insert into epsg_coordinateaxis values (28, 4492, 9914, 'North along 140°E', 'Y', 9001, 2);
insert into epsg_coordinateaxis values (30, 4493, 9907, 'South along 180°E', 'N', 9001, 1);
insert into epsg_coordinateaxis values (29, 4493, 9906, 'South along 90°E', 'E', 9001, 2);
insert into epsg_coordinateaxis values (32, 4494, 9907, 'North along 0°E', 'N', 9001, 1);
insert into epsg_coordinateaxis values (31, 4494, 9906, 'North along 90°E', 'E', 9001, 2);
insert into epsg_coordinateaxis values (33, 4495, 9906, 'east', 'X', 9002, 1);
insert into epsg_coordinateaxis values (34, 4495, 9907, 'north', 'Y', 9002, 2);
insert into epsg_coordinateaxis values (35, 4496, 9906, 'east', 'E(X)', 9001, 1);
insert into epsg_coordinateaxis values (36, 4496, 9907, 'north', 'N(Y)', 9001, 2);
insert into epsg_coordinateaxis values (37, 4497, 9906, 'east', 'X', 9003, 1);
insert into epsg_coordinateaxis values (38, 4497, 9907, 'north', 'Y', 9003, 2);
insert into epsg_coordinateaxis values (39, 4498, 9906, 'east', 'Y', 9001, 1);
insert into epsg_coordinateaxis values (40, 4498, 9907, 'north', 'X', 9001, 2);
insert into epsg_coordinateaxis values (41, 4499, 9906, 'east', 'X', 9001, 1);
insert into epsg_coordinateaxis values (42, 4499, 9907, 'north', 'Y', 9001, 2);
insert into epsg_coordinateaxis values (44, 4500, 9907, 'north', 'N', 9001, 1);
insert into epsg_coordinateaxis values (43, 4500, 9906, 'east', 'E', 9001, 2);
insert into epsg_coordinateaxis values (45, 4501, 9907, 'north', 'N', 9001, 1);
insert into epsg_coordinateaxis values (46, 4501, 9908, 'west', 'E', 9001, 2);
insert into epsg_coordinateaxis values (189, 4502, 9907, 'north', 'N', 9005, 1);
insert into epsg_coordinateaxis values (190, 4502, 9906, 'east', 'E', 9005, 2);
insert into epsg_coordinateaxis values (48, 4530, 9907, 'north', 'X', 9001, 1);
insert into epsg_coordinateaxis values (47, 4530, 9906, 'east', 'Y', 9001, 2);
insert into epsg_coordinateaxis values (50, 4531, 9907, 'north', 'x', 9001, 1);
insert into epsg_coordinateaxis values (49, 4531, 9906, 'east', 'y', 9001, 2);
insert into epsg_coordinateaxis values (52, 4532, 9907, 'north', 'Y', 9001, 1);
insert into epsg_coordinateaxis values (51, 4532, 9906, 'east', 'X', 9001, 2);
insert into epsg_coordinateaxis values (180, 4533, 9907, 'north', 'X', 9098, 1);
insert into epsg_coordinateaxis values (179, 4533, 9906, 'east', 'Y', 9098, 2);
insert into epsg_coordinateaxis values (183, 4534, 9907, 'north', 'none', 9001, 1);
insert into epsg_coordinateaxis values (184, 4534, 9906, 'east', 'none', 9001, 2);
insert into epsg_coordinateaxis values (53, 6401, 9901, 'north', 'Lat', 9108, 1);
insert into epsg_coordinateaxis values (54, 6401, 9902, 'east', 'Long', 9108, 2);
insert into epsg_coordinateaxis values (55, 6401, 9903, 'up', 'h', 9001, 3);
insert into epsg_coordinateaxis values (56, 6402, 9901, 'north', 'Lat', 9108, 1);
insert into epsg_coordinateaxis values (57, 6402, 9902, 'east', 'Long', 9108, 2);
insert into epsg_coordinateaxis values (58, 6403, 9901, 'north', 'Lat', 9105, 1);
insert into epsg_coordinateaxis values (59, 6403, 9902, 'east', 'Lon', 9105, 2);
insert into epsg_coordinateaxis values (60, 6404, 9926, 'north', 'Lat', 9122, 1);
insert into epsg_coordinateaxis values (61, 6404, 9927, 'east', 'Long', 9122, 2);
insert into epsg_coordinateaxis values (62, 6404, 9928, 'up', 'R', 9001, 3);
insert into epsg_coordinateaxis values (63, 6405, 9901, 'north', 'Lat', 9102, 1);
insert into epsg_coordinateaxis values (64, 6405, 9902, 'east', 'Long', 9102, 2);
insert into epsg_coordinateaxis values (65, 6406, 9901, 'north', 'Lat', 9116, 1);
insert into epsg_coordinateaxis values (66, 6406, 9902, 'east', 'Long', 9116, 2);
insert into epsg_coordinateaxis values (67, 6407, 9901, 'north', 'Lat', 9117, 1);
insert into epsg_coordinateaxis values (68, 6407, 9902, 'east', 'Long', 9117, 2);
insert into epsg_coordinateaxis values (69, 6408, 9901, 'north', 'Lat', 9115, 1);
insert into epsg_coordinateaxis values (70, 6408, 9902, 'east', 'Long', 9115, 2);
insert into epsg_coordinateaxis values (71, 6409, 9901, 'north', 'Lat', 9118, 1);
insert into epsg_coordinateaxis values (72, 6409, 9902, 'east', 'Long', 9118, 2);
insert into epsg_coordinateaxis values (73, 6410, 9901, 'north', 'Lat', 9119, 1);
insert into epsg_coordinateaxis values (74, 6410, 9902, 'east', 'Long', 9119, 2);
insert into epsg_coordinateaxis values (75, 6411, 9901, 'north', 'Lat', 9107, 1);
insert into epsg_coordinateaxis values (76, 6411, 9902, 'east', 'Long', 9107, 2);
insert into epsg_coordinateaxis values (77, 6412, 9901, 'north', 'Lat', 9120, 1);
insert into epsg_coordinateaxis values (78, 6412, 9902, 'east', 'Long', 9120, 2);
insert into epsg_coordinateaxis values (79, 6413, 9901, 'north', 'Lat', 9102, 1);
insert into epsg_coordinateaxis values (80, 6413, 9902, 'east', 'Long', 9102, 2);
insert into epsg_coordinateaxis values (81, 6413, 9903, 'up', 'h', 9001, 3);
insert into epsg_coordinateaxis values (82, 6414, 9901, 'north', 'Lat', 9116, 1);
insert into epsg_coordinateaxis values (83, 6414, 9902, 'east', 'Long', 9116, 2);
insert into epsg_coordinateaxis values (84, 6414, 9903, 'up', 'h', 9001, 3);
insert into epsg_coordinateaxis values (85, 6415, 9901, 'north', 'Lat', 9117, 1);
insert into epsg_coordinateaxis values (86, 6415, 9902, 'east', 'Long', 9117, 2);
insert into epsg_coordinateaxis values (87, 6415, 9903, 'up', 'h', 9001, 3);
insert into epsg_coordinateaxis values (88, 6416, 9901, 'north', 'Lat', 9115, 1);
insert into epsg_coordinateaxis values (89, 6416, 9902, 'east', 'Long', 9115, 2);
insert into epsg_coordinateaxis values (90, 6416, 9903, 'up', 'h', 9001, 3);
insert into epsg_coordinateaxis values (91, 6417, 9901, 'north', 'Lat', 9118, 1);
insert into epsg_coordinateaxis values (92, 6417, 9902, 'east', 'Long', 9118, 2);
insert into epsg_coordinateaxis values (93, 6417, 9903, 'up', 'h', 9001, 3);
insert into epsg_coordinateaxis values (94, 6418, 9901, 'north', 'Lat', 9119, 1);
insert into epsg_coordinateaxis values (95, 6418, 9902, 'east', 'Long', 9119, 2);
insert into epsg_coordinateaxis values (96, 6418, 9903, 'up', 'h', 9001, 3);
insert into epsg_coordinateaxis values (97, 6419, 9901, 'north', 'Lat', 9107, 1);
insert into epsg_coordinateaxis values (98, 6419, 9902, 'east', 'Long', 9107, 2);
insert into epsg_coordinateaxis values (99, 6419, 9903, 'up', 'h', 9001, 3);
insert into epsg_coordinateaxis values (100, 6420, 9901, 'north', 'Lat', 9120, 1);
insert into epsg_coordinateaxis values (101, 6420, 9902, 'east', 'Long', 9120, 2);
insert into epsg_coordinateaxis values (102, 6420, 9903, 'up', 'h', 9001, 3);
insert into epsg_coordinateaxis values (103, 6421, 9901, 'north', 'Lat', 9105, 1);
insert into epsg_coordinateaxis values (104, 6421, 9902, 'east', 'Lon', 9105, 2);
insert into epsg_coordinateaxis values (105, 6421, 9903, 'up', 'h', 9001, 3);
insert into epsg_coordinateaxis values (106, 6422, 9901, 'north', 'Lat', 9122, 1);
insert into epsg_coordinateaxis values (107, 6422, 9902, 'east', 'Lon', 9122, 2);
insert into epsg_coordinateaxis values (108, 6423, 9901, 'north', 'Lat', 9122, 1);
insert into epsg_coordinateaxis values (109, 6423, 9902, 'east', 'Lon', 9122, 2);
insert into epsg_coordinateaxis values (110, 6423, 9903, 'up', 'h', 9001, 3);
insert into epsg_coordinateaxis values (220, 6424, 9902, 'east', 'Lon', 9122, 1);
insert into epsg_coordinateaxis values (221, 6424, 9901, 'north', 'Lat', 9122, 2);
insert into epsg_coordinateaxis values (215, 6425, 9902, 'east', 'Lon', 9105, 1);
insert into epsg_coordinateaxis values (216, 6425, 9901, 'north', 'Lat', 9105, 2);
insert into epsg_coordinateaxis values (222, 6426, 9902, 'east', 'Lon', 9122, 1);
insert into epsg_coordinateaxis values (223, 6426, 9901, 'north', 'Lat', 9122, 2);
insert into epsg_coordinateaxis values (224, 6426, 9903, 'up', 'h', 9001, 3);
insert into epsg_coordinateaxis values (217, 6427, 9902, 'east', 'Lon', 9105, 1);
insert into epsg_coordinateaxis values (218, 6427, 9901, 'north', 'Lat', 9105, 2);
insert into epsg_coordinateaxis values (219, 6427, 9903, 'up', 'h', 9001, 3);
insert into epsg_coordinateaxis values (225, 6428, 9901, 'north', 'Lat', 9101, 1);
insert into epsg_coordinateaxis values (226, 6428, 9902, 'east', 'Lon', 9101, 2);
insert into epsg_coordinateaxis values (227, 6429, 9902, 'east', 'Lon', 9101, 1);
insert into epsg_coordinateaxis values (228, 6429, 9901, 'north', 'Lat', 9101, 2);
insert into epsg_coordinateaxis values (230, 6430, 9901, 'north', 'Lat', 9101, 1);
insert into epsg_coordinateaxis values (231, 6430, 9902, 'east', 'Lon', 9101, 2);
insert into epsg_coordinateaxis values (232, 6430, 9903, 'up', 'h', 9001, 3);
insert into epsg_coordinateaxis values (233, 6431, 9902, 'east', 'Lon', 9101, 1);
insert into epsg_coordinateaxis values (234, 6431, 9901, 'north', 'Lat', 9101, 2);
insert into epsg_coordinateaxis values (235, 6431, 9903, 'up', 'h', 9001, 3);
insert into epsg_coordinateaxis values (214, 6495, 9905, 'down', 'D', 9002, 1);
insert into epsg_coordinateaxis values (111, 6496, 9904, 'up', 'H', 9095, 1);
insert into epsg_coordinateaxis values (112, 6497, 9904, 'up', 'H', 9003, 1);
insert into epsg_coordinateaxis values (113, 6498, 9905, 'down', 'D', 9001, 1);
insert into epsg_coordinateaxis values (114, 6499, 9904, 'up', 'H', 9001, 1);
insert into epsg_coordinateaxis values (115, 6500, 9910, 'Geocentre > equator/0°E', 'X', 9001, 1);
insert into epsg_coordinateaxis values (116, 6500, 9911, 'Geocentre > equator/90°E', 'Y', 9001, 2);
insert into epsg_coordinateaxis values (117, 6500, 9912, 'Geocentre > north pole', 'Z', 9001, 3);
insert into epsg_coordinateaxis values (119, 6501, 9909, 'south', 'X', 9001, 1);
insert into epsg_coordinateaxis values (118, 6501, 9908, 'west', 'Y', 9001, 2);
insert into epsg_coordinateaxis values (120, 6502, 9908, 'west', 'Y', 9031, 1);
insert into epsg_coordinateaxis values (121, 6502, 9909, 'south', 'X', 9031, 2);
insert into epsg_coordinateaxis values (122, 6503, 9908, 'west', 'Y', 9001, 1);
insert into epsg_coordinateaxis values (123, 6503, 9909, 'south', 'X', 9001, 2);
insert into epsg_coordinateaxis values (125, 6504, 9919, 'northwest', 'n', 9001, 1);
insert into epsg_coordinateaxis values (124, 6504, 9918, 'northeast', 'e', 9001, 2);
insert into epsg_coordinateaxis values (126, 6505, 9913, 'northwest', 'n', 9001, 1);
insert into epsg_coordinateaxis values (127, 6505, 9914, 'northeast', 'e', 9001, 2);
insert into epsg_coordinateaxis values (128, 6506, 9913, 'east-south-east', 'I', 9205, 1);
insert into epsg_coordinateaxis values (129, 6506, 9914, 'north-north-east', 'J', 9204, 2);
insert into epsg_coordinateaxis values (130, 6507, 9913, 'north', 'X', 9001, 1);
insert into epsg_coordinateaxis values (131, 6507, 9914, 'west', 'Y', 9001, 2);
insert into epsg_coordinateaxis values (133, 6508, 9921, 'north north east', 'J', 9209, 1);
insert into epsg_coordinateaxis values (132, 6508, 9920, 'east south east', 'I', 9208, 2);
insert into epsg_coordinateaxis values (135, 6509, 9909, 'south', 'P', 9001, 1);
insert into epsg_coordinateaxis values (134, 6509, 9908, 'west', 'M', 9001, 2);
insert into epsg_coordinateaxis values (173, 6510, 9918, 'northeast', 'x', 9001, 1);
insert into epsg_coordinateaxis values (174, 6510, 9919, 'northwest', 'y', 9001, 2);
insert into epsg_coordinateaxis values (177, 6511, 9922, 'Along receiver lines', 'I', 9208, 1);
insert into epsg_coordinateaxis values (178, 6511, 9923, 'Across receiver lines', 'J', 9209, 2);
insert into epsg_coordinateaxis values (211, 6512, 9918, 'east', 'x', 9001, 1);
insert into epsg_coordinateaxis values (212, 6512, 9919, 'north', 'y', 9001, 2);
insert into epsg_coordinateaxis values (213, 6512, 9916, 'up', 'z', 9001, 3);

commit;