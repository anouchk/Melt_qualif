# Melt_qualif
Il s'agit d'appliquer la fonction "melt" de data.table dans R, expliquée dans cette <a href="https://github.com/rstudio/cheatsheets/raw/master/datatable.pdf">cheatsheet</a>, à un <a href="http://cache.media.enseignementsup-recherche.gouv.fr/file/statistiques/19/7/Qualification_Tableaux_campagne_2018_1143197.xlsx">jeu de données du MESRI </a> relatif au **taux de qualification aux fonctions de maître de conférences ou de professeur des universités entre 2008 et 2018** (onglet "historique MCF 2008-2018" du fichier excel). 

Le fichier excel d'origine avait des colonnes fusionnées : il a d'abord fallu créer un fichier csv où j'avais au préalable renommé les colonnes par un nom du type "MCexamines_2008", "MCexamines_2009" etc. jusqu'à 2018, et "MCqualifies_2008", "MCqualifies_2009" etc. jusqu'à 2018.

Le melt fonctionne et crée bien une colonne "Année", néanmoins les années 2008,2009, 2010 sont remplacées par 1, 2, 3. Je n'ai pour l'instant pas automatisé cet aspect-là et remplacé à la main. 
