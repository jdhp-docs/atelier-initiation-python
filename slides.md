name: main-titre
layout: true
class: center, middle, inverse

---

# Atelier d'initiation à la programmation Python

Première partie

.footnote[
Jérémie Decock (www.jdhp.org)
]

---

layout: false

.left-column[
    ## Prérequis
]
.right-column[
* Bases en informatique

    - installer une application
    - savoir ce qu'est un système de fichiers
    - ...

* Notions d'algorithmique

    - boucles
    - conditions
    - logique booléenne
]

---

## Objectifs

* Faire vos premiers pas en programmation Python (version 3)
    - Mettre l'accent sur la pratique

???

L'objectif de ce cours est de:
* vous aider à faire vos premiers pas en programmation Python (version 3)
* en mettant l'accent sur la pratique en vous faisant écrire du code.
    - cette présentation sera entrecoupée de plusieurs séances de mise en pratique

--

* Donner les clés pour:
    - Approfondir rapidement vos connaissances en toute autonomie
    - Concevoir rapidement de vraies applications utiles

???

Ce cours a également pour but de vous donner les clés qui vous permettront:
* d'approfondir rapidement vos connaissances en toute autonomie
* et de vous aider à concevoir rapidement de vraies applications utiles.

--

* Vous convaincre des nombreuses qualités de Python

???

Et enfin, je vais essayé de vous convaincre des nombreuses qualités de ce langage.

---

