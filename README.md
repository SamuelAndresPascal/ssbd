# _Solar System Body Database_ - français

* [Définitions](#définitions)
* [Présentation du schéma](#présentation-du-schéma)
* [Présentation des données](#présentation-des-données)
* [Statut des fichiers](#statut-des-fichiers)
* [Utilisation](#utilisation)
* [Proposition de système d'identification et identification des entités et des concepts dans la base SSBD](#proposition-de-système-didentification-et-identification-des-entités-et-des-concepts-dans-la-base-ssbd)
* [Propositions d'évolutions syntaxiques](#propositions-dévolutions-syntaxiques)
    * [WKT (version Simple Features)](#wkt-version-simple-features)
    * [WKT (version Coordinate Transformation Services)](#wkt-version-coordinate-transformation-services)
    * [WKT2 (version 1.0)](#wkt2-version-10)

SSBD est un projet de base de données expérimental en cours d'élaboration qui se donne pour objectif d'utiliser à des fins de référencement en planétologie l'expérience capitalisée dans le domaine du référencement géographique. Cette expérience est principalement constituée par les standards abstraits, les formats et les réalisations techniques des organismes du domaine (OGC, ISO, IOGP, Esri etc.) tenant lieu de standard de fait.

Dans un premier temps SSBD s'appuie sur le schéma de la base de données EPSG comme source d'inspiration de manière à proposer une extension adaptée à l'information planétologique. Ceci a deux conséquences :

1. le référencement de certaines données de la base EPSG par leur code (voir [la section concernant les données EPSG référencées](#base-epsg));

2. la paternité conceptuelle du schéma de la base EPSG sur celui de la base SSBD en cours d'élaboration.

## Définitions

`méridien de référence` : Méridien passant par un repère observable.

`origine des longitudes` : Méridien défini comme doté d'une longitude nulle dans le contexte d'un méridien premier donné.

`méridien premier` : Abstraction du couple constitué par un méridien de référence et une origine des longitudes servant à définir les valeurs de longitude à la surface d'un corps. Dans le contexte d'un méridien premier, le méridien de référence et l'origine des longitudes définissent respectivement chacun la position et la valeur de la longitude de l'autre. Un méridien premier est également caractérisé par une longitude le rattachant à un méridien premier absolu pour un _système de méridiens premiers_ donné (par exemple, la longitude du Méridien de Paris par rapport au méridien de Greenwich, méridien premier absolu pour tous les méridiens premiers appuyés sur des repères à la surface de la croûte terrestre).

`méridien origine` : Employé comme synonyme de l'origine des longitudes.

## Présentation du schéma

Commentaires sur les relations et les champs remarquables.

### Mises à jour des données

```sql
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
```

### Phenomenon - phénomènes remarquables, planètes et satellites du système solaire

```sql
create table ssbd_phenomenon (
    phenomenon_code                                    varchar(254),
    phenomenon_name                                    varchar(80) not null,
    remarks                                            varchar(254),
    information_source                                 varchar(254),
    constraint pk_phenomenon primary key ( phenomenon_code ),
);
```

`phenomenon_code` : Un code d'identification des planètes et satellites construit à partir des [codes NAIF](https://naif.jpl.nasa.gov/pub/naif/toolkit_docs/FORTRAN/req/naif_ids.html) mais de manière à permettre d'associer un nombre illimité de satellites à chaque système de masses des principaux corps du système solaire. Ce choix est susceptible d'évolution.

### Ellipsoid - forme des planètes et satellites

```sql
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
```

`ellipsoid_code` : Un code d'identification des ellipsoïdes de la base SSBD.

`phenomenon_code` : Référence optionnelle et indicative au corps particulier pour lequel l'ellipsoïde a été originellement défini. Cette référence n'implique pas que le datum référençant l'ellipsoïde concerne le même corps indiqué par ce dernier. On autorise ainsi qu'un ellipsoïde initialement défini pour un corps déterminé puisse être utilisé pour représenter aussi la forme d'autres corps.

`semi_major_axis` : Rayon équatorial subplanétaire. Rayon de la sphère dans le cas d'un ellipsoïde sphérique ; demi-grand axe dans le cas d'un ellipsoïde biaxial ; rayon équatorial subplanétaire dans le cas d'un ellipsoïde triaxial ou quadriaxial.

`uom_code` : Code EPSG de l'unité utilisée pour la mesure des longueurs des rayons de l'ellipsoïde.

`inv_flattening`: Applatissement. Uniquement utilisé pour les ellipsoïdes biaxiaux dont le second axe caractéristique (rayon polaire) est défini par l'applatissement de l'ellipsoïde et non directement par la valeur de sa longueur (voir `semi_minor_axis`). `Null` dans le cas d'une sphère, d'un ellipsoïde triaxial ou quadriaxial et dans le cas d'un ellipsoïde biaxial dont le second axe est défini par sa longueur.

`semi_minor_axis` : Rayon polaire nord. `Null` dans le cas d'une sphère qui l'identifie par hypothèse au rayon, ainsi que dans le cas d'un ellipsoïde biaxial dont le second axe est défini par l'applatissement de l'ellipsoïde. Demi-petit axe dans le cas d'un ellipsoïde biaxial défini par la longueur de son second axe caractéristique. Rayon polaire dans le cas d'un ellipsoïde triaxial. Rayon polaire nord dans le cas d'un ellipsoïde quadriaxial.

`semi_axis_b` : Rayon équatorial orbital. `Null` dans le cas d'une sphère qui l'identifie par hypothèse au rayon, ainsi que dans le cas d'un ellipsoïde biaxial qui l'identifie par hypothèse au rayon équatorial subplanétaire. Rayon équatorial orbial dans le cas des ellipsoïdes triaxiaux et quadriaxiaux.

`semi_axis_s` : Rayon polaire sud. `Null` dans le cas d'une sphère qui l'identifie par hypothèse au rayon, ainsi que dans le cas des ellipsoïdes biaxiaux et triaxiaux qui l'identifient par hypothèse au rayon polaire nord. Non `null` uniquement dans le cas des ellipsoïdes quadriaxiaux.

_Note 1 : un ellipsoïde dont le rayon sud est différent du rayon nord est considéré comme quadriaxial, même en cas d'égalité parmi les trois autres rayons caractéristiques._

_Note 2 : les noms des champs sont susceptibles d'évoluer, en particulier afin de désigner les axes de façon plus académique et générale._

_Note 3 : si l'on considère le quintuplet (semi_major_axis, inv_flattening, semi_minor_axis, semi_axis_b, semi_axis_s), les combinaisons suivantes définissent le type d'ellipsoïde :_

|    semi_major_axis    |    inv_flattening    |    semi_minor_axis    |    semi_axis_b    |    semi_axis_s    |    type    |
| :--------------------------: | :---------------------: | :--------------------------: | :--------------------: | :--------------------: | :-------: |
| x | null | null | null | null | sphère |
| x | x | null | null | null | biaxial |
| x | null | x | null | null | biaxial |
| x | null | x | x | null | triaxial |
| x | null | x | x | x | quadriaxial |

### Primemeridiansystem - systèmes de méridiens premiers

Sur Terre, les méridiens de référence (voir la définition contextualisée plus bas) sont repérés par des phénomènes observables sur la croûte terrestre (repères de Greenwich, de Paris etc.), bien que ces marques soient artificielles. Sur d'autres planètes telluriques, les marques servant de repère sont naturelles mais affectent également la surface solide ; il peut s'agir par exemple de cratères.

En revanche, il n'existe pas de surface solide observable sur les planètes gazeuses. Les repères servant à définir les méridiens de référence sont donc observés en utilisant d'autres supports physiques (couverture nuageuse, champ magnétique). Pour une même planète, plusieurs catégories de supports sont susceptibles de définir des méridiens de référence concurrents, en mouvement les uns par rapport aux autres. Ce sont ces catégories qui définissent les systèmes de méridiens premiers.

```sql
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
```

`phenomenon_code` : Le code d'identification du corps sur lequel est défini le système de méridien. Ce code est obligatoire et définit par extension le corps sur lequel est défini un méridien premier ainsi que, par voie de conséquence, les datums et les systèmes de référence qui l'utilisent.

`prime_meridian_system_code` : Un code d'identification des systèmes de méridiens premiers de la base SSBD pour un corps donné.

`rotation` : Rotation du système de méridiens référencé dans l'ICRF (_International Celestial Reference Frame_).

### Primemeridan - méridiens premiers, méridiens de référence, origines des longitudes

Sur Terre, un [méridien de référence](#definitions) sert également [d'origine des longitudes](#definitions). On désigne donc indifféremment ces méridiens comme "méridien de référence", "origine des longitudes" ou "[méridien premier](#definitions)".

En planétologie, une marque utilisée comme repère d'une longitude particulière n'est pas forcément caractérisée par une longitude nulle. Dès lors, le méridien de référence qui la traverse ne peut plus être assimilé à l'origine des longitudes. Les définitions utilisées dans le cadre de la base SSBD distinguent les deux concepts. Un troisième concept, celui de méridien premier, est utilisé pour les associer. On peut donc définir en première approximaition un _méridien premier_ comme un couple _(méridien de référence, origine des longitudes)_.

Pour convertir des longitudes depuis un méridien premier vers un autre méridien premier, il suffit de définir par convention si le décalage de longitude à appliquer doit être appliqué de méridien origine à méridien origine ou bien de méridien de référence à méridien de référence.

La première convention offre un confort mathématique. Il suffit alors d'une opération d'addition ou de soustraction appliquée aux longitudes. Implicitement, cette convention revient à attribuer au méridien premier la localisation de l'origine des longitudes. 

La seconde convention offre une cohérence conceptuelle. Le méridien premier est désigné par un nom qu'il peut être logique de construire à partir du lieu remarquable traversé par le méridien de référence qu'il utilise. Implicitement, cette convention revient à attribuer au méridien premier la localisation du méridien de référence.

La base SSBD ne fait aucun choix de convention. Chaque définition de méridien premier reste libre de définir une localisation explicite du méridien premier à une longitude arbitraire exprimée à partir du méridien origine même qu'il définit. De manière à assurer les transformations de longitudes d'un méridien premier à un autre méridien premier, la valeur du décalage à appliquer à partir du méridien premier absolu du système de méridiens premiers, doit également être indiquée.

On peut donc finalement définir un méridien premier comme le triplet _(méridien de référence, origine des longitudes, longitude relative au méridien permier absolu du système)_.

```sql
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
```

`prime_meridian_code` : Un code d'identification des méridiens premiers de la base SSBD pour un système de méridiens premiers donné identifié par le couple _(phenomenon_code, system_code)_.

`relative_longitude` : Décalage de longitude entre le méridien premier courant et le méridien premier absolu du système de méridien premiers. Il s'agit de la différence de l'angle entre le méridien premier courant et le méridien premier absolu du système.

`relative_longitude_orientation` : Convention de l'orientation des longitudes positives à appliquer pour la mesure de l'angle de longitude relative du méridien premier. L'orientation peut être relative à la rotation du corps ('prograde', 'retrograde') ou utiliser le référentiel auquel le système est attaché (ICRF) ('direct', 'indirect'). 

`reference_meridian_longitude` : Longitude du méridien de référence mesurée à partir de l'origine des longitudes.

`prime_meridian_longitude` : Longitude du méridien premier mesurée à partir de l'origine des longitudes.

`longitude_origin_orientation` : Convention de l'orientation des longitudes positives à appliquer pour les mesures des angles le longitude du méridien de référence et de longitude du méridien premier à partir de l'origine des longitudes. L'orientation peut être relative à la rotation du corps ('prograde', 'retrograde') ou utiliser le référentiel auquel le système est attaché (ICRF) ('direct', 'indirect'). 

`uom_code` : Code EPSG de l'unité utilisée pour les mesures des angles de définition du méridien premier.


### Datum

Sur le plan structurel, le schéma des datums de la base SSBD se résume à une simplification du schéma des datums de la base EPSG. La zone d'utilisation n'en fait pas partie pour le moment. L'époque de réalisation est présente mais n'est pas renseignée par l'échantillon de données actuel. Enfin, les ellipsoïdes et les méridiens premiers associés par les datums SSBD sont eux-mêmes définis par la base SSBD et ne font pas référence à des entités définies par la base EPSG.

```sql
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
```

### Coordinatesystem - systèmes de coordonnées

```sql
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
```

### Coordinateaxis - axes de coordonnées

```sql
create table ssbd_coordinateaxis (
    coord_sys_code                                      varchar(254) not null,
    coord_axis_order                                    smallint not null,
    coord_axis_name_code                                varchar(80) not null,
    coord_axis_orientation                              varchar(24) not null,
    coord_axis_abbreviation                             varchar(24) not null,
    uom_code                                            varchar(80) not null,
    constraint pk_coordinateaxis primary key ( coord_sys_code, coord_axis_order )
);
```


### Coordinatereferencesystem - systèmes de coordonnées de référence

Sur le plan structurel, le schéma des systèmes de coordonnées de référence de la base SSBD se résume à une simplification du schéma des systèmes de coordonnées de référence de la base EPSG. La zone d'utilisation n'en fait pas partie pour le moment.

Quoique la relation fasse mention d'un champ destiné à représenter les opérations de projection, les opérations de manière générale ne sont pas représentées pour le moment dans la base SSBD.

```sql
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
    -- crs_scope                                          varchar(254) not null,
    remarks                                            varchar(254),
    information_source                                 varchar(254),
    data_source                                        varchar(40) not null,
    revision_date                                      date not null,
    change_code                                        varchar(255),
    show_crs                                           smallint not null,
    deprecated                                         smallint not null,
    constraint pk_coordinatereferencesystem primary key ( coord_ref_sys_code )
);
```

`coord_sys_code` : Code du système de coordonnées utilisé.

### Range - contraintes sur les axes

La base SSBD n'a pas pour objectif de se restreindre à la représentation de l'information planétologique à l'exclusion de la Terre, mais d'étendre les concepts utilisés en information géographique de manière à les préciser, les expliciter, les développer et les généraliser à l'ensemble des corps du système solaire, voire de servir de base à une recension plus large des phénomènes planétologiques.

Il est en particulier intéressant de représenter les contraintes portant sur les axes d'un système de coordonnées, _dans le contexte_ d'un système de coordonnées de référence donné. Par exemple, les longitudes sont la plupart du temps données sur la Terre par une valeur d'angle comprise dans l'intervalle ]-180 ; 180] (en degrés décimaux) alors qu'elles utilisent pour la plupart des autres planètes l'intervalle [0 ; 360[. Il est donc nécessaire de représenter cette information afin d'appliquer les conventions en usage de manière appropriée.

La syntaxe [GML](https://www.opengeospatial.org/standards/gml) permet de représenter des contraintes d'intervalle de validité sur un axe à partir de la version 3.2.1. Celles-ci sont toutefois attachées aux axes eux-mêmes et donc au système de coordonnées qui les utilise. De manière à préserver des définitions d'axes indépendantes de ces contraintes et donc de faciliter la réutilisation des axes et des systèmes de coordonnées, la base SSBD représente les contraintes d'intervalles sur les axes au niveau du système de coordonnées de référence.

Une première relation recense donc les contraintes d'intervalle indépendamment de tout contexte d'utilisation.

```sql
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
```
Une seconde relation contextualise les contraintes dans le cadre des systèmes de coordonnées de référence qui en font l'usage, en indiquant l'axe concerné.


```sql
create table ssbd_coordinatereferencesystemrange (
    coord_ref_sys_code                                 varchar(254) not null,
    range_code                                         integer not null,
    coord_sys_code                                     varchar(254) not null,
    coord_axis_order                                   smallint not null,
    remarks                                            varchar(254),
    information_source                                 varchar(254),
    constraint pk_coordinatereferencesystemrange primary key ( coord_ref_sys_code, range_code, coord_sys_code, coord_axis_order )
);
```

`coord_ref_sys_code` : Code du système de coordonnées de référence définissant le contexte dans lequel s'applique la contrainte d'intervalle.

`range_code` : Code de la contrainte appliquée.

`coord_axis_code` : Code de l'axe concerné par la contrainte.

## Présentation des données

Les données de la base SSBD sont embryonnaires et n'ont pour premier but que de vérifier la cohérence du schéma par des exemples concrets. Les données propres à la base SSBD sont peu à peu implémentées en script SQL à partir des données du dépôt [USGS-Astrogeology](https://github.com/USGS-Astrogeology/GDAL_scripts/tree/master/OGC_IAU2000_WKT_v2) revues et complétées à partir des publications de référence des groupes de travail de l'UAI de 2000, 2009 et 2015 sur les coordonnées cartographiques et les paramètres de rotation des corps du système solaire.

## Statut des fichiers

1. `ssbd_schema.sql` contient le schéma de la base SSBD et les contraintes d'intégrité associées.

2. `ssbd_data.sql` contient les données de la base SSBD au sens strict. Ces données peuvent référencer des données EPSG via leur code d'identification mais ne contiennent aucune autre donnée exogène en tant que telle.

3. `drop.sql` est un fichier utilitaire contenant des instructions de suppression du schéma SSBD. Son utilisation nécessite de prendre au préalable le soin de vérifier qu'il ne représente pas un risque de corruption de la base de données à laquelle il est appliqué.

4. `planetary_name.sql` est une implémentation SQL de la nomenclature officielle des noms de planètes et de satellites de l'Union Astronomique Internationale. Ce script optionnel et indicatif ne fait pas partie au sens strict de la base SSBD, mais il est susceptible d'y être intégré au fil de son évolution.

## Utilisation

Les manipulations suivantes supposent la création préalable d'une base de données PostgreSQL destinée à recevoir le schéma et les données SSBD.

### Données SSBD

1. Exécuter le script de création du schéma SSBD, par exemple en étant connecté via un client `psql`:

    ```
    \i ssbd_schema.sql
    ```
2. Exécuter le script de remplissage du schéma SSBD, par exemple en étant connecté via un client `psql`:
    
    ```
    \i ssbd_data.sql
    ```

### Nomenclature officielle de l'UAI des noms de planètes et satellites

Si l'on souhaite disposer de la relation des noms des corps tels que définis par la [nomenclature officielle de l'Union Astronomique Internationale](https://planetarynames.wr.usgs.gov/Page/Planets), exécuter le script de création et de remplissage de la relation implémentée pour représenter cette information, par exemple en étant connecté via un client `psql`:

```
\i planetary_name.sql
```

### Suppression des données de la base SSBD

Pour supprimer les données de la base SSBD, exécuter le script de suppression des relations contenant les données SSBD, par exemple en étant connecté via un client `psql`:

```
\i drop.sql
```
**Attention : ce script inclut la suppression des données ET du schéma de la base SSBD.**

**Attention : ce script n'inclut pas la suppression de la relation optionnelle de la nomenclature de l'UAI des noms de planètes et satellites.**

### Base EPSG

Au moins à titre temporaire, la base SSBD référence par leur code les unités et les noms d'axes définis par la base EPSG de manière à réutiliser au mieux les concepts définis dans le cadre de l'information géographique ne nécessitant pas de modification structurelle.

Le choix n'est pas encore arrêté pour l'instant de continuer à référencer par la suite les données EPSG et il n'est pas dit qu'il ne soit pas à terme avantageux de définir des noms d'axes et des unités propres à la base SSBD ou de s'appuyer sur d'autres références.

## Proposition de système d'identification et identification des entités et des concepts dans la base SSBD

### Grammaire du schéma général d'identification

```
<identifier> := <authority>:<entity_code>

<authority> := <alphanumeric>+
```
### Grammaire du schéma d'identification des entités de la base SSBD

```

<entity_code> := <phenomenon_code> | <ellipsoid_code> | <prime_meridian_system_code>
 | <prime_meridian_code> | <datum_code> | <coordinate_system_code>
 | <coordinate_system_axis_code> | <coordinate_reference_system_code>

<phenomenon_code> := PHENOMENON:<phenomenon_suffix>

<phenomenon_suffix> := <system_code><hyphen><alphanumeric>+(<hyphen><alphanumeric>+)*

<system_code> := (<alphenumeric> | <underscore>)+

<ellipsoid_code> := ELLIPSOID:<local_id>

<prime_meridian_system_code> := PMS:<phenomenon_suffix>:<prime_meridian_system_suffix>

<prime_meridian_system_suffix> := <string_character>+

<prime_meridian_code> := PM:<phenomenon_suffix>:<prime_meridian_system_suffix>:<prime_meridian_suffix>

<prime_meridian_suffix> := <string_character>+

<datum_code> := DATUM:<phenomenon_suffix>:<local_datum_id>

<local_datum_id> := <local_id>

<coordinate_system_code> := CS:<local_id>

# la partie <local_id> d'un code d'axe de système de coordonnées doit correspondre au <local_id> du système de coordonnées
# la partie <numeric> d'un code d'axe de système de coordonnées doit correspondre à l'index de cet axe dans le système
<coordinate_system_axis_code> := CSA:<local_id>:<numeric>

<coordinate_reference_system_code> := CRS:<local_id>

<local_id> := <string_character>+(<colon><string_character>+)*

<string_character> := <alphanumeric> | <hyphen> | <underscore>

```

### Exemples

 #### Codes de corps et autres phénomènes

Les codes des planètes et de leurs satellites naturels sont construits à partir du répertoire NAIF, mais en séparant par des traits d'union les phénomènes associés par un lien remarquable.

Par exemple, l'interaction gravitationnelle de Mars et de ses satellites est représentée comme un lien entre le barycentre du système martien et chacun de ses corps. En affectant le numéro 4 au barycentre du système martien à l'intérieur du système solaire et les numéros 99, 1 et 2 respectivement à Mars, Phobos et Deimos à l'intérieur du système martien, les codes de ces phénomènes sont les suivants :

| phénomène | code | rappel du code NAIF |
| :--------------- | :----- | :--------------------------- |
| Barycentre du système martien | 4 | 4 |
| Mars | 4-99 | 4 x 100 + 99 = 499 |
| Phobos | 4-1 | 4 x 100 + 1 = 401 |
| Deimos | 4-2 | 4 x 100 + 2 = 402 |

Tout en réutilisant les composant numériques des codes NAIF pour faciliter la mise en correspondance, cette convention permet de ne pas limiter a priori le nombre de phénomènes affectés à un système gravitationnel. Ainsi, le code NAIF 299 (Vénus) devient 2-99 pour la base SSBD.

Le 0 est l'identifiant réservé au barycentre du système constitué par l'ensemble des masses. Dans le cas du système solaire il s'agit du barycentre du système solaire. il est omis de la construction des identifiants des autres phénomènes. Par exemples :

- le code de la Terre est 3-99 (et non 0-3-99)
- le code du barycentre du système martien est 4 (et non 0-4)

À la différence de son code NAIF, le code du soleil est 99 (c'est à dire implicitement 0-99) et non pas 10.

Les codes des autes corps sont empruntés au répertoire NAIF.

Enfin, le code d'un phénomène étant relatif au système racine considéré, il doit être préfixé par le code de ce système en prévision d'étendre l'utilisation de cette convention d'identifiants à d'autres systèmes. Dans le cas du système solaire, ce préfixe est `sun`. Le préfixe du système racine est séparé du restant du code par un trait d'union. On obtient donc, par exemple :

| phénomène | code |
| :--------------- | :----- |
| Barycentre du système solaire | sun-0 |
| Soleil | sun-99 |
| Mecure | sun-1-99 |
| Vénus | sun-2-99 |
| Barycentre du système martien | sun-4 |
| Mars | sun-4-99 |
| Phobos | sun-4-1 |
| Deimos | sun-4-2 | 

| phénomène | code | identifiant sans autorité |
| :--- | :-- | :----------------------- |
| Barycentre du système solaire | sun-0 | PHENOMENON:sun-0 |
| Soleil | sun-99 | PHENOMENON:sun-99 |
| Mecure | sun-1-99 | PHENOMENON:sun-1-99 |
| Vénus | sun-2-99 | PHENOMENON:sun-2-99 |
| Mars | sun-4-99 | PHENOMENON:sun-4-99 |
| Phobos | sun-4-1 | PHENOMENON:sun-4-1 |

#### Codes d'ellipsoïdes

| géométrie de référence | code | identifiant sans autorité |
| :--- | :-- | :----------------------- |
| Ellipsoide défini par l'UAI en 2000 pour Mercure | 2000:sun-1-99:default | ELLIPSOID:2000:sun-1-99:default |


#### Codes de systèmes de méridiens premiers

| système de méridiens premiers | code | identifiant sans autorité |
| :--- | :-- | :----------------------- |
| Croûte de Mercure | sun-1-99:crust | PMS:sun-1-99:crust |

#### Codes de méridiens premiers

| méridien premier | code | identifiant sans autorité |
| :--- | :-- | :----------------------- |
| Méridien Hun Kal de Mercure | sun-1-99:crust:hun_kal | PM:sun-1-99:crust:hun_kal |

#### Codes de datums

| datum | code | identifiant sans autorité |
| :--- | :-- | :----------------------- |
| Datum implicitement défini sur Mercure par l'UAI en 2000 | sun-1-99:2000 | DATUM:sun-1-99:2000 |

#### Codes de systèmes de coordonnées

| système de coordonnées | code | identifiant sans autorité |
| :--- | :-- | :----------------------- |
| Système de coordonnées sphériques 3D direct | spherical:3d:direct | CS:spherical:3d:direct |
| Système de coordonnées ellipsoïdal 3D direct | ellipsoidal:3d:direct | CS:ellipsoidal:3d:direct |

#### Codes d'axes de systèmes de coordonnées

| axe de système de coordonnées | code | identifiant sans autorité |
| :--- | :-- | :----------------------- |
| Axe nord du système de coordonnées sphériques 3D direct | spherical:3d:direct:1 | CSA:spherical:3d:direct:1 |
| Axe de l'ouest sidéral du système de coordonnées ellipsoïdal 3D direct | ellipsoidal:3d:direct:2 | CSA:ellipsoidal:3d:direct:2 |

#### Codes de systèmes de coordonnées de référence

| système de coordonnées de coordonnées de référence | code | identifiant sans autorité |
| :--- | :-- | :----------------------- |
| CRS planétocentrique défini sur Mercure en 2000 par l'UAI | 2000:sun-1-99:planetocentric | CRS:2000:sun-1-99:planetocentric |
| CRS planétographique défini sur Mercure en 2000 par l'UAI | 2000:sun-1-99:planetographic | CRS:2000:sun-1-99:planetographic |

## Propositions d'évolutions syntaxiques

### WKT (version Simple Features)

Se reporter au document de référence pour la notation et les éléments non définis dans la modification.

```
<prime meridian> = PRIMEM["<name>",<relative longitude>{,<relative longitude orientation>}{,<prime meridian system>}
{,<reference meridian longitude>{,<prime meridian longitude>}{,<longitude orientation>}}]

# must be assumed to be equal to 0.0 if not present
<relative longitude> = <longitude>

# must be present if and only if relative longitude is not equal to 0.0 ;
# must not otherwise
<relative longitude orientation> = "direct" | "indirect" | "prograde" | "retrograde"

# must be assumed to be equal to 0.0 if not present
<reference meridian longitude> = <number>

# must be assumed to be equal to 0.0 if not present
<prime meridian longitude> = <number>

# can be present if and only if one of reference meridian longitude or prime meridian longitude is not equal to 0.0 ;
# assumed to be equal to "direct" if not present in these cases
# must not otherwise
<longitude orientation> = "direct" | "indirect" | "prograde" | "retrograde"

<prime meridian system> = PRIMEMS["<name>"{,<phenomenon>}{,<rotation>}]

# must be expressed in rad/s, negative for an indirect rotation and positive otherwise
<rotation> = <number>

<phenomenon> = PHENOMENON["<name>"]

<spheroid> = SPHEROID | ELLIPSOID ["<name>",<semi major axis>{,<second parameter>
{,<third parameter>{,<fourth parameter>}}}]

# inverse flattening if and only if there is no along orbit equatorial radius and no south pole radius ;
# polar radius if there is along orbit equatorial radius and no south pole radius ;
# north pole radius if there is a south pole radius
# can be omitted in the case of a sphere
<second parameter> = <number>

# must be present if and only if along orbit equatorial radius is not equal to semi major axis
# OR if south pole radius is not equal to north pole radius
<third parameter> = <number>

# must be present if and only if the south pole radius is not equal to north pole radius
<fourth parameter> = <number>
```

#### Exemples

```
PRIMEM["Hun Kal Mercury Meridian",0.0,"prograde",
PRIMEMS["Mercury crust system",
PHENOMENON["Mercury"],0.004264857],20.0,20.0,"prograde"]

ELLIPSOID["Mercury 2000 IAU",2439700.0]

ELLIPSOID["Triaxial Ganymede 2000 IAU",2632400.0,2632350.0,2632290.0]

ELLIPSOID["Ellipsoidal Mars 2009 IAU",3396190.0,169.8944472236118]

ELLIPSOID["Quadriaxial Mars 2000 IAU",3396190.0,3373190.0,3396190.0,3379210.0]


# planetocentric CRS are ambiguously represented as GEOGCS

GEOGCS["Mercury 2000 planetocentric 3D",
DATUM["Mercury 2000",
ELLIPSOID["Mercury 2000 IAU",2439700.0]],
PRIMEM["Hun Kal Mercury Meridian",0.0,"prograde",
PRIMEMS["Mercury crust system",
PHENOMENON["Mercury"],0.004264857],20.0,20.0,"prograde"],
UNIT["degree (supplier to define representation)",0.017453292519943278],
UNIT["metre",1.0]]


GEOGCS["Mercury 2000 planetographic 3D",
DATUM["Mercury 2000",
ELLIPSOID["Mercury 2000 IAU",2439700.0]],
PRIMEM["Hun Kal Mercury Meridian",0.0,"prograde",
PRIMEMS["Mercury crust system",
PHENOMENON["Mercury"],0.004264857],20.0,20.0,"prograde"],
UNIT["degree (supplier to define representation)",0.017453292519943278],
UNIT["metre",1.0]]
```

### WKT (version Coordinate Transformation Services)

#### Modification de la grammaire

Se reporter au document de référence pour la notation et les éléments non définis dans la modification.

```
<prime meridian> = PRIMEM["<name>",<relative longitude>{,<relative longitude orientation>}{,<prime meridian system>}
{,<reference meridian longitude>{,<prime meridian longitude>}{,<longitude orientation>}}{,<authority>}]

# must be assumed to be equal to 0.0 if not present
<relative longitude> = <longitude>

# must be present if and only if relative longitude is not equal to 0.0 ;
# must not otherwise
<relative longitude orientation> = "direct" | "indirect" | "prograde" | "retrograde"

# must be assumed to be equal to 0.0 if not present
<reference meridian longitude> = <number>

# must be assumed to be equal to 0.0 if not present
<prime meridian longitude> = <number>

# can be present if and only if one of reference meridian longitude or prime meridian longitude is not equal to 0.0 ;
# assumed to be equal to "direct" if not present in these cases
# must not otherwise
<longitude orientation> = "direct" | "indirect" | "prograde" | "retrograde"

<prime meridian system> = PRIMEMS["<name>"{,<phenomenon>}{,<rotation>}{,<authority>}]

# must be expressed in rad/s, negative for an indirect rotation and positive otherwise
<rotation> = <number>

<phenomenon> = PHENOMENON["<name>"{,<authority>}]

<spheroid> = SPHEROID | ELLIPSOID ["<name>",<semi major axis>{,<second parameter>
{,<third parameter>{,<fourth parameter>}}}{,<authority>}]

# inverse flattening if and only if there is no along orbit equatorial radius and no south pole radius ;
# polar radius if there is along orbit equatorial radius and no south pole radius ;
# north pole radius if there is a south pole radius
# can be omitted in the case of a sphere
<second parameter> = <number>

# must be present if and only if along orbit equatorial radius is not equal to semi major axis
# OR if south pole radius is not equal to north pole radius
<third parameter> = <number>

# must be present if and only if the south pole radius is not equal to north pole radius
<fourth parameter> = <number>

<geographic cs> = GEOGCS["<name>",<datum>,<prime meridian>,<geographic cs axes>{,<authority>}]

<geographic cs axes> = <geographic 2d axes> | <geographic 3d axes>

<geographic 2d axes> = <angular unit>{,<twin axes>}

<geographic 3d axes> = <angular unit>,<linear unit>{,<twin axes>,<axis>}

# sideral east points the direction where the sky rises
# sideral west points the direction where the sky sets
<axis> = AXIS["<name>", NORTH | SOUTH | EAST | WEST | UP | DOWN | OTHER | SIDERAL_EAST | SIDERAL_WEST]
```

#### Exemples

```
PRIMEM["Hun Kal Mercury Meridian",0.0,"prograde",
PRIMEMS["Mercury crust system",
PHENOMENON["Mercury",AUTHORITY["SSBD","sun-1-99"]],0.004264857,
AUTHORITY["SSBD","sun-1-99:crust"]],20.0,20.0,"prograde",
AUTHORITY["SSBD","sun-1-99:crust:hun_kal"]]

ELLIPSOID["Mercury 2000 IAU",2439700.0,
AUTHORITY["SSBD","2000:sun-1-99:default"]]

ELLIPSOID["Triaxial Ganymede 2000 IAU",2632400.0,2632350.0,2632290.0,
AUTHORITY["SSBD","2000:sun-5-3:triaxial"]]

ELLIPSOID["Ellipsoidal Mars 2009 IAU",3396190.0,169.8944472236118,
AUTHORITY["SSBD","2009:sun-4-99:ellipsoidal"]]

ELLIPSOID["Quadriaxial Mars 2000 IAU",3396190.0,3373190.0,3396190.0,3379210.0,
AUTHORITY["SSBD","2000:sun-4-99:default"]]


# planetocentric CRS are ambiguously represented as GEOGCS

GEOGCS["Mercury 2000 planetocentric 3D",
DATUM["Mercury 2000",
ELLIPSOID["Mercury 2000 IAU",2439700.0,AUTHORITY["SSBD","2000:sun-1-99:default"]],
AUTHORITY["SSBD","sun-1-99:2000"]],
PRIMEM["Hun Kal Mercury Meridian",0.0,"prograde",
PRIMEMS["Mercury crust system",
PHENOMENON["Mercury",AUTHORITY["SSBD","sun-1-99"]],0.004264857,
AUTHORITY["SSBD","sun-1-99:crust"]],20.0,20.0,"prograde",
AUTHORITY["SSBD","sun-1-99:crust:hun_kal"]],
UNIT["degree (supplier to define representation)",0.017453292519943278,AUTHORITY["EPSG","9122"]],
UNIT["metre",1.0,AUTHORITY["EPSG","9001"]],
AXIS["Spherical latitude",NORTH],
AXIS["Spherical longitude",SIDERAL_WEST],
AXIS["Geocentric radius",UP],
AUTHORITY["SSBD","2000:sun-1-99:planetocentric"]]


GEOGCS["Mercury 2000 planetographic 3D",
DATUM["Mercury 2000",
ELLIPSOID["Mercury 2000 IAU",2439700.0,AUTHORITY["SSBD","2000:sun-1-99:default"]],
AUTHORITY["SSBD","sun-1-99:2000"]],
PRIMEM["Hun Kal Mercury Meridian",0.0,"prograde",
PRIMEMS["Mercury crust system",
PHENOMENON["Mercury",AUTHORITY["SSBD","sun-1-99"]],0.004264857,
AUTHORITY["SSBD","sun-1-99:crust"]],20.0,20.0,"prograde",
AUTHORITY["SSBD","sun-1-99:crust:hun_kal"]],
UNIT["degree (supplier to define representation)",0.017453292519943278,AUTHORITY["EPSG","9122"]],
UNIT["metre",1.0,AUTHORITY["EPSG","9001"]],
AXIS["Geodetic latitude",NORTH],
AXIS["Geodetic longitude",SIDERAL_WEST],
AXIS["Ellipsoidal height",UP],
AUTHORITY["SSBD","2000:sun-1-99:planetographic"]]
```



### WKT2 (version 1.0)

#### Modification de la grammaire

Se reporter au document de référence pour la notation et les éléments non définis dans la modification.

```
<prime meridian> ::= <prime meridian keyword><left delimiter><prime meridian name><wkt separator>
<irm longitude>[<wkt separator><relative longitude orientation>][<wkt separator><prime meridian system>]
[<wkt separator><reference meridian longitude>[<wkt separator><prime meridian longitude>]
[<wkt separator><longitude orientation>]][<wkt separator><angle unit>]
[{<wkt separator><identifier>}]...<right delimiter>

# must be present if and only if relative longitude is not equal to 0.0 ;
# must not otherwise
<relative longitude orientation> ::= "direct" | "indirect" | "prograde" | "retrograde"

# must be assumed to be equal to 0.0 if not present
<reference meridian longitude> ::= <signed numeric literal>

# must be assumed to be equal to 0.0 if not present
<prime meridian longitude> ::= <signed numeric literal>

# can be present if and only if one of reference meridian longitude or prime meridian longitude is not equal to 0.0 ;
# assumed to be equal to "direct" if not present in these cases
# must not otherwise
<longitude orientation> ::= "direct" | "indirect" | "prograde" | "retrograde"

<prime meridian system> ::= <prime meridian keyword><left delimiter><prime meridian system name>
[<wkt separator><phenomenon>][<wkt separator><rotation>][{<wkt separator><identifier>}]...<right delimiter>

<prime meridian keyword> ::= PRIMEMS

<prime meridian system name> ::= <quoted Latin text>

# must be expressed in rad/s, negative for an indirect rotation and positive otherwise
<rotation> ::= <signed numeric literal>

<phenomenon> ::= <phenomenon keyword><left delimiter><phenomenon name>[{<wkt separator><identifier>}]...<right delimiter>

<phenomenon keyword> ::= PHENOMENON

<phenomenon name> ::= <quoted Latin text>

<ellipsoid> ::= <ellipsoid keyword><left delimiter><ellipsoid name><wkt separator><semi-major axis>
[<wkt separator><second parameter>[<wkt separator><third parameter>[<wkt separator><fourth parameter>]]]]
[{<wkt separator><identifier>}]...<right delimiter>

# inverse flattening if and only if there is no along orbit equatorial radius and no south pole radius ;
# polar radius if there is along orbit equatorial radius and no south pole radius ;
# north pole radius if there is a south pole radius
# can be omitted in the case of a sphere
<second parameter> ::= <signed numeric literal>

# must be present if and only if along orbit equatorial radius is not equal to semi major axis
# OR if south pole radius is not equal to north pole radius
<third parameter> ::= <signed numeric literal>

# must be present if and only if the south pole radius is not equal to north pole radius
<fourth parameter> ::= <signed numeric literal>

<axis> ::= <axis keyword><left delimiter><axis nameAbbrev><wkt separator><axis direction pl>
[<wkt separator><axis order>][<wkt separator><axis unit>][{<wkt separator><identifier>}]...<right delimiter>

# sideral east points the direction where the sky rises
# sideral west points the direction where the sky sets
<axis direction pl> ::= <axis direction> | sideralWest | sideralEast
```

#### Exemples

```
PRIMEM["Hun Kal Mercury Meridian",0.0,"prograde",
PRIMEMS["Mercury crust system",
PHENOMENON["Mercury",ID["SSBD","sun-1-99"]],0.004264857,ID["SSBD","sun-1-99:crust"]],
20.0,20.0,"prograde",UNIT["degree",0.017453292519943278,ID["EPSG","9102"]],ID["SSBD","sun-1-99:crust:hun_kal"]]

ELLIPSOID["Mercury 2000 IAU",2439700.0,
ID["SSBD","2000:sun-1-99:default"]]

ELLIPSOID["Triaxial Ganymede 2000 IAU",2632400.0,2632350.0,2632290.0,
ID["SSBD","2000:sun-5-3:triaxial"]]

ELLIPSOID["Ellipsoidal Mars 2009 IAU",3396190.0,169.8944472236118,
ID["SSBD","2009:sun-4-99:ellipsoidal"]]

ELLIPSOID["Quadriaxial Mars 2000 IAU",3396190.0,3373190.0,3396190.0,3379210.0,
ID["SSBD","2000:sun-4-99:default"]]

DATUM["Mercury 2000",ELLIPSOID["Mercury 2000 IAU",2439700.0,
ID["SSBD","2000:sun-1-99:default"]],
ID["SSBD","sun-1-99:2000"]],
PRIMEM["Hun Kal Mercury Meridian",0.0,"prograde",
PRIMEMS["Mercury crust system",
PHENOMENON["Mercury",ID["SSBD","sun-1-99"]],0.004264857,ID["SSBD","sun-1-99:crust"]],
20.0,20.0,"prograde",UNIT["degree",0.017453292519943278,ID["EPSG","9102"]],ID["SSBD","sun-1-99:crust:hun_kal"]]


GEODCRS["Mercury 2000 planetocentric 3D",
DATUM["Mercury 2000",
ELLIPSOID["Mercury 2000 IAU",2439700.0,ID["SSBD","2000:sun-1-99:default"]],
ID["SSBD","sun-1-99:2000"]],
PRIMEM["Hun Kal Mercury Meridian",0.0,"prograde",
PRIMEMS["Mercury crust system",
PHENOMENON["Mercury",ID["SSBD","sun-1-99"]],0.004264857,ID["SSBD","sun-1-99:crust"]],
20.0,20.0,"prograde",UNIT["degree",0.017453292519943278,ID["EPSG","9102"]],ID["SSBD","sun-1-99:crust:hun_kal"]],
CS[spherical,3,ID["SSBD","spherical:3d:direct"]],
AXIS["Spherical latitude (Lat)",north,ORDER[1],UNIT["degree (supplier to define representation)",0.017453292519943278,ID["EPSG","9122"]],ID["SSBD","spherical:3d:direct:1"]],
AXIS["Spherical longitude (Long)",sideralWest,ORDER[2],UNIT["degree (supplier to define representation)",0.017453292519943278,ID["EPSG","9122"]],ID["SSBD","spherical:3d:direct:2"]],
AXIS["Geocentric radius (R)",up,ORDER[3],UNIT["metre",1.0,ID["EPSG","9001"]],ID["SSBD","spherical:3d:direct:3"]],
ID["SSBD","2000:sun-1-99:planetocentric"]]


GEODCRS["Mercury 2000 planetographic 3D",
DATUM["Mercury 2000",
ELLIPSOID["Mercury 2000 IAU",2439700.0,ID["SSBD","2000:sun-1-99:default"]],
ID["SSBD","sun-1-99:2000"]],
PRIMEM["Hun Kal Mercury Meridian",0.0,"prograde",
PRIMEMS["Mercury crust system",PHENOMENON["Mercury",ID["SSBD","sun-1-99"]],0.004264857,ID["SSBD","sun-1-99:crust"]],
20.0,20.0,"prograde",UNIT["degree",0.017453292519943278,ID["EPSG","9102"]],ID["SSBD","sun-1-99:crust:hun_kal"]],
CS[ellipsoidal,3,ID["SSBD","ellipsoidal:3d:direct"]],
AXIS["Geodetic latitude (Lat)",north,ORDER[1],UNIT["degree (supplier to define representation)",0.017453292519943278,ID["EPSG","9122"]],ID["SSBD","ellipsoidal:3d:direct:1"]],
AXIS["Geodetic longitude (Lon)",sideralWest,ORDER[2],UNIT["degree (supplier to define representation)",0.017453292519943278,ID["EPSG","9122"]],ID["SSBD","ellipsoidal:3d:direct:2"]],
AXIS["Ellipsoidal height (h)",up,ORDER[3],UNIT["metre",1.0,ID["EPSG","9001"]],ID["SSBD","ellipsoidal:3d:direct:3"]],
ID["SSBD","2000:sun-1-99:planetographic"]]

```
