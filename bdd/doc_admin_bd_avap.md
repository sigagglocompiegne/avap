![picto](https://github.com/sigagglocompiegne/orga_gest_igeo/blob/master/doc/img/geocompiegnois_2020_reduit_v2.png)

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
  
   `geo_immo_bien` : table des attributs métiers permettant de gérer l'ensemble des éléments de la primitive graphique (terrain, local ou bâtiment contenant un ou des locaux).
   
|Nom attribut | Définition | Type | Valeurs par défaut |
|:---|:---|:---|:---|


Particularité(s) à noter : aucune

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