.left-column[
    ## Plan
]
.right-column[
1. [Présentation du langage Python](#presentation)
    - histoire et particularités
2. [Pourquoi utiliser Python ?](#points-forts)
3. [Présentation de l'environnement de programmation](#ide)
4. Variables et types de base
5. Quelques fonctions utiles
    - print(), help(), dir()
6. Les opérateurs logiques et arithmétiques
7. Les structures de données
    - listes, dictionnaire, ensembles
    - le "slicing"
8. Les structures de contrôle
    - if/then/else, boucles for et boucles while
9. Les fonctions
10. Les modules
11. Quelques exemples de codes
]

---

name: presentation
class: center, middle, inverse

## Présentation du langage Python

Histoire et particularités

---

### Qu'est-ce que Python ?

* Un langage interprété
* Multi-plateformes
* Open source
* Très utilisé dans l'industrie et le monde académique

.center[![Logo](fig/python_logo.svg)]

.box[
.center[Site web: [www.python.org](http://www.python.org)]
]

???

* Un langage interprété
    - Pas besoin de compiler, etc.
    - On parle aussi de langage script.
* Multi-plateformes
    - Il marche sur de nombreuses plates-formes dont:
        - Windows
        - MacOS
        - Linux
        - la plupart des systèmes Unix
        - et même sur Android!
* Open source: le langage et son implémentation de référence (interprète, bibliothèque standard et outils annexes)
    - Gratuit, c'est pas le cas de tous les langages:
        - Matlab
        - Mathematica
        - IDL
        - etc.
        - Les licences de ces langages peuvent coûter plusieurs miliers d'euros!
    - Librement modifiable et redistribuable
        - ce n'est pas le cas de certains langages comme C#
    - Vous pouvez regarder la mécanique interne de l'interprète Python et des
      outils qui l'accompagne si le cœur vous en dit
* Très utilisé dans l'industrie et le monde académique
    - Notamment il a de sérieux atouts pour séduire les ingénieurs et les scientifiques

---

### Mais encore ?

Python est un langage:
* .red[*Orienté objet*]
    - Les objets sont des structures de données complexes
* De .red[*haut niveau*]
    - Gestion automatique de la mémoire
    - Système de gestion d'exceptions
    - ...
* À .red[*typage dynamique*]
    - Le programmeur de défini pas explicitement le type des variables

???

Python est un langage à *typage dynamique fort*.

Typage dynamique:
> "Le typage dynamique consiste à laisser l'ordinateur réaliser cette opération
> de typage « à la volée », lors de l'exécution du code, et de décharger donc le
> programmeur de la tâche contraignante de déclarer expressément, pour chaque
> variable qu'il introduit dans son code, son typage.
> Le typage dynamique est une solution très commode pour le développement
> rapide de programmes, où le type des objets manipulés n'est pas forcément connu
> à l'avance, ou bien où le programmeur veut permettre par commodité le
> changement de type d'une variable." (wikipedia)

Typage fort:
> "Depuis son invention, le terme de typage fort a été employé avec de nombreux
> sens contradictoires, ce qui lui a enlevé presque toute signification."

Si vous comprenez ce que je viens de dire, tant mieux ;
si non c'est pas grave, on va éviter de perdre du temps à définir tous ces
concept abstraits qui sont importants à connaitre pour un programmeur avancé
mais qui ne sont pas indispensables pour une première approche (pragmatique et
pratique) du langage.

* https://fr.wikipedia.org/wiki/Typage_dynamique
* https://fr.wikipedia.org/wiki/Typage_fort

---

### Un bref historique du langage

* Python 1 (1994) : n'est plus utilisé depuis longtemps
* Python 2 (2000) : toujours utilisé mais en fin de vie
* Python 3 (2008) : celui que nous allons étudier

---

### Les sous versions

* Python 2:

    - Python 2.0 (2000)
    - Python 2.1 (2001)
    - Python 2.2 (2001)
    - Python 2.3 (2003)
    - Python 2.4 (2004)
    - Python 2.5 (2006)
    - Python 2.6 (2008)
    - **Python 2.7 (2010)**

* Python 3:

    - Python 3.0 (2008)
    - Python 3.1 (2009)
    - Python 3.2 (2011)
    - Python 3.3 (2012)
    - Python 3.4 (2014)
    - **Python 3.5 (2015)**

---

### Incompatibilités

* *Python 1*, *Python 2* et *Python 3* sont **incompatibles** entre eux!

    - Un programme écrit pour *Python 2* ne fonctionnera généralement pas sur
      *Python 3*
    - Un programme écrit pour *Python 3* ne fonctionnera généralement pas sur
      *Python 2*
    - ...

* Mais les sous-versions sont compatibles entre elles:

    - Un programme écrit pour *Python 2.5* fonctionnera sur *Python 2.7*
    - Un programme écrit pour *Python 3.0* fonctionnera sur *Python 3.5*
    - ...

???

Ça peut sembler anecdotique mais ça ne l'est pas car ces 3 versions sont
incompatibles et un programme écrit pour fonctionner avec la vversion X ne
fonctionnera pas avec la version Y (avec un système ou seule la version ... est installée)
En revanche il n'y a pas de problemes de compacompatibbilité entre les sous versions
Les sous version: Python 3.0, 3.1, 3.2, ... Aujourd'hui 3.? ->

---

### Python 2 ou Python 3 ?

* Python 2 est toujours utilisé par de nombreuses personnes
    - Quelques outils et bibliothèques n'ont toujours pas été mises à jours pour Python 3
    - De nombreuses innovations de Python 3.X ont été portées dans Python 2.7

* Mais Python 2 meurt lentement mais surement...

* Python 3 c'est (le présent et) l'avenir!

.box[
Il existe des outils pour automatiser la conversion des programmes de Python 2
à Python 3 ([2to3](https://docs.python.org/3/library/2to3.html))
]

---

name: points-forts
class: center, middle, inverse

## Pourquoi utiliser Python ?

12 bonnes raisons d'utiliser Python

---

### Une syntaxe légère, efficace et agréable à lire 

Syntaxe discrète, code court et facile à lire...
- singulière, originale
-> comparaison Python vs C vs C++ vs Java

---

### Un cycle de développement court

Un langage interprété
- pas de compilation
- pas de makefile, etc.
- on peut tester du code à la volée: Ipython

Les fichiers code source n'ont pas besoin d'être rangé d'une façon particulière
-> contrairement au Java
-> ex: ...

Typage dynamique

Pas de déclaration, pas de headers

Gestion de la mémoire par ramasse-miettes

---

### Des types de base très puissants et faciles à utiliser

dictionnaires, listes, ensembles

côté facilité d'utilisation, rien à voire avec C++, Java et plus encore C.

---

### Un langage multi-plateforme

Permet d'écrire des portable portables
* marche sur Windows, MacOS, Linux et sur de
  [nombreuses autres plateformes](https://www.python.org/download/other/)
* pas besoin de "recompiler" / adapter le code (contrairement au C/C++)

---

### Bibliothèques ("Batteries included") 

mettre ici un schéma avec plusieurs cercles concentriques:
- le langage python: les ~classes/fonctions~ internes
- la bibliothèque standard: toutes les fonctionnalités ("modules") livrés avec le langage (ie. rien à installer) -> montrer la liste sur la page de doc de python.org
- les nombreux paquets externes (à installer au cas par cas)

---

### Une énorme base d'utilisateurs et de code

* Très utilisé dans l'industrie et le monde académique

???

TODO: https://www.python.org/about/success/

---

### Un langage très généraliste

On peut presque tout faire avec:
- interfaces graphiques
- calcul scientifique
- informatique haute performance / calcul massivement parallèle
- chimie, biologie, astronomie, etc.
- serveurs
- multimédia
- 3D
- jeux
- traitement d'image
- applications web
- systèmes embarqués (robotique, etc.)
- bases de données
- réseau
- outils système
- greffons (plugins) pour Blender, The Gimp, Inkscape, FreeCAD, OpenOffice, etc.
- édition de documents (PDF, XML, etc.)
- cartographie
- ...

???

TODO: https://www.python.org/about/apps/

TODO: faire apparaître les items un par un et mettre une image dans la colonne
de gauche pour chaque item.

---

### Des outils pour faciliter la distribution de vos programmes Python

PIP, PyPi

Anaconda, etc. : une "distribution" Python pour Windows/MacOSX/Linux -> Python + de nombreux paquets externes
Intérêt: un python classique avec en plus de nombreux paquets externes préinstallés et un système pour garder les paquets à jours

---

### Open source

pas de problèmes de licence ou de brevets (contrairement à C# ou à Java à ses débuts)
n'importe qui peut étudier la mécanique interne de Python et améliorer le code source de ses outils (interprètes, debuggeur, etc.)
n'importe qui peut proposer ... PEP

---

### Un langage d'utilité publique :-)

Géré par la [Python Software Foundation (PSF)](https://www.python.org/psf/)

Python est un langage qui n'appartient à aucune entreprise.

L'évolution du langage est dirigée par Guido van Rossum, BDFL ("Benevolent Dictator For Live")

N'importe qui peut proposer des améliorations pour les futures version du langage via le mécanisme de PEP

???

Dictateur bienveillant/bénévole à vie

---

### Une documentation intégrée

- les docstrings
- help()
- Sphinx

---

### L'internationalisation gérée de base (unicode)

Gère les caractères Unicode par défaut contrairement au C/C++
-> print("truc en chinois, arabe, russe, etc.")

```python
print("")
```

---

### Quelques idées reçues

* "Python est lent..."
    - Cf. PyGamma15
    - La façon dont est écrit un programme compte tout autant que le langage lui même...

* "Le typage dynamique est source d'erreurs"
    - Tout dépend du programmeur... avec un peu de rigueur et de bon sens tout va bien
    - Faire des tests unitaires, documenter chaque fonction, etc.

* "L'indentation obligatoire est pénible (tabulation vs espaces, garder toujours le même nombre d'espaces, etc.)"
    - Il suffit de régler correctement son éditeur de texte une bonne fois pour toute : 1 tabulation = 4 espaces

* "Python découvre les erreurs au cours de l'exécution du programme, i.e. trop
  tard... Au moins avec le langage C/C++/Java/... le compilateur me retourne
  toutes les erreurs au moment de la compilation, i.e. avant l'exécution." 
    - Les compilateurs (C/C++/Java/...) ne retournent pas toutes les erreurs, loin de là
    - Il existe plein d'outils en Python pour faire de l'analyse de code *statique* (i.e. à froid):
        - pylint
        - 

---

name: ide
class: center, middle, inverse

## Présentation de l'environnement de programmation Python

L'interprète Python et l'environnement de développement IDLE

---

### L'environnement de programmation Python

...

---

### Installation de Python

...

[www.python.org](http://www.python.org)

---

### Alternative: les distributions

Qu'est-ce que c'est ?

Pourquoi utiliser une distribution ?

Quelques exemples de distributions Python:
* [Anaconda](https://www.continuum.io/)
* [Enthought Canopy](https://www.enthought.com/)
* [Python(x,y)](http://python-xy.github.io/)
* [ActivePython](http://www.activestate.com/activepython)

---

### Installer Anaconda (ou Miniconda)

...

[www.continuum.io](https://www.continuum.io/)

---

### L'interprète python

* utilisation de l'interprète interactif (windows, linux, mac)
* execution d'un programme Python écrit dans un fichier
    - via la ligne de commande
    - depuis l'interface graphique du système (double clic...)

---

### L'environnement de développement IDLE

* présentation: IDE "officiel" de Python, écrit en Python, open source, ... pourquoi IDLE?: 
* installation
* appel
* interprète interactif
* éditeur: nouveau/ouvrir, enregistrer, executer

Si IDLE ne vous plait pas (personnellement je ne m'en sert pas, j'utilise un
éditeur de texte généraliste (vim) + ipython à la place), il en existe plein
d'autres: notepad++, codeblocks, etc.

---

### Avant de commencer

Quelques liens utiles (pages web à ajouter à vos favoris):
* [https://docs.python.org/3/library/index.html](https://docs.python.org/3/library/index.html) (celui là est indispensable!)
* [https://docs.python.org/3/tutorial/index.html](https://docs.python.org/3/tutorial/index.html)
* [https://docs.python.org/3/reference/index.html](https://docs.python.org/3/reference/index.html)
* [https://docs.python.org/3/glossary.html](https://docs.python.org/3/glossary.html)

---

### "The Zen of Python"

```
>>> import this
The Zen of Python, by Tim Peters

Beautiful is better than ugly.
Explicit is better than implicit.
Simple is better than complex.
Complex is better than complicated.
Flat is better than nested.
Sparse is better than dense.
Readability counts.
Special cases aren't special enough to break the rules.
Although practicality beats purity.
Errors should never pass silently.
Unless explicitly silenced.
In the face of ambiguity, refuse the temptation to guess.
There should be one-- and preferably only one --obvious way to do it.
Although that way may not be obvious at first unless you're Dutch.
Now is better than never.
Although never is often better than *right* now.
If the implementation is hard to explain, it's a bad idea.
If the implementation is easy to explain, it may be a good idea.
Namespaces are one honking great idea -- let's do more of those!
```

???

TODO: supprimer ?

Il y a un "easter egg" dans Python,
quand on tape `import this` dans l'interprète,
quelques unes des bonnes pratiques de base de Python sont rappelées.

C'est amusant mais c'est plus anecdotique qu'autre chose...

---

name: variables-types
class: center, middle, inverse

## Variables et types de base

---

### Qu'est-ce qu'une variable ?

...

---

### Affecter une valeur à une variable

...

---

### Afficher la valeur d'une variable

...

---

name: fonctions-utiles
class: center, middle, inverse

## Quelques fonctions utiles

---

### print()

...

---

### help()

...

---

### dir()

...

---

name: operateurs
class: center, middle, inverse

## Les opérateurs logiques et arithmétiques

---

### ...

...

---

name: strustures-de-donnees
class: center, middle, inverse

## Les structures de données

---

### Les listes

...

---

### Les dictionnaires

...

---

### Les ensembles

...

---

name: structures-de-controle
class: center, middle, inverse

## Les structures de controle

---

### If/Then/Else

...

---

### Boucles For

...

---

### Boucles While

...

---

name: fonctions
class: center, middle, inverse

## Les fonctions

---

### ...

...

---

name: modules
class: center, middle, inverse

## Les modules

---

### ...

...

---

### ???

Présentation des trucs cool (sans code) qu'on peut faire avec Python (distinguer les modules/paquets internes et externes)

.left-column[
* argparse
* json
* mayavi
* pandas
* multiprocessing
* pdb
* pickle
* poppler
* pygame
* pydot
* sympy
* raspberrypi...
* xml...
]
.right-column[
* scikitlearn
* astropy ???
* cairo
* cvxopt
* tkinter / pygtk / pyqt / ...
* Numpy (externe)
* Matplotlib (externe)
* Sympy
* Python serial
* Sphinx
* Beautifulsoup
* Pillow (PIL)
* OpenCV
* MPI4Py
]

???

TODO: mettre ça autre part
