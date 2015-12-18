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

    - les systèmes d'exploitation
    - installer une application
    - ouvrir un terminal
    - ...

* Quelques *notions* de programmation

    - ce qu'est un langage de programmation
    - ce qu'est la *syntaxe* d'un langage
    - ce qu'est une variable et un type
    - ce qu'est une bibliothèque logicielle
    - la différence entre un compilateur et un interprète

* Quelques *notions* d'algorithmique

    - les boucles
    - les conditions
    - la logique booléenne
]

???

Cet atelier est vraiment fait pour les débutants.

Il y a quelques pré-requis,
rien de bien compliqué et
même sans ces pré-requis,
vous devriez quand même pouvoir suivre sans trop de difficultés.

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
Première partie: Une présentation générale
* [Présentation du langage Python](#presentation)
    - histoire et particularités
* [Pourquoi utiliser Python ?](#points-forts)
* [Présentation de l'environnement de programmation](#ide)

Deuxième partie: On passe à la pratique
* Variables et types de base
* Quelques fonctions utiles
    - print(), help(), dir()
* Les opérateurs logiques et arithmétiques
* Les structures de données
    - listes, dictionnaire, ensembles
    - le "slicing"
* Les structures de contrôle
    - if/then/else, boucles for et boucles while
* Les fonctions
* Les modules

Troisième partie: Quelques exemples de codes
]

---

name: presentation
class: center, middle, inverse

## Présentation du langage Python

Histoire et particularités

---

### Qu'est-ce que Python ?

* Un langage *.red[interprété]*
* Multi-plateformes
* Open source
* Très utilisé dans l'industrie et le monde académique

.center[<img src="fig/python_logo.svg" width="300">]

.box[
.center[Site web: [www.python.org](http://www.python.org)]
]

???

* Un langage .red[interprété]
    - Pas besoin de compiler, etc.
    - On parle aussi de langage script.
* .red[Multi-plateformes]
    - Il marche sur de nombreuses plates-formes dont:
        - Windows, MacOS, Linux
        - La plupart des systèmes Unix
        - Et même sur Android!
* .red[Open source]: le langage et son implémentation de référence (interprète, bibliothèque standard et outils annexes)
    - Gratuit, c'est pas le cas de tous les langages:
        - Matlab, Mathematica, IDL, etc.
        - Les licences de ces langages peuvent coûter plusieurs miliers d'euros!
    - Librement modifiable et redistribuable
        - Ce n'est pas le cas de certains langages comme C#
    - Vous pouvez regarder la mécanique interne de l'interprète Python et des
      outils qui l'accompagne si le cœur vous en dit
* .red[Très utilisé] dans l'industrie et le monde académique
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

Si vous comprenez ce que je viens de dire, tant mieux ;

sinon c'est pas grave,

on va éviter de perdre du temps à définir tous ces
concept abstraits

qui sont importants à connaitre pour un programmeur avancé

mais qui ne sont pas indispensables pour une première approche (pragmatique et
pratique) du langage.



> Python est un langage à *typage dynamique fort*.
> 
> Typage dynamique:
> "Le typage dynamique consiste à laisser l'ordinateur réaliser cette opération
> de typage « à la volée », lors de l'exécution du code, et de décharger donc le
> programmeur de la tâche contraignante de déclarer expressément, pour chaque
> variable qu'il introduit dans son code, son typage.
> Le typage dynamique est une solution très commode pour le développement
> rapide de programmes, où le type des objets manipulés n'est pas forcément connu
> à l'avance, ou bien où le programmeur veut permettre par commodité le
> changement de type d'une variable." (wikipedia)
> 
> Typage fort:
> "Depuis son invention, le terme de typage fort a été employé avec de nombreux
> sens contradictoires, ce qui lui a enlevé presque toute signification."
> 
> * https://fr.wikipedia.org/wiki/Typage_dynamique
> * https://fr.wikipedia.org/wiki/Typage_fort

---

### Un bref historique du langage

* Python 1 (1994) : n'est plus utilisé depuis longtemps
* Python 2 (2000) : toujours utilisé mais en fin de vie
* Python 3 (2008) : celui que nous allons étudier

???

Python est un langage mature.

Il a une vingtaine d'années déjà.

La première version du langage est sortie en 1994,
la seconde en 2000 et la troisième en 2008.

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

???

Python 1: est complètement dépassé, je n'en parlerai pas plus.

Python 2:
* Il est sorti .red[8] sous-version pour Python 2.
* La dernière en date (Python 2.7) date de 2010.
* Python 2.7 est encore très utilisé aujourd'hui.

Python 3: à ce jour, il est sorti .red[6] sous-version de Python 3.

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

Je vous parle de versions car

il faut savoir qu'il y a des problèmes d'incompatibilités entre certaines versions.

* *Python 1*, *Python 2* et *Python 3* sont **incompatibles** entre eux!

    - Un programme écrit pour *Python 2* ne fonctionnera généralement pas sur
      *Python 3*
    - Un programme écrit pour *Python 3* ne fonctionnera généralement pas sur
      *Python 2*

* En revanche il n'y a pas de problèmes de compatibilité entre les sous-versions.

    - Un programme écrit pour *Python 2.5* fonctionnera sur *Python 2.7*
    - Un programme écrit pour *Python 3.0* fonctionnera sur *Python 3.5*
    - ...

---

### Python 2 ou Python 3 ?

.center[<img src="fig-nonfree/python-survey-2014-versions-regularly-use.png" width="500">]

.box[
Python 2 est toujours utilisé par de nombreuses personnes !
]

Source: [www.randalolson.com/2015/01/30/python-usage-survey-2014/](http://www.randalolson.com/2015/01/30/python-usage-survey-2014/)

???

La question se pose parfois de savoir si il vaut mieux utiliser Python 2 ou Python 3.

Il y a encore beaucoup de développeurs qui pour diverses raisons préfèrent encore
utiliser Python 2 plutôt que Python 3.

---

Principales raisons:
1. Quelques outils et bibliothèques utilisées par ces développeurs n'ont toujours pas été mises à jours pour Python 3
2. De nombreuses innovations de Python 3.X sont de toute façon portées dans Python 2.7
3. Manque de le temps, de moyens ou de motivation de porter certains projets

.center[<img src="fig-nonfree/python-survey-2014-prevent-upgrade.png" width="500">]

Source: [www.randalolson.com/2015/01/30/python-usage-survey-2014/](http://www.randalolson.com/2015/01/30/python-usage-survey-2014/)

---


<br />

.box[
D'accord mais pour nous ce sera **Python 3** !
]

* Il est assez peu probable que vous soyez concerné par le premier argument, les principales grosses bibliothèques ont déjà été portées depuis plusieurs années
* Vous débutez en python donc les arguments 2 et 3 ne sont pas valables pour vous
* Python 2 meurt (très) lentement mais surement...
* Python 3 c'est (le présent et) l'avenir !

.box[
Il existe des outils pour automatiser la conversion des programmes de Python 2
à Python 3 ([2to3](https://docs.python.org/3/library/2to3.html))
]

---

name: points-forts
class: center, middle, inverse

## Pourquoi utiliser Python ?

15 bonnes raisons d'utiliser Python

---

class: center, middle

### Suspense...

Je garde ça pour la fin !

???

En attendant, place à la pratique

---

name: ide
class: center, middle, inverse

## Présentation de l'environnement de programmation Python

L'interprète Python et l'environnement de développement IDLE

---

### Un aperçu de l'environnement (standard) de programmation Python [TODO]

* *Implémentation* standard (CPython)
    - Interprète python standard (aussi appelé CPython)
    - Bibliothèques standard
    - IDE (éditeur) : IDLE
    - Outils : pip, 2to3, etc.
* Bibliothèques externes
    - Numpy
    - Matplotlib
    - PyQt
    - etc.
* Interprètes/outils externes
    - IPython
    - Sphinx
    - ...

* http://enacit1.epfl.ch/introduction-python/outils-python.html
* https://en.wikipedia.org/wiki/Python_%28programming_language%29#Implementations
* https://docs.python.org/3.5/tutorial/interpreter.html
* https://docs.python.org/3.5/using/windows.html

---

### Installation de Python : la méthode classique...

<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />

.box[
.center[[www.python.org](http://www.python.org)]
]

---

### Alternative : les distributions

Qu'est-ce que c'est ?

* Distribution Python: Anaconda, ...
    * *Implémentation* standard (CPython)
        - interprète python standard (aussi appelé CPython)
        - outils : pip, 2to3, etc.
        - bibliothèques standard
        - IDE (éditeur) : IDLE
    * Bibliothèques externes
        - Numpy
        - Matplotlib
        - PyQt
        - ...
    * IPython (ne pas en parler ???)
        - un interprète amélioré

Pourquoi utiliser une distribution ?

Quelques exemples de distributions Python:
* [Anaconda](https://www.continuum.io/)
* [Enthought Canopy](https://www.enthought.com/)
* [Python(x,y)](http://python-xy.github.io/)
* [ActivePython](http://www.activestate.com/activepython)

---

### Installer Anaconda (ou Miniconda)

...

TODO: télécharger Anaconda et le mettre sur le serveur de fichier du Volab pour éviter d'attendre 1h que tt le monde télécharge les 600Mo du paquet le jour de l'atelier...

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

* [PyCharm](http://www.jetbrains.com/pycharm/)
* [Spyder](https://github.com/spyder-ide/spyder/)

https://en.wikipedia.org/wiki/Comparison_of_integrated_development_environments#Python

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

name: points-forts
class: center, middle, inverse

## Pourquoi utiliser Python ?

15 bonnes raisons d'utiliser Python

---

### Une syntaxe légère, efficace et agréable à lire 

* Une syntaxe discrète
    - code court et facile à lire

* Un système de délimitation des blocs de code basé sur l'indentation
    - singulière, originale mais surtout efficace!

.box[
Un langage facile à apprendre !
]

Exemple de code Python:

```python
l = [2, 3, 5]

for n in l:
    print(n)
```

---

L'équivalent en C++ (11):

```cpp
#include <vector>
#include <iostream>

int main() {

    std::vector<int> v {2, 3, 5};    // Ne marche pas pour C++98

    std::vector<int>::iterator it;
    for(it = v.begin() ; it != v.end() ; it++) {
       std::cout << *it << std::endl;
    }

    return 0;
}
```

???

Ne cherchez pas à comprendre le code...

Si vous le comprenez, tant mieux...

mais ça n'est pas le but.

---

L'équivalent en Java:

```java
import java.util.ArrayList;
import java.util.Arrays;

public class Test {

    public static void main(String[] args) {

        ArrayList<Integer> list = new ArrayList<Integer>(Arrays.asList(2, 3, 5));

        for(int val : list) {
            System.out.println(val);
        }
    }
}
```

---

### Un cycle de développement (très) court

* Un langage interprété
    - Pas d'étape de compilation
    - On peut tester du code à la volée (et avec IPython c'est encore mieux!)
    - Pas d'infrastructure complexe avec des makefile, etc.

* Les fichiers code source n'ont pas besoin d'être rangé d'une façon particulière
    - Contrairement au langage Java
    - Ex: ...

* Typage dynamique
    - L'utilisateur n'a pas besoin de déclarer explicitement le type de chaque
      variable
    - Pas besoin d'écrire un fichier "header" (.h) pour chaque module contrairement au C/C++
    - Gain de temps
    - Code plus compact

* Gestion de la mémoire automatique par ramasse-miettes
    - L'utilisateur n'a pas besoin d'allouer/désallouer manuellement la mémoire des variables dynamiques
    - Moins de risques de bugs
    - Gain de temps
    - Code plus compacte

???

En clair,

à niveau de compétence équivalent,

ça prend généralement beaucoup (beaucoup) moins de temps d'écrire une application en Python

qu'en C, C++, Java, etc.

---

### Des types de base très puissants et faciles à utiliser

* Les listes
* Les dictionnaires
* Les ensembles

Par exemple, une liste chainée (tableau dynamique):

<br />

.center[<img src="fig-nonfree/liste.jpg" width="500">]

???

Comparons Python, C++, C et Java sur un exemple simple: une liste chainée (tableau dynamique).

C'est une structure de données très simple et très souvent utilisée.

---

En C++ (11):

```cpp
#include <vector>
#include <iostream>

int main() {

    std::vector<int> v {2, 3, 5};    // Ne marche pas pour C++98

    v.push_back(7);

    std::vector<int>::iterator it;
    for(it = v.begin() ; it != v.end() ; it++) {
       std::cout << *it << std::endl;
    }

    return 0;
}
```

???


Ne cherchez pas à comprendre le code...

Si vous le comprenez, tant mieux...

mais ça n'est pas le but.

---

En Java:

```java
import java.util.ArrayList;
import java.util.Arrays;

public class Test {

    public static void main(String[] args) {

        ArrayList<Integer> list = new ArrayList<Integer>(Arrays.asList(2, 3, 5));

        list.add(7);

        for(int val : list) {
            System.out.println(val);
        }
    }
}
```

---

En C:

```c
#include <stdlib.h>
#include <stdio.h>

typedef struct list {
    int data;
    struct list * next;
} list;

list * make_elem(void) {
    list * pe;

    if(NULL == (pe = malloc(sizeof(list)))) {
        fprintf(stderr, "Erreur d'allocation memoire\n");
        exit(EXIT_FAILURE);
    }

    return pe;
}

...
```

---

En C (suite):

```c
...

int main() {

    list *pl, *pe1, *pe2, *pe3, *pe4;

    list * pe1 = make_elem();
    list * pe2 = make_elem();
    list * pe3 = make_elem();
    list * pe4 = make_elem();

    pe1->data = 2;
    pe2->data = 3;
    pe3->data = 5;
    pe4->data = 7;

    pl = pe1;

    pe1->next = pe2;
    pe2->next = pe3;
    pe3->next = pe4;
    pe4->next = NULL;

    ...
```

---

En C (fin):

```c
    ...

    list * c;

    for(c=pl ; c ; c=c->next) {
        printf("%d\n", c->data);
    }

    free(pe1);
    free(pe2);
    free(pe3);
    free(pe4);

    return 0;
}
```

Ouf...

---

En Python:

```python
l = [2, 3, 5]

l.append(7)

for n in l:
    print(n)
```

* Côté facilité d'utilisation Python est imbattable !

* La différence est toute aussi marquée (voir plus) pour les autres structures de
  données : dictionnaires, ensembles, etc.

* Quand on sait que ce type de structures sont très utilisées dans la plupart des
  programmes, vous imaginez facilement l'impact sur la concision et la lisibilité
  du code... 

???

Ce que je vous ai montré reste très basique...

---

On est bien content d'utiliser Python quand on a affaire à des structures imbriquées !

```python
l = [[2, 3], [5, 7]]

l.append([11, 13])

for n1 in l:
    for n2 in n1:
        print(n2)
```

En C++ et en Java le code équivalant ne tiendrait tout juste sur ce slide...

???

On est bien content d'utiliser Python quand on a affaire à des structures imbriquées !

---

### Un langage multi-plateforme

Permet d'écrire des logiciels portables:
* Pas besoin de créer une version spécifique de votre programme pour chaque systèmes d'exploitation

* Il marchera sans modification (à quelques rares exceptions près) sur:
    - Windows
    - MacOS
    - Linux
    - De [nombreuses autres plateformes](https://www.python.org/download/other/)

???

* Pas besoin de créer une version spécifique de votre programme pour chaque systèmes d'exploitation
* (i.e. "compiler" / adapter le code)
* (contrairement au C/C++)

---

### Une bibliothèque standard très riche ("Batteries included") 

mettre ici un schéma avec plusieurs cercles concentriques:
- le langage python: les ~classes/fonctions~ internes
- la bibliothèque standard: toutes les fonctionnalités ("modules") livrés avec le langage (ie. rien à installer) -> montrer la liste sur la page de doc de python.org
- les nombreux paquets externes (à installer au cas par cas)

---

### Une énorme base de développeurs, d'utilisateurs et de bibliothèque externes

* Très utilisé dans l'industrie et le monde académique
    - Universités
    - NASA
    - CERN
    - Google
    - Youtube
    - ...

.box[
* [brochure.getpython.info/learn-more](http://brochure.getpython.info/learn-more)
* [www.python.org/about/success/](http://www.python.org/about/success/)
]

* Une grosse base de développeurs aussi
    - Un gage de pérennité
    - Pas juste un effet de mode
    - Apprendre Python est rentable aussi sur le long terme

---

### Un langage très généraliste

Bibliothèque standard + bibliothèques externes.

On peut presque tout faire avec:
- interfaces graphiques
- calcul scientifique (algèbre, analyse, statistiques/probas, théorie des graphs (pygraph), visualisation, etc.)
- calcul formel avec Sympy (un peu comme Maple, Mathematica et Maxima)
    - calculer la dérivée ou l'intégrale d'une fonction, résoudre une équation, factorisation, calcul de limites, résolution de systèmes d'équations, ...
- informatique haute performance / calcul massivement parallèle
- chimie, [biologie](http://biopython.org), astronomie, [psychologie](http://www.psychopy.org), [finance](http://quantlib.org), etc.
- optimisation, apprentissage automatique, traitement du signal, ...
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
- manipulation/édition de fichiers, documents, ... (PDF, HTML, XML, etc.)
- cartographie (http://matplotlib.org/basemap/, http://matplotlib.org/basemap/users/examples.html, https://jakevdp.github.io/blog/2015/08/14/out-of-core-dataframes-in-python/)
- ...

???

TODO: https://www.python.org/about/apps/

TODO: http://sametmax.com/tres-grand-listing-des-libs-tierce-partie-les-plus-utiles-en-python/

TODO: faire apparaître les items un par un et mettre une image dans la colonne
de gauche pour chaque item.

---

### Ipython

Une console interactive très puissante, conviviale et utile:
* conviviale: autocomplétion, navigation dans l'historique, etc.
* explorer des modules
* vérifier la signature d'une fonction, le type d'un objet, etc.
* afficher le code source d'une fonction ou d'un module
* retrouver l'emplacement d'un module
* tester des bouts de code
* consulter la documentation intégrée
* lister les objets accessibles dans l'espace de nom courant, rechercher un objet à partir d'un motif
* rechercher une fonction/une méthode
* vérifier leur occupation en mémoire des objets instanciés
* profiler une fonction (mesurer son temps d'exécution)
* facilite l'utilisation du debugger interactif
* introspection, reflexivité, etc.
* parfaite intégration à matplotlib pour tracer des courbes directement depuis le terminal (comme gnuplot, etc.)
* ...

Je ne connais aucun langage qui propose une console aussi utile et puissante.

Ça permet de raccourcir considérablement le cycle de développement d'un programme.

En C/C++ ou en Java:
* il faut se débrouiller avec une documentation statique (Doxygen ou Javadoc) généralement incomplète (quand elle existe) et difficile à comprendre
* si on veut tester une fonction ou une classe, il faut:
    - créer un fichier source dans le bon répertoire
    - écrire le code que l'on veut tester dedans avec toutes les déclarations nécessaires : includes, main, etc.
    - sauvegarder le fichier
    - le compiler
    - l'exécuter
    - regarder le résultat
    - retourner en 2 pour ajuster le code suivant le résultat (si nécessaire)...

???

TODO: un tuto très intéressant: http://eric-pommereau.developpez.com/tutoriels/introduction-ipython/

TODO: http://sametmax.com/quelques-bonnes-raisons-de-plus-dutiliser-ipython/

Si vous n'avez pas compris ce que j'ai dit, retenez seulement qu'Ipython c'est
super et qu'à ma connaissance aucun autre langage ne propose une console aussi
conviviale et puissante.

---

### Jupyter

notebooks: pour faire des tutoriels interactifs sur le web.

Très utile pour enseigner le langage ou une de ses bibliothèques, faire des démonstrations sur le web, etc.

Exemple: ...

???

TO READ: http://blog.ouseful.info/2014/12/12/seven-ways-of-running-ipython-notebooks/

http://nbviewer.ipython.org/
https://github.com/ipython/ipython/wiki/A-gallery-of-interesting-IPython-Notebooks
http://sametmax.com/profiter-du-notebook-de-ipython/
http://www.randalolson.com/2012/05/12/a-short-demo-on-how-to-use-ipython-notebook-as-a-research-notebook/
https://azure.microsoft.com/fr-fr/documentation/articles/virtual-machines-python-ipython-notebook/
http://jupyter.readthedocs.org/en/latest/subprojects.html

---

### Numpy, Matplotlib et SciPy

À elles seules, ces trois bibliothèques étroitement liées et parfaitement
intégrée à l'écosystème Python (IPython, Jupyter, etc.) peuvent suffire à
convaincre beaucoup d'utilisateurs tant elles sont utiles et puissantes...

Elles sont sans doute la principale raison du succès de Python chez les
industriels dans la communauté scientifique.

Python + Numpy/Matplotlib/Scipy = la puissance et la convivialité d'un Matlab
combinée à la richesse d'un vrai langage généraliste... qui plus est libre et
gratuit!

Je ne connais aucun autre langage généraliste qui propose des bibliothèques
aussi riche et bien intégrées pour le calcul scientifique.

Cet argument ne concerne pas seulement les scientifiques et les ingénieurs, tracer des graphs, etc. -> fablabs, finance, etc. (MsExcel)

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

### Un langage indépendant

Python n'appartient à aucune entreprise

Il est géré par la [Python Software Foundation (PSF)](https://www.python.org/psf/), une association à but non lucratif

N'importe qui peut proposer des améliorations pour les futures version du langage via le mécanisme de [PEPs](https://www.python.org/dev/peps/)

???

L'évolution du langage n'est par dirigée par des intérêts privés (je pense par exemple à C#...)

PEPs = Python Enhancement Proposals


> L'évolution du langage est dirigée par Guido van Rossum, BDFL ("Benevolent Dictator For Live") Dictateur bienveillant/bénévole à vie

---

### Extending/embeding with C/C++/C#/Java/...

Un développeur expérimenté peut facilement porter une bibliothèque C/C++/C#/Java/... en Python...

Également utile pour les programmes exigents en terme de performances: les sections de code critiques peuvent être écrite en C/C++
=> C + Python = on peut tout faire!
=> une énorme base de code supplémentaire accessible depuis Python

Embarquer python dans un logiciel écrit en C/C++/Java/... pour pouvoir executer du code Python dans ce logiciel (utile pour l'écriture de greffons).

---

### Une documentation intégrée

* Le système de documentation intégré est particulièrement efficace
    - Les *docstrings*
        - Le code et la documentation sont étroitement imbriqués
        - Pour documenter les modules, les classes, les fonctions, etc.
    - Accessible partout avec la fonction help()
    - Mise en forme avancée avec Sphinx
        - HTML
        - PDF
        - Rédaction scientifique en LaTeX
        - Readthedocs.org
    - Les Doctests

???

Montrer un exemple de la fonction help() avec numpy par exemple
-> très pratique avec IPython

Expliquer l'importance de regrouper code et documentation au même endroit

Montrer un exemple de code documenté et le résultat sur sphinx

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

name: points-forts
class: center, middle, inverse

### Et pour finir, un avant gout du potentiel de Python

... avec des exemples concrets !

---

Télécharger mes *snippets* dans le répertoire "python" du projet [https://github.com/jeremiedecock/snippets](https://github.com/jeremiedecock/snippets)

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
