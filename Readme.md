Ateliers Finist’R 2020
================

L’atelier Finist’R 2020 – ou *bootcamp R* se tiendra à la [station
biologique de Roscoff](http://www.sb-roscoff.fr/) du 24 au 28 août 2020.

Il s’agit de la quatrième édition de l’atelier Finist’R. Cet atelier
réunit annuellement un groupe de chercheurs, ingénieurs, doctorants,
tous utilisateurs avancés de `R` et dévelopeurs de paquets pour explorer
les dernières fonctionalités du logiciel et les nouvelles pratiques de
développement. A l’issu de l’atelier le collectif produit une synthèse
de cette veille logiciel de manière à progresser collectivement dans
l’utilisation du logiciel mais surtout dans la production d’outils
statistiques à destination de la communauté.

La restitution se fait sous forme de site web. Le site de l’édition 2020
[sera disponible ici](https://stateofther.github.io/finistR2020/)

Participants
============

-   Alglave Baptiste
-   Aubert Julie
-   Barbillon Pierre
-   Bichat Antoine
-   Chabert Liddell Saint-Clair
-   Chiquet Julien
-   Donnet Sophie
-   Étienne Marie-Pierre
-   Gloaguen Pierre
-   Le Minh Tam
-   Mariadassou Mahendra
-   Massiot Gaspard
-   Navaro Pierre
-   Neuvial Pierre

Programme
=========

Le programme sera défini collectivement par les participants lors de la
semaine d’ateliers.

Idées d’ateliers
----------------

-   Enseignement
    -   Enseignement distanciel de R
    -   Github et Gestion de projets étudiants [section
        39](https://happygitwithr.com/classroom-overview.html)
-   Intégration continue and Co
    -   github action (faciliter la génération finale du siteweb)  
    -   développement R avec git/github
    -   Rhub, usethis, publication de package
    -   docker
-   Langage R avancé, tidyverse
    -   curly bracket, gestion des noms de variable dynamique
    -   rlang, c’est quoi ?
    -   deuxième édition de Advanced R
        (<a href="https://adv-r.hadley.nz/" class="uri">https://adv-r.hadley.nz/</a>)
    -   Classes R6
    -   RcppParallel
    -   application shiny sur
        <a href="https://plmshift.math.cnrs.fr/" class="uri">https://plmshift.math.cnrs.fr/</a>
-   Communication, interface
    -   Représentations/visualisation de graphes
    -   markdown avancé ([distill](https://rstudio.github.io/distill/),
        [thesisdown](https://github.com/ismayc/thesisdown), …)
    -   intégration R/Python
        <a href="https://rstudio.com/solutions/r-and-python/" class="uri">https://rstudio.com/solutions/r-and-python/</a>,
        <a href="https://solutions.rstudio.com/python/overview/" class="uri">https://solutions.rstudio.com/python/overview/</a>
-   Outils Statistiques et computationnel
    -   autograd, tmb, pytorch
    -   [séries temporelles](https://github.com/tidyverts)
    -   [personalisation de
        tidymodels](https://www.tidymodels.org/learn/develop/)
    -   modèles de survie
    -   modele mixte, GAM
    -   intégration en R
    -   [Equations différentielles et autres
        EDPs](https://pure.knaw.nl/ws/portalfiles/portal/462308/Soetaert_ea_4748.pdf)

Idées de projet à mettre en place sur la semaine
------------------------------------------------

-   Package interfaçant R à [optimLib](https://github.com/kthohr/optim)
-   Classes R6 pour [GroßBM](https://github.com/GrossSBM)
-   Templates d’articles et gestion des actions de relcture pour
    [Computo](https://github.com/journal-french-statistical-society/)
-   Réalisation du [site web de Finist’R
    2020](https://stateofther.github.io/finistR2020/)

Installation des dépendances et génération du site
--------------------------------------------------

-   Installer
    [Miniconda](https://docs.conda.io/en/latest/miniconda.html) our
    Anaconda (plus lourd) sur votre poste.
-   Installer [Julia](https://julialang.org/downloads/) avec les
    packages nécessaires.

<!-- -->

    julia -e 'using Pkg; Pkg.add("DifferentialEquations")'

-   Créer l’environemment conda pour générer le site web

<!-- -->

    conda env create -f binder/environment.yml
    conda activate finistR2020
    Rscript install.R
    Rscript -e "rmarkdown::render_site()'
