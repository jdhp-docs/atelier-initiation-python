# TODO

## Skeleton

* [ ] Put CSS in a dedicated file
* [ ] Split content/main.md
* [ ] Make the French branch
* [ ] Write the PDF target in the Makefile (use https://github.com/astefanutti/decktape ?)
* [ ] Check if it works well offline
* [ ] Use gitsubmodule to get the latest version of RemarkJS
* [x] Use gitsubmodule for figs/logos
* [x] Make a snippets document in a dedicated git repository
* [ ] Add a hint about navigation usage on the title page
* [ ] Improve SEO ?

## Document

- [ ] Dernière partie "Quelques exemples de scripts bien utiles": une lib = un snippet qu'il vont recopier et exécuter eux-mêmes
    - [ ] Tracer une courbe avec matplotlib
    - [ ] Écrire une application graphique avec Tkinter
    - [ ] Capturer une vidéo avec opencv
    - [ ] Modifier une image avec Pillow
    - ...

- [ ] Ajouter un petit logo sur la première page qui fait apparaitre une note
  si on clic dessus: expliquer que cette page web n'est pas statique, que c'est
  une présentation et qu'il faut utiliser les touches flèchées du clavier pour
  faire défiler les slides...
- [ ] Use reveal.js (http://lab.hakim.se/reveal-js/#/,
  https://github.com/hakimel/reveal.js) instead of remark.js
    - reveal.js have all the features of remark.js (speaker notes, ...) and
      much more (videos, generate PDF, ...)
- [ ] Or even better: rewrite the slides with IPython notebook and generate
  reveal.js slides (+ custom CSS) as explained here:
  http://www.damian.oquanta.info/posts/make-your-slides-with-ipython.html
