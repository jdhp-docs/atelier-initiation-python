# Feedbacks

## Présentation du dimanche 20 décembre au VoLaB (durée: 4h)

Étaient présent 8 membres du VoLaB:
* Joel
* Pierre
* PEC
* Gilles
* Daniel
* Gregory
* Francis
* Pedro

Problèmes rencontrés:
* Conflit entre Anaconda et Python préinstallé : sur plusieurs ordinateurs,
  Anaconda n'a pas pris le dessus dans le PATH Windows
    - vérifier les installations et le PATH avant
* Beaucoup ont mal recopié les snippet Tkinter ("test" au lieu de "text")
* Anaconda est lourd (~400Mo) et donc long à copier/installer
    - prévoir plusieurs clés ou utiliser Miniconda la prochaine fois
* La disposition des tables au VoLaB empêche d'aller voir sur les écrans de
  l'auditoire, c'est très problématique et empêche de corriger les erreurs
    - limiter l'auditoire à 4 personnes max pour les ateliers faits au VoLaB ?
    - demander une autre salle à la mairie, à la communauté d'agglo, etc.
        - il faut: un écran de rétro (ou un mur blanc bien placé), rétro,
          tables, chaises, multiprises, accès internet
        - Ex: salles de la mairie, du collège/lycée, université Cergy, visages
          du monde, faclab, carrefour numérique, ...
* Les notes de l'écran "orateur" de remark.js sont trop petites (inutilisable
  en pratique...)
    - faire une contrib pour corriger ce "bug" (config avec mode "notes only"
      en mode "presenter")
    - ou utiliser autre chose... (reveal.js ?)
* On a fait seulement 1/4 des slides...
* Les slides ont été terminés dans l'urgence et ne sont pas aussi "graphique"
  que prévu...

Retours négatifs:
* "1h pour présenter la 1ere partie, c'est beaucoup trop long"
* "la partie '15 raisons pour adopter Python' n'est pas assez 'sexy'" (surtout
  la fin ?)
* Pas assez de pratique, pas assez interactif

Questions intéressantes à développer:
* Y a-t-il des logiciels connus écrit en Python ?
    - faire une liste
    - ajouter la remarque suivante: Python se prête mal aux logiciels
      "propriétaires" installés sur le poste des clients car le code source
      d'un programme écrit en Python est difficilement (voir pas du tout)
      dissimulable...

Remarques perso:
* Parler des possibilités de Python dans le domaine de l'embarqué:
    - Python tourne bien sur RaspberryPi
    - mais pas sur Arduino et autre MCUs
    - en revanche, on peut l'utiliser sur PC pour faire du traitement de
      données acquises par des MCUs et transmises via port série/usb/etc. (pour
      faire de la visualisation de données, du calcul, etc.)
    - ou l'utiliser en post-traitement sur un PC avec des données acquises par
      des MCUs
    - il existe aussi des implémentations matériel de l'interprète Python (cf.
      http://micropython.org)
* Faire plusieurs séances plus courtes (1h) mais plus régulières pour que ce
  soit moins contraignant côté temps (pas facile pour tout le monde de
  mobiliser une demi journée)


15 raisons:
* ok:
    - 1. syntaxe légère
    - 148: le fait que ce soit universel : on peut tout faire chimie, psycho, etc.
    - on peut vite 
* non: tout le reste
    - sl 150: IPython NON, à supprimer! ça concerne éventuellement que ceux qui connaissent déjà bien Python
    - sl 152: Jupyter NON, à supprimer! ça concerne éventuellement que ceux qui connaissent déjà bien Python

* ls 135, le début est redondant, le langage interprété, on a déjà donné des clés
* sl 137, insister + sur le fait qu'on soit pas limité à 1 seul type sur la liste

* sl 145, déjà évoqué au début, redondant

* sl 146: c'est intéressant mais c'est que du texte
    * montrer l'url et le contenu, ok mais ça reste abstrait
    * mettre snippets (pas trop pointus)
    * montrer des exemples concrets: mettre des images, faire des snippets, 
    * chiffre : bof...

* sl 147: on l'a déjà dit, le dire au début à l'oral suffit, pas la peine de le rappeler par écrit
    - montrer avec une recherche google qu'on a facilement réponse à toutes questions même en français

* sl 148
    * une illustration pour chaque point
    ou
    * une illustration globale: python au centre, des bulles avec des illustrations autour et dans les suivants, quelques ex dvpés ac des snippets

* distiller les 15 points au fur et à mesure et faire un rappel/résumé beaucoup plus rapide (1 slide) à la fin
    - il y a une partie des 15 points qui doivent quand même au début 

* sl 153: le faire comme ça a été improvisé au moment de présenter l'interprète interactif
    - contenu légitime
    - le discours == l'écrit -> non!

* sl 154: ok mais il faudrait que ça soit une section à par entière et faire un
  exemple où on montre/fait utiliser pip pour installer une BBL; dans l'atelier
  faire en sorte qu'on ait besoin d'utiliser pip

* sl 155: ça à déjà été dit, et ça ne vaut même pas le coup d'en parler, les
  auditeurs s'en foutent pour la plupart et n'ont pas vraiment besoin de savoir
  ça (le dire en 1 phrase est plus que suffisant)

* sl 156: bof..., le dire en une phrase suffit, le coup des peps est intéressant mais si je ne le présente pas, ça ne gène pas

* sl 157: info intéressante mais pas très adapté au public, ils ne savent pas programmer, il faut le dire en 2 phrases au max

* sl 159: en parler au moment où on manipule, se contenter que la première moitié du haut, sphinx etc. ça n'a pas sa place ici 
    - montrer le help(), et la version html faite avec sphinx mais sans parler de sphinx

* sl 160: python est lent sous certaines conditions, il y a des possibilités via des outils externes pour optimiser le code

* sl 162 et 163: bof... pas convaincants

Joel:
* arg: ...
