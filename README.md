# _Solar System Body Database_ - français

SSBD est un projet de base de données expérimental en cours d'élaboration qui se donne pour objectif d'utiliser à des fins de référencement en planétologie l'expérience capitalisée dans le domaine du référencement géographique. Cette expérience est principalement constituée par les standards abstraits, les formats et les réalisations techniques des organismes du domaine (OGC, ISO, IOGP, Esri etc.) tenant lieu de standard de fait.

Dans un premier temps SSBD s'appuie sur le schéma de la base de données EPSG comme source d'inspiration de manière à proposer une extension adaptée à l'information planétologique. Ceci a deux conséquences :

1. le référencement direct de certaines données de la base EPSG par leur code (voir [la section concernant les données EPSG référencées](#base-epsg));

2. la paternité conceptuelle du schéma de la base EPSG sur celui de la base SSBD en cours d'élaboration.

## Présentation du schéma

Commentaires sur les relations et les champs remarquables.

### Body - planètes et satellites du système solaire

```sql
create table ssbd_body (
    body_code                                          integer,
    body_name                                          varchar(80) not null,
    rotation                                           varchar(24) not null,
    remarks                                            varchar(254),
    information_source                                 varchar(254),
    constraint pk_body primary key ( body_code )
);
```

`body_code`: Un code d'identification des planètes et satellites s'alignant sur la proposition de [https://github.com/USGS-Astrogeology](https://github.com/USGS-Astrogeology/GDAL_scripts/tree/master/OGC_IAU2000_WKT_v2/Source_Python) d'utiliser les [codes NAIF](https://naif.jpl.nasa.gov/pub/naif/toolkit_docs/FORTRAN/req/naif_ids.html). Ce choix est susceptible d'évolution, éventuellement vers des identifiants plus académiques (nomenclature UAI) ou sémantiquement plus riches et/ou plus extensibles (URN).

`rotation`: Sens de rotation du corps référencé dans l'ICRF (_International Celestial Reference Frame_).

### Ellipsoid - forme des planètes et satellites

```sql
create table ssbd_ellipsoid (
    body_code                                          integer,
    ellipsoid_code                                     integer not null,
    ellipsoid_name                                     varchar(80) not null,
    semi_major_axis                                    double precision not null,
    uom_code                                           integer not null,
    inv_flattening                                     double precision,
    semi_minor_axis                                    double precision,
    semi_axis_b                                        double precision,
    semi_axis_s                                        double precision,
    remarks                                            varchar(254),
    information_source                                 varchar(254),
    constraint pk_ellipsoid primary key ( ellipsoid_code )
);
```

`body_code`: Référence optionnelle et indicative au corps particulier pour lequel l'ellipsoïde a été originellement défini. Cette référence n'implique pas que le datum référençant l'ellipsoïde concerne le même corps indiqué par ce dernier. On autorise ainsi qu'un ellipsoïde initialement défini pour un corps déterminé puisse être utilisé pour représenter aussi la forme d'autres corps.

`ellipsoid_code`: Un code d'identification des ellipsoïdes de la base SSBD. Ces identifiants sont temporaires et susceptibles d'être remplacés par des formes d'identifants sémantiques et/ou extensibles.

`semi_major_axis`: Rayon équatorial subplanétaire. Rayon de la sphère dans le cas d'un ellipsoïde sphérique ; demi-grand axe dans le cas d'un ellipsoïde biaxial ; rayon équatorial subplanétaire dans le cas d'un ellipsoïde triaxial ou quadriaxial.

`uom_code`: Code EPSG de l'unité utilisée pour la mesure des longueurs des rayons de l'ellipsoïde.

`inv_flattening`: Applatissement. Uniquement utilisé pour les ellipsoïdes biaxiaux dont le second axe caractéristique (rayon polaire) est défini par l'applatissement de l'ellipsoïde et non directement par la valeur de sa longueur (voir `semi_minor_axis`). `Null` dans le cas d'une sphère, d'un ellipsoïde triaxial ou quadriaxial et dans le cas d'un ellipsoïde biaxial dont le second axe est défini par sa longueur.

`semi_minor_axis`: Rayon polaire nord. `Null` dans le cas d'une sphère qui l'identifie par hypothèse au rayon, ainsi que dans le cas d'un ellipsoïde biaxial dont le second axe est défini par l'applatissement de l'ellipsoïde. Demi-petit axe dans le cas d'un ellipsoïde biaxial défini par la longueur de son second axe caractéristique. Rayon polaire dans le cas d'un ellipsoïde triaxial. Rayon polaire nord dans le cas d'un ellipsoïde quadriaxial.

`semi_axis_b`: Rayon équatorial orbital. `Null` dans le cas d'une sphère qui l'identifie par hypothèse au rayon, ainsi que dans le cas d'un ellipsoïde biaxial qui l'identifie par hypothèse au rayon équatorial subplanétaire. Rayon équatorial orbial dans le cas des ellipsoïdes triaxiaux et quadriaxiaux.

`semi_axis_s`: Rayon polaire sud. `Null` dans le cas d'une sphère qui l'identifie par hypothèse au rayon, ainsi que dans le cas des ellipsoïdes biaxiaux et triaxiaux qui l'identifient par hypothèse au rayon polaire nord. Non `null` uniquement dans le cas des ellipsoïdes quadriaxiaux.

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

En revanche, il n'existe pas de surface solide observable sur les planètes gazeuses. Les repères servant à définir les méridiens de référence sont donc observés en utilisant d'autres phénomènes physiques (couverture nuageuse, champ magnétique). Pour une même planète, plusieurs catégories de phénomènes sont susceptibles des moyens concurrents de définir des méridiens de référence. Ce sont ces catégories qui définissent les systèmes de méridiens premiers.

```sql
create table ssbd_primemeridiansystem (
    prime_meridian_system_code                         integer not null,
    prime_meridian_system_name                         varchar(80) not null,
    body_code                                          integer not null,
    remarks                                            varchar(254),
    information_source                                 varchar(254),
    -- data_source                                        varchar(40) not null,
    -- revision_date                                      date not null,
    -- change_id                                          varchar(255),
    -- deprecated                                         smallint not null,
    constraint pk_primemeridiansystem primary key ( prime_meridian_system_code )
);
```

`prime_meridian_system_code`: Un code d'identification des systèmes de méridiens premiers de la base SSBD. Ces identifiants sont temporaires et susceptibles d'être remplacés par des formes d'identifants sémantiques et/ou extensibles.

`body_code`: Le code d'identification du corps sur lequel est défini le système de méridien. Ce code est obligatoire et définit par extension le corps sur lequel est défini un méridien premier et par voie de conséquence les datums et les systèmes de référence qui l'utilisent.

### Primemeridan - méridiens premiers, méridiens de référence, origines des longitudes



TODO

## Présentation des données

TODO

## Statut des fichiers

1. `ssbd_schema.sql` contient le schéma de la base SSBD et les contraintes d'intégrité associées, à l'exclusion des relations optionnelles issues de l'extrait de données EPSG et des contraintes d'intégrité les référençant depuis les données SSBD.

2. `ssbd_data.sql` contient les données de la base SSBD au sens strict. Ces données peuvent référencer des données EPSG via leur code d'identification mais ne contiennent aucune autre donnée exogène en tant que telle.

3. `epsg_extract.sql` contient l'extrait de schéma EPSG directement ou indirectement référencé par les données de la base SSBD, ainsi que les données EPSG contenues dans ce schéma, dans leur version 9.5.5. Ces données sont proposées à titre indicatif dans le dépôt logiciel. Elles ne font pas strictement partie de la base SSBD. Elles sont susceptibles d'être remplacées par d'autres références au cours de la maturation de la base SSBD.

4. `ssbd_epsg.sql` contient les contraintes d'intégrité sur les données SSBD référençant des données EPSG. Ces contraintes sont également proposées à titre indicatif dans le dépôt logiciel. Elles ne font pas strictement partie de la base SSBD.

5. `drop.sql` est un fichier utilitaire contenant des instructions de suppression du schéma SSBD et des relations EPSG qu'il est susceptible de référencer. Son utilisation nécessite de prendre au préalable le soin de vérifier qu'il ne représente pas un risque de corruption de la base de données à laquelle il est appliqué.

6. `planetary_name.sql` est une implémentation SQL de la nomenclature officielle des noms de planètes et de satellites de l'Union Astronomique Internationale. Ce script optionnel et indicatif ne fait pas partie au sens strict de la base SSBD, mais il est susceptible d'y être intégré au fil de son évolution.

## Utilisation

Les manipulations suivantes supposent la création préalable d'une base de données PostgreSQL destinée à recevoir le schéma et les données SSBD.

### Données SSBD (et extrait optionnel des données EPSG référencées)

1. Exécuter le script de création du schéma SSBD, par exemple en étant connecté via un client `psql`:

    ```
    \i ssbd_schema.sql
    ```
2. Exécuter le script de remplissage du schéma SSBD, par exemple en étant connecté via un client `psql`:
    
    ```
    \i ssbd_data.sql
    ```
3. (optionnel) Si l'on souhaite disposer des données EPSG référencées depuis les données SSBD, exécuter le script de création de l'extrait de schéma et de données de la base EPSG, par exemple en étant connecté via un client `psql`:

    ```
    \i epsg_extract.sql
    ```
4. (optionnel) Si l'on souhaite disposer des contraintes d'intégrité sur les références aux données EPSG depuis les données SSBD, exécuter le script de création des clefs étrangères sur les relations du schéma de SSBD vers les relations issues de la base EPSG, par exemple en étant connecté via un client `psql`:

    ```
    \i ssbd_epsg.sql
    ```

### Nomenclature officielle de l'UAI des noms de planètes et satellites

Si l'on souhaite disposer de la relation des noms des corps tels que définis par la [nomenclature officielle de l'Union Astronomique Internationale](https://planetarynames.wr.usgs.gov/Page/Planets), exécuter le script de création et de remplissage de la relation implémentée pour représenter cette information, par exemple en étant connecté via un client `psql`:

```
\i planetary_name.sql
```

### Suppression des données de la base SSBD

Pour supprimer les données de la base SSBD, exécuter le script de suppression des relations contenant les données SSBD et les données EPSG éventuellement référencées, par exemple en étant connecté via un client `psql`:

```
\i drop.sql
```
**Attention : ce script inclut la suppression des données ET du schéma de la base SSBD.**

**Attention : ce script inclut la suppression des données ET du schéma des données optionnelles issues de la base EPSG référencées par les données SSBD.** Cela est susceptible de provoquer des pertes de données EPSG si le schéma et les données SSBD ont été importées à l'intérieur d'une base EPSG complète.

**Attention : ce script n'inclut pas la suppression de la relation optionnelle de la nomenclature de l'UAI des noms de planètes et satellites.**

### Base EPSG

Un script contenant les relations de la base EPSG référencées par la base SSBD est disponible sur ce dépôt logiciel. Ce script est issu d'une base de données réalisée à partir d'un export du [registre EPSG](http://www.epsg-registry.org/) v9.5.5 dans un dialecte SQL adapté aux bases *PostgreSQL*.

De tels exports du registre EPSG, quoique réalisés via le site officiel, ne constituent la référence officielle des données de la base EPSG. De plus, des ajustements syntaxiques, typographiques ou encore des commentaires ont pu être réalisés. Par voie de conséquence, l'extrait de ces données contenu dans le script proposé par le projet SSBD **ne constitue pas une distribution officielle des données EPSG**. Pour plus d'informations, se reporter au [site officiel de l'IOGP](http://www.epsg.org) et aux [conditions d'utilisation, de distribution et de modification de la base EPSG](http://www.epsg.org/TermsOfUse.aspx). Pour obtenir un jeu de données directement produit à partir du registre EPSG officiel, se reporter au [site du registre](http://www.epsg-registry.org/).

Enfin, les données provenant du registre EPSG sont proposées à simple titre indicatif. Elles **ne constituent pas la valeur ajoutée** de la base SSBD mais offrent à l'utilisateur qui souhaite utiliser conjointement la base SSBD à la base EPSG, un jeu de données EPSG minimal potientiellement référencé par des données SSBD, ainsi que les contraintes d'intégrité associées.


