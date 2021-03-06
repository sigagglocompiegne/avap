![picto](https://github.com/sigagglocompiegne/orga_gest_igeo/blob/master/doc/img/geocompiegnois_2020_reduit_v2.png)

# Documentation d'administration de l'application #


* Statut
  - [ ] à rédiger
  - [x] en cours de rédaction
  - [ ] relecture
  - [ ] finaliser
  - [ ] révision

# Généralité

|Représentation| Nom de l'application |Résumé|
|:---|:---|:---|
|![picto](picto_appli_eco.png)|AVAP|Cette application est dédiée à la consultation des données détaillées de protection sur les bâtiments de l'AVAP de Compiègne. Elle est uniquement disponible à partir de l'application [Urbanisme](https://github.com/sigagglocompiegne/docurba/blob/master/app/doc_admin_app_docurba.md) via la note de renseignement d'urbanisme si la parcelle consultée est compris danq le périmètre de l'AVAP||

# Application

## Droit d'accès

|Groupe|Accès|Accès depuis le portail|
|:---|:---|:---|
|Tous les utilisateurs|Lecture|Utilisation|

## Compositions

|Type et nom du composant|Groupe|Droit applicatif|Droit de gestion|
|:---|:---|:---|:---|
|Autres : Média - AVAP|Tous les utilisateurs de l'organisation|Lecture | Utilisation|
|Autres : Média - AVAP|Utilisateurs invités de l'organisation|Lecture | Utilisation|
|Autres : Navigateur|Utilisateurs invités de l'organisation|Lecture | Utilisation|
|Autres : Navigateur|Tous les utilisateurs de l'organisation|Lecture | Utilisation|
|Carte : AVAP|Tous les utilisateurs de l'organisation|Lecture | Utilisation|
|Carte : AVAP|Utilisateurs invités de l'organisation|Lecture | Utilisation|
|Gabarit : Gabarit 1|Tous les utilisateurs de l'organisation|Lecture | Utilisation|
|Gabarit : Gabarit 1|Utilisateurs invités de l'organisation|Lecture | Utilisation|
|Modules : Introduction|||Utilisation|
|Modules : Introduction|Utilisateurs invités de l'organisation|Lecture | Utilisation|
|Modules : Introduction|Editeurs_Cadastre|Lecture    | Copie Edition Suppression Utilisation|
|Modules : Introduction|Tous les utilisateurs de l'organisation|Lecture | Utilisation|
|Modules : Multimédia|Tous les utilisateurs de l'organisation|Lecture | Utilisation|
|Modules : Multimédia|Utilisateurs invités de l'organisation|Lecture | Utilisation|
|Modules : Partage de lien|Tous les utilisateurs de l'organisation|Lecture | Utilisation|
|Modules : Partage de lien|Utilisateurs invités de l'organisation|Lecture | Utilisation|
|Modules : Partage de lien|||Utilisation|
|Modules : Partage de lien|Editeurs_Cadastre|Lecture    | Copie Edition Suppression Utilisation|
|Modules : Street View|Utilisateurs invités de l'organisation|Lecture | Utilisation|
|Modules : Street View|Editeurs_Cadastre|Lecture    | Copie Edition Suppression Utilisation|
|Modules : Street View|||Utilisation|
|Modules : Street View|Tous les utilisateurs de l'organisation|Lecture | Utilisation|
|Modules : Zoom|Utilisateurs invités de l'organisation|Lecture | Utilisation|
|Modules : Zoom|Tous les utilisateurs de l'organisation|Lecture | Utilisation|
|Recherches intégrées : AVAP (parcelle concernée)|Utilisateurs invités de l'organisation|Lecture||
|Recherches intégrées : AVAP (parcelle concernée)|DGI_TIERS|Lecture | Utilisation|
|Recherches intégrées : AVAP (parcelle concernée)|DGI_FICHE|Lecture | Utilisation|
|Recherches intégrées : AVAP (parcelle concernée)|Tous les utilisateurs de l'organisation|Lecture | Utilisation|
|Recherches intégrées : AVAP (parcelle concernée)|DGI|Lecture | Utilisation|
|Recherches intégrées : AVAP - Monument histotique|Utilisateurs invités de l'organisation|Lecture||
|Recherches intégrées : AVAP - Monument histotique|Tous les utilisateurs de l'organisation|Lecture | Utilisation|
|Recherches intégrées : AVAP - Petit patrimoine|Tous les utilisateurs de l'organisation|Lecture | Utilisation|
|Recherches intégrées : AVAP - Petit patrimoine|Utilisateurs invités de l'organisation|Lecture||
|Recherches intégrées : AVAP - Protection des bâtiments|Tous les utilisateurs de l'organisation|Lecture | Utilisation|
|Recherches intégrées : AVAP - Protection des bâtiments|Utilisateurs invités de l'organisation|Lecture||
|Theme : AVAP|Utilisateurs invités de l'organisation|Lecture | Utilisation|
|Theme : AVAP|Tous les utilisateurs de l'organisation|Lecture | Utilisation|

## Options
 * **Menu Titre et introduction**

|Attribut|Contenu|
|:---|:---|
|Titre|``|
|Message d'introduction|`<center><font size=3><b>AVAP de Compiègne</b></font></center><br><font size=2><b>Accès aux règlements écrits :</b><br><a href="http://geo.compiegnois.fr/documents/metiers/urba/sup/200067965_AC4_60159_20200306/Pieces_ecrites/200067965_AC4_60159_reglement_titre1_20200306.pdf" target="_blank">Titre 1</a>, <a href="http://geo.compiegnois.fr/documents/metiers/urba/sup/200067965_AC4_60159_20200306/Pieces_ecrites/200067965_AC4_60159_reglement_titre2_20200306.pdf" target="_blank">Titre 2</a>, <a href="http://geo.compiegnois.fr/documents/metiers/urba/sup/200067965_AC4_60159_20200306/Pieces_ecrites/200067965_AC4_60159_reglement_titre3_20200306.pdf" target="_blank">Titre 3</a><br><br><b>Accès aux règlements graphiques (papier) :</b><br><a href="http://geo.compiegnois.fr/documents/metiers/urba/sup/200067965_AC4_60159_20200306/Pieces_ecrites/200067965_AC4_60159_reglement_graphique_20200306.pdf" target="_blank">Plan global</a>, <a href="http://geo.compiegnois.fr/documents/metiers/urba/sup/200067965_AC4_60159_20200306/Pieces_ecrites/200067965_AC4_60159_reglement_graphique_centre_20200306.pdf" target="_blank">Secteur Centre</a>, <a href="http://geo.compiegnois.fr/documents/metiers/urba/sup/200067965_AC4_60159_20200306/Pieces_ecrites/200067965_AC4_60159_reglement_graphique_sud_20200306.pdf" target="_blank">Secteur Sud</a>, <a href="http://geo.compiegnois.fr/documents/metiers/urba/sup/200067965_AC4_60159_20200306/Pieces_ecrites/200067965_AC4_60159_reglement_graphique_royallieu_20200306.pdf" target="_blank">Secteur Royallieu</a><br><br><b>Pièces diverses :</b><br><a href="http://geo.compiegnois.fr/documents/metiers/urba/sup/200067965_AC4_60159_20200306/Pieces_ecrites/200067965_AC4_60159_diagnostic_20200306.pdf" target="_blank">Diagnostic</a>, <a href="http://geo.compiegnois.fr/documents/metiers/urba/sup/200067965_AC4_60159_20200306/Pieces_ecrites/200067965_AC4_60159_rapport_20200306.pdf" target="_blank">Rapport de présentation</a></font><br><img src="http://geo.compiegnois.fr/documents/metiers/urba/divers/geo_legende_avap/geo_legende_avap.jpg" width="458" alt="">`|
|Copyright|``|
|URL|``|

 * **Libellé du gabarit**

|Libellé d'origine|Libellé personnalisé|
|:---|:---|
|leftpanel.explore|Légende|
|leftpanel.explore.long|Légende|
|leftpanel.results|Photothèque|
|infosheet.nomedia|Pas de photographies recensées sur ce bâtiment.|

 * **Les recherches**

|Libellé|Type|Ignorer la visibilité|Chargée au démarrage|
|:---|:---|:---|:---|
|AVAP - Protection des bâtiments|Recherche au clic sur la carte|Yes|No|
|AVAP - Monument histotique|Recherche au clic sur la carte|Yes|No|
|AVAP - Petit patrimoine|Recherche au clic sur la carte|Yes|No|
|AVAP (parcelle concernée)|Autre recherche|No|No|

# Carte

## Composition

|Type de couche|Nom de la couche|
|:---|:---|
|Couche Vecteur|geo_adm_quartier|
|Couche Vecteur|geo_sup_ac4_avap_protect|
|Couche Vecteur|xapps_v_adresse|
|Flux|Cadastre|
|Flux|SUP AC4 - AVAP/SPR|

## Option des couches

 * **Fonds de plan (si intégré dans la carte)**

|Nom|Visible au démarrage|
|:---|:---|
|Cadastre|Yes|

 * **Couches vectorielles (avec ou sans groupe)**

|Ordre|Nom|Groupe|Légende (visible)|Légende (détails visibles)|Déplier par défaut|Visible au démarrage|Sélectionnable|Au démarrage|Accrochable|Rechercher par défaut|Etiquette au démarrage|
|:---|:---|:---|:---|:---|:---|:---|:---|:---|:---|:---|:---|
|0|xapps_v_adresse|No|No||Yes|Yes|No|Yes|No|No|Yes|
|1|geo_adm_quartier|No|No||Yes|No|No|Yes|No|No|Yes|
|2|AC4-AVAP(SPR)|Yes|Yes|No|No|Yes|||||Yes|
|3|geo_sup_ac4_avap_protect|No|No||Yes|Yes|Yes|Yes|No|No|Yes|

# Fonctionnalités

## Les recherches

|Nom|Champs affichés|Afficher|Rechercher|Suggestion|Comportement de la recherche|
|:---|:---|:---|:---|:---|:---|
|AVAP - Monument histotique|affiche_blanc|Yes|No|No|CONTAINS_QUERY|
|AVAP - Monument histotique|affiche_result|Yes|No|No|CONTAINS_QUERY|
|AVAP (parcelle concernée)|champ_recherche_par|No|Yes|Yes|CONTAINS_FULLTEXT|
|AVAP (parcelle concernée)|affiche_blanc|No|No|No|CONTAINS_FULLTEXT|
|AVAP (parcelle concernée)|affiche_avap_result_parcelle|Yes|No|No|CONTAINS_FULLTEXT|
|AVAP (parcelle concernée)|affiche_avap|Yes|No|No|CONTAINS_FULLTEXT|
|AVAP - Petit patrimoine|affiche_blanc|Yes|No|No|CONTAINS_QUERY|
|AVAP - Petit patrimoine|affiche_result|Yes|No|No|CONTAINS_QUERY|
|AVAP - Protection des bâtiments|affiche_blanc|Yes|No|No|CONTAINS_QUERY|
|AVAP - Protection des bâtiments|affiche_result|Yes|No|No|CONTAINS_QUERY|




















