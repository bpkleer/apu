# Handhabung des Repositories
Folien und Semesterplan für Standard-Kurs "Analyse politischer Unterstützung".

## Slides
Die einzelnen Slides sind als *.rnw* oder als *.tex*-Dateien angelegt. Wenn auf den Folien kein Code ist, ist es eine *.tex*-Datei, mit Code eine *.rnw*-Datei (gleichzeitig knitr + LaTeX).

Für die Nutzung sind LaTeX Grundkenntnisse von Nöten. 

## Einstellungen für .rnw-Dateien
In RStudio unter **Global Options** muss bei RSweave folgendes eingestellt sein:

- Weave rnw-files using: **knitr**

- Typeset LaTeX into PDF using: **XeLaTeX**

- ```math $\checkmark$``` bei *Use tinytex when compiling .tex files* setzen.

Wenn *tinytex* noch nicht installiert ist, einfach über die *Console* in RStudio installieren. 

**Wichtig**: Die Datei **beamer-german.sty** aus dem Folder *texmf-file* muss im lokalen texmf-Ordner gespeichert werden. Andernfalls erkennt das Programm bei der Kompilierung die Standardeinstellungen nicht. 

## Vorlage-Datei
In der Datei **vorlage.rnw** sind die üblichen Anwendungsfälle kurz beschrieben. Alles was dort drin ist (bis auf die Coding-Einstellungen) gelten analog für die *.tex*-Dateien. 

