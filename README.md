# Handhabung des Repositories
Folien und Semesterplan für Standard-Kurs "Analyse politischer Unterstützung".

## Slides
Die einzelnen Slides sind als *.rnw* oder als *.tex*-Dateien angelegt. Wenn auf den Folien kein Code ist, ist es eine *.tex*-Datei, mit Code eine *.rnw*-Datei (gleichzeitig knitr + LaTeX).

Für die Nutzung sind LaTeX Grundkenntnisse von Nöten. 

## Einstellungen für .rnw-Dateien
In RStudio unter **Global Options** muss bei RSweave folgendes eingestellt sein:

- Weave rnw-files using: **knitr**

- Typeset LaTeX into PDF using: **XeLaTeX**

- Kreuz bei *Use tinytex when compiling .tex files* setzen.

Wenn *tinytex* noch nicht installiert ist, einfach über die *Console* in RStudio installieren. 

**Wichtig**: Die Datei **beamer-german.sty** aus dem Folder *texmf-file* muss im lokalen texmf-Ordner gespeichert werden. Andernfalls erkennt das Programm bei der Kompilierung die Standardeinstellungen nicht. 

## Vorlage-Datei
In der Datei **vorlage.rnw** sind die üblichen Anwendungsfälle kurz beschrieben. Alles was dort drin ist (bis auf die Coding-Einstellungen) gelten analog für die *.tex*-Dateien. Für *.tex*-Dateien gibt es die Vorlagedatei **vorlage-texmaker.tex**. 

## LaTeX Installation
Um die Dateien korrekt kompilieren zu können, muss LaTeX installiert werden. Dafür benötigt man einerseits einen LaTeX-Kompilierer (empfohlen Texmaker) und einen Paketmanager (Windows: MikTex, MacOS: TexLive) installiert werden.

- [MikTex](https://miktex.org/download) (Paketmanager Windows)
- [MacTex (TexLive)](http://www.tug.org/mactex/) (Paketmanager MacOS)
- [Texmaker](https://www.xm1math.net/texmaker/download.html) (LaTex-Kompilierer)

Wichtig, die im Ordner **texmf** hinterlegte Datei, muss im entsprechenden Ordner nach der Installation hinterlegt werden, damit das Paket *beamer-german* genutzt werden kann. 

Auf **Windows**-Rechnern öffnet man in MikTex die Einstellungen. Dort kann man unter **Roots**/**Verzeichnisse** ein beliebiges Verzeichnis hinzufügen. Man kann also die texmf-file auf einem beliebigen Platz am eigenen Computer speichern. Empfohlen wird aber in diesem Ordner für die Datei die kompatible Struktur anzulegen: C:/Weg zu meinem Ordner/texmf/tex/xelatex/beamer-german.sty

Auf **MacOS**-Rechnern findet sich dies in: /usr/local/texlive/texmf-local/tex
Dort muss es mindestens im Unterordner XeLaTeX hinterlegt werden (besser auch im Ordner LaTex). Bei beiden geschieht dies im Unterordner *local*. 

## Einstellungen Texmaker
Sowohl auf Windows als auch MacOS müssen in Texmaker noch ein paar Einstellungen übernommen werden. 

Unter **Optionen** -> **Texmaker konfigurieren** sollte unter **Befehle** -> **Bib(la)tex** folgendes hinterlegt werden:

*"biber" %.bcf*


## Schriftart Installation  
**Metropolis** setzt die Schriftart *FiraSans* voraus. Diese ist [hier](https://fonts.google.com/specimen/Fira+Sans) zum Download verfügbar.
