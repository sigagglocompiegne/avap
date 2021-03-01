![picto](https://github.com/sigagglocompiegne/orga_gest_igeo/blob/master/doc/img/geocompiegnois_2020_reduit_v2.png)

EN COURS DE REDACTION

# Documentation d'administration de la base de données l'AVAP de Compiègne #

## Principes
 
 **Généralités** :
 
La ville de Compiègne et l'Agglomération de la Région de Compiègne sont gestionnaires de la servitude d'utilité publique AC4 (AVAP). Ils doivent donc produire les données au format CNIG pour publication sur le GéoPortail de l'Urbanisme. Le format CNIG consiste à produire uniquement la périmètre de la servitude. Il a donc été nécessaire de compléter ce niveau d'échelle par des informations infra-périmètres pour répondre aux exigences de spécifications de protection.

 **Résumé fonctionnel** :
 
La donnée a été construite de façon à répondre aux exigences réglementaires de publication sur le GéoPortail de l'urbanisme.

Les autres informations complémentaires répondant elles, à des exigences d'urbanisme réglementaire à l'échelle desz bâtiments, plusieurs niveaux d'échelles ont été constitués :
 * Périmètre AVAP = générateur et assieytte de la servitude
 * Secteur AVAP (chaque secteur ayant une règlementation spécifique)
 * Protection des bâtiments (chaque bâtiment dispose d'une classification de protection)
 * Petit patrimoine
 * Aire de vue
 * Fortification
 * Zone urbaine remarquable
 * Alignement d'arbre
 * Cloture
 * Espace paysager
 * Point de vue

## Modèle relationnel simplifié

Sans objet

## Schéma fonctionnel

Sans objet

## Dépendances

Sans objet

## Séquences 

Il existe une seule séquence sur la table gérant les médias (photographies) des bâtiments. Seule cette classe d'objets est susceptibles d'être modifiée ou mises à jour par le service métier. Les autres informations étant produites par un bureau d'étude extérieur, les données sont chargées à réception avec une clé automatique générées par l'outil d'import.


## Classes d'objets

L'ensemble des classes d'objets de gestion sont stockés dans le schéma `m_urbanisme_reg` et celles applicatives dans le schéma 
`x_apps`.

 ### classes d'objets de gestion :

`geo_sup_ac4_assiette_sup_s` : table permettant de gérer les documents joints aux bâtiments
   
|Nom attribut | Définition | Type | Valeurs par défaut |
|:---|:---|:---|:---|
|idass|Identifiant de l'assiette de la SUP|character varying(200)| |
|idgen|Identifiant du gestionnaire de la SUP|character varying(200)| |
|nomass|Nom abrégé de l'assiette, respectant les règles de nommage nationales des SUP|character varying(200)| |
|typeass|Nature de l'assiette selon sa vocation principale et la catégorie de SUP|character varying(200)| |
|modegeoass|Description de la méthode utilisée pour générer la géométrie de l'assiette|character varying(200)| |
|paramcalc|Valeur du paramètre ayant permis de calculer l'assiette lorsque celle-ci correspond à un objet tampon|character varying(200)| |
|srcgeoass|Type de carte, de référentiel géographique utilisé en tant que source de géoréférencement lors de la digitalisation de la géométrie|character varying(200)| |
|datesrcass|Date d'actualité du référentiel utilisé lors de la digitalisation de l'objet. Il s'agit d'indiquer le millésime des données référentielles source |character varying(200)| |
|geom|Géométrie de l'objet|geometry(MultiPolygon,2154)| |

---


`geo_sup_ac4_generateur_sup_s` : table permettant de gérer les documents joints aux bâtiments
   
|Nom attribut | Définition | Type | Valeurs par défaut |
|:---|:---|:---|:---|
|idgen|Identifiant du générateur de la SUP|character varying(200)| |
|idsup|Identifiant du gestionnaire de la SUP|character varying(200)| |
|nomgen|Nom abrégé du générateur, respectant les règles de nommage nationales des SUP|character varying(200)| |
|typegen|Nature de l'entité génératrice|character varying(200)| |
|modegenere|Description du moyen utilisé pour obtenir la géométrie du générateur|character varying(200)| |
|srcgeogen|Type de carte, de référentiel géographique utilisé en tant que source de géoréférencement lors de la digitalisation de la géométrie|character varying(200)| |
|datesrcgen|Date d'actualité du référentiel utilisé lors de la digitalisation de l'objet. Il s'agit d'indiquer le millésime des données référentielles source|character varying(200)| |
|refbdext|Nom du référentiel ou de la source de données externes qui contient la géométrie du générateur obtenue par duplication|character varying(200)| |
|idbdext|Identifiant référençant l'obet correspondant au générateur dans le référentiel ou la base de données externe|character varying(200)| |
|geom|Géométrie des objets|geometry(MultiPolygon,2154)| |


---

`geo_sup_ac4_avap_airedevue` : table permettant de gérer les documents joints aux bâtiments
   
|Nom attribut | Définition | Type | Valeurs par défaut |
|:---|:---|:---|:---|
|gid|Identifiant interne|text| |
|insee|Code insee de la commune|character varying(5)| |
|datappro|Date d'approbation de l'AVAP|character varying(8)| |
|nomreg|Nom du règlement (titre 2)|character varying(254)| |
|urlreg|URL du règlement (titre 2)|character varying(254)| |
|sup_ha|Surface en ha|double precision| |
|geom|Géométrie des objets|geometry(MultiPolygon,2154)| |

---

`geo_sup_ac4_avap_alignarbre` : table permettant de gérer les documents joints aux bâtiments
   
|Nom attribut | Définition | Type | Valeurs par défaut |
|:---|:---|:---|:---|
|gid|Identifiant interne|text| |
|insee|Code insee de la commune|character varying(5)| |
|essence|Libelle de l'essence de l'arbre|character varying(50)| |
|nomreg|Nom du règlement (titre 2)|character varying(254)| |
|urlreg|URL du règlement (titre 2)|character varying(254)| |
|long_m|Linéaire en mètre|integer| |
|geom|Géométrie de l'objet|geometry(MultiLineString,2154)| |

---

`geo_sup_ac4_avap_cloture` : table permettant de gérer les documents joints aux bâtiments
   
|Nom attribut | Définition | Type | Valeurs par défaut |
|:---|:---|:---|:---|
|gid|Identifiant interne|text| |
|insee|Code insee de la commune|character varying(5)| |
|type|Type de clôture (clé étrangère sur la liste de valeurs lt_avap_cloture)|character varying(2)| |
|nomreg|Nom du règlement (titre 2)|character varying(254)| |
|urlreg|URL du règlement (titre 2)|character varying(254)| |
|long_m|Linéaire en mètre|integer| |
|geom|Géométrie de l'objet|geometry(MultiLineString,2154)| |

---

`geo_sup_ac4_avap_espacepaysager` : table permettant de gérer les documents joints aux bâtiments
   
|Nom attribut | Définition | Type | Valeurs par défaut |
|:---|:---|:---|:---|
|gid|Identifiant interne|text| |
|insee|Code insee de la commune|character varying(5)| |
|libelle|Libellé de l'espace|character varying(50)| |
|datappro|Date d'approbation de l'AVAP|character varying(8)| |
|nomreg|Nom du règlement (titre 2)|character varying(254)| |
|urlreg|URL du règlement (titre 2)|character varying(254)| |
|sup_ha|Surface en hectare|double precision| |
|geom|Géométrie de l'objet|geometry(MultiPolygon,2154)| |
  
---
`geo_sup_ac4_avap_forti` : table permettant de gérer les documents joints aux bâtiments
   
|Nom attribut | Définition | Type | Valeurs par défaut |
|:---|:---|:---|:---|
|gid|Identifiant interne|text| |
|insee|Code insee de la commune|character varying(5)| |
|nomreg|Nom du règlement (titre 3)|character varying(254)| |
|urlreg|URL du règlement (titre 3)|character varying(254)| |
|geom|Géométrie de l'objet|geometry(MultiPolygon,2154)| |

---

`geo_sup_ac4_avap_peri` : table permettant de gérer les documents joints aux bâtiments
   
|Nom attribut | Définition | Type | Valeurs par défaut |
|:---|:---|:---|:---|
|gid|Identifiant unique à l'ARC|text| |
|insee|Code insee de la commune|character varying(5)| |
|datappro|Date d'approbation de l'AVAP|character varying(8)| |
|nomplan|Nom du fichier contenant le plan global|character varying(254)| |
|urlplan|URL du fichier contenant le plan global|character varying(254)| |
|nomreg1|Nom du règlement (titre 1)|character varying(254)| |
|urlreg1|URL du règlement (titre 1)|character varying(254)| |
|nomreg2|Nom du règlement (titre 2)|character varying(254)| |
|urlreg2|URL du règlement (titre 2)|character varying(254)| |
|nomreg3|Nom du règlement (titre 3)|character varying(254)| |
|urlreg3|URL du règlement (titre 3)|character varying(254)| |
|urlpe|Lien d'accès à l'archive zip comprenant l'ensemble des pièces|character varying(254)| |
|sup_ha|Surface en hectare|double precision| |
|geom|Géométrie des objets|geometry(MultiPolygon,2154)| |
  
---

`geo_sup_ac4_avap_protect` : table permettant de gérer les documents joints aux bâtiments
   
|Nom attribut | Définition | Type | Valeurs par défaut |
|:---|:---|:---|:---|
|gid|Identifiant unique|text| |
|insee|Code insee de la commune|character varying(5)| |
|datappro|Date d'approbation de l'AVAP|character varying(8)| |
|protec|Niveau de protection des bâtiments|character varying(2)| |
|demol|Information si le bâtiment a été démolit (attention info de la ZPPAUP, pas mise à jour par le prestataire de l'AVAP|boolean| |
|hauteur|Hauteur du bâtiment|character varying(15)| |
|src_geom|Référentiel de saisie utilisé|character varying(2)| |
|src_date|Source du Référentiel de saisie utilisé|integer| |
|nomplan|Nom du fichier contenant le plan global|character varying(254)| |
|urlplan|URL du fichier contenant le plan global|character varying(254)| |
|nomreg|Nom du règlement (titre 2)|character varying(254)| |
|urlreg|URL du règlement (titre 2)|character varying(254)| |
|geom|Géométrie des objets|geometry(MultiPolygon,2154)| |
|observ|Observations diverses concernant l'objet|character varying(2000)| |

---

`geo_sup_ac4_avap_ptdevue` : table permettant de gérer les documents joints aux bâtiments
   
|Nom attribut | Définition | Type | Valeurs par défaut |
|:---|:---|:---|:---|
|gid|Identifiant interne|text| |
|insee|Code insee de la commune|character varying(5)| |
|datappro|Date d'approbation de l'AVAP|character varying(8)| |
|nomreg|Nom du règlement (titre 2)|character varying(254)| |
|urlreg|URL du règlement (titre 2)|character varying(254)| |
|angle|Angle de rotation de l'objet|integer| |
|geom|Géométrie de l'objet|geometry(Point,2154)| |
  
---
`geo_sup_ac4_avap_ptpatrimoine` : table permettant de gérer les documents joints aux bâtiments
   
|Nom attribut | Définition | Type | Valeurs par défaut |
|:---|:---|:---|:---|
|gid|Identifiant interne|text| |
|insee|Code insee de la commune|character varying(5)| |
|type|Type de patrimoine (clé étrangère sur la liste de valeurs lt_avap_ptpatri)|character varying(2)| |
|libelle|Détail des patrimoines pour un type = 11 (multiples ou divers)|character varying(254)| |
|nomreg|Nom du règlement (titre 2)|character varying(254)| |
|urlreg|URL du règlement (titre 2)|character varying(254)| |
|geom|Géométrie des objets|geometry(Point,2154)| |
|observ|Observations diverses concernant l''objet|character varying(2000)| |

---
`geo_sup_ac4_avap_secteur` : table permettant de gérer les documents joints aux bâtiments
   
|Nom attribut | Définition | Type | Valeurs par défaut |
|:---|:---|:---|:---|
|gid|Identifiant unique|text| |
|insee|Code insee de la commune|character varying(5)| |
|datappro|Date d'approbation de l'AVAP|character varying(8)| |
|libelle|Libellé du secteur|character varying(3)| |
|nomplan|Nom du fichier contenant le plan global|character varying(254)| |
|urlplan|URL du fichier contenant le plan global|character varying(254)| |
|nomreg|Nom du règlement (titre 3)|character varying(254)| |
|urlreg|URL du règlement (titre 3)|character varying(254)| |
|sup_ha|Surface en hectare|double precision| |
|geom|Géométrie des objets|geometry(MultiPolygon,2154)| |

---

`geo_sup_ac4_avap_urbainpatri` : table permettant de gérer les documents joints aux bâtiments
   
|Nom attribut | Définition | Type | Valeurs par défaut |
|:---|:---|:---|:---|
|gid|Identifiant interne|text| |
|insee|Code insee de la commune|character varying(5)| |
|datappro|Date d'approbation de l'AVAP|character varying(8)| |
|nomreg|Nom du règlement (titre 2)|character varying(254)| |
|urlreg|URL du règlement (titre 2)|character varying(254)| |
|sup_ha|Surface en hectare|double precision| |
|geom|Géométrie des objets|geometry(MultiPolygon,2154)| |
  
---

`geo_sup_ac4_avap_vestige` : table permettant de gérer les documents joints aux bâtiments
   
|Nom attribut | Définition | Type | Valeurs par défaut |
|:---|:---|:---|:---|
|gid|Identifiant interne|text| |
|insee|Code insee de la commune|character varying(5)| |
|nomreg|Nom du règlement (titre 2)|character varying(254)| |
|urlreg|URL du règlement (titre 2)|character varying(254)| |
|long_m|Linéaire en mètre|integer| |
|geom|Géométrie des objets|geometry(MultiLineString,2154)| |
  
---

   `an_sup_ac4_geo_protect` : Table de correspondance entre l'iD de la parcelle et les ID des bâtiments protégés de l'AVAP. Lien avec la table PARCELLE(alpha) dans GEO pour insertion des infos de protection AVAP dans la fiche de renseignement d''urbanisme et accéder à la fiche détail de l'AVAP (cette fiche étant composée des éléments de cette table)
   
Particularité(s) à noter : cette table est issue d'un traitement FME qui contient la liste des parcelles (IDU)

---
 
`an_sup_ac4_avap_media` : table permettant de gérer les documents joints aux bâtiments
   
|Nom attribut | Définition | Type | Valeurs par défaut |
|:---|:---|:---|:---|
|gid|Identifiant unique|integer|nextval('m_urbanisme_reg.an_sup_ac4_avap_media_gid_seq'::regclass)|
|id|Identifiant de l'objet saisi|text| |
|media|Champ Média de GEO|text| |
|miniature|Champ miniature de GEO|bytea| |
|n_fichier|Nom du fichier|text| |
|t_fichier|Type de média dans GEO|text| |
|op_sai|Opérateur de saisie (par défaut login de connexion à GEO)|character varying(20)| |
|date_sai|Date de la saisie du document|timestamp without time zone| |
|l_doc|Titre du document ou légère description|character varying(100)| |

Particularité(s) à noter : aucune

### classes d'objets de gestions métiers sont classés dans le schéma m_economie :

Sans objet

### classes d'objets applicatives métiers sont classés dans le schéma x_apps :
 
`x_apps.xapps_an_vmr_sup_ac4` : Vue matérialisée formatant l''affichage des informations infra-avap sur la commune de Compiègne (pour note de renseignements d''urbanisme)

`x_apps.xapps_vmr_geo_sup_ac4_avap_protect` : Vue matérialisée filtrant la hiérarchisation des bâtiments sans les démolitions (utilisée dans les traitements et l''''applications GEO AVAP-ZPPAUP comparaison (à supprimer après la fin de l''étude)


### classes d'objets applicatives grands publics sont classés dans le schéma x_apps_public :

Sans objet


### classes d'objets opendata sont classés dans le schéma x_opendata :

Sans objet

---

## Liste de valeurs

`lt_avap_cloture` : Liste des types de cloture

|Nom attribut | Définition | Type  | Valeurs par défaut |
|:---|:---|:---|:---|    
|code|Code interne des types de cloture|character varying(2)| |
|valeur|Libellé des types de cloture|character varying(30)| |

Particularité(s) à noter :
* Une clé primaire existe sur le champ code 

Valeurs possibles :

|Code|Valeur|
|:---|:---|
|20|Mur + grille|
|10|Clôture haute en pierre||

---

`lt_avap_protec` : Liste des types de protection

|Nom attribut | Définition | Type  | Valeurs par défaut |
|:---|:---|:---|:---|    
|code|Code interne des types de protection|character varying(2)| |
|valeur|Libellé des types de protection|character varying(50)| |

Particularité(s) à noter :
* Une clé primaire existe sur le champ code 

Valeurs possibles :

|Code|Valeur|
|:---|:---|
|20|Immeuble remarquable|
|30|Immeuble d'intérêt|
|40|Immeuble d'accompagnement|
|50|Immeuble à insérer|
|60|Sans qualification|
|10|Protégé (au titre des M.H.)||

---

`lt_avap_ptpatri` : Liste des types de petit patrimoine

|Nom attribut | Définition | Type  | Valeurs par défaut |
|:---|:---|:---|:---|    
|code|Code interne des types de petit patrimoine|character varying(2)| |
|valeur|Libellé des types de petit patrimoine|character varying(30)| |

Particularité(s) à noter :
* Une clé primaire existe sur le champ code 

Valeurs possibles :

|Code|Valeur|
|:---|:---|
|00|Non renseigné|
|10|Pierre Sculptée isolée|
|20|Ouvrage en pierres assemblées|
|21|Ouvrage de couverture|
|30|Lucarne|
|40|Bois : porte et portail|
|50|Métal : garde-corps|
|51|Métal : portail de clôture|
|60|Puits|
|70|Croix, calvaire|
|80|Verrière, marquise|
|99|Autre|

## Projet QGIS pour la gestion

Sans objet

## Export Open Data

Un Workflow FME a été produit pour exporter les données au format CNIG.
Y:\Ressources\4-Partage\3-Procedures\FME\prod\URB\SUP\10_SUP_AC4_Export_CNIG.fmw

Le workflow globale générant l'ensemnble des servitudes à la parcelle contient un sous-traitement spécifique à la servitude AC4 ici :
Y:\Ressources\4-Partage\3-Procedures\FME\prod\URB\SUP\bloc\03_SUP_generer_table_AC4_protect_GEO.fmw

Workflow globale :
Y:\Ressources\4-Partage\3-Procedures\FME\prod\URB\SUP\00_SUP_integration_globale.fmw

---






