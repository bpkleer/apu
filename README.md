# Handhabung des Repositories
Folien und Semesterplan für Standard-Kurs "Analyse politischer Unterstützung". 

Im Ordner **Folien** befinden sich die Foliensätze ohne Code. Hierfür kann eine einfache LaTeX Distribution wie *Texmaker* genutzt werden. Die finalen Dateien sind die ```.tex```-Dateien, die dazugehörigen Quellen sind in den ```.bib```-Dateien. 

Im Ordner **Folien-Code** befinden sich die Foliensätze, auf denen auch Code eingefügt sind. Diese müssen mit RStudio geöffnet werden (beachte die Hinweise bei *Einstellungen für .rnw-Dateien*). Die finalen Dateien sind die ```.rnw```-Dateien, die dazugehörigen Quellen sind in den ```.bib```-Dateien. 

Im Ordner **Syllabus** befindet sich der Semesterplan, im Ordner **texmf-file** die Voreinstellungsdatei für die LaTeX-Kompilierung (*beamer-german.sty*). Wie diese installiert werden muss, wird unter **LaTeX Installation** erklärt.

# LaTeX Installation
Um die Dateien korrekt kompilieren zu können, muss *LaTeX* installiert werden. Dafür benötigt man einerseits einen LaTeX-Kompilierer (empfohlen wird Texmaker) und einen Paketmanager (Windows: MikTex, MacOS: TexLive).

Folgende Empfehlungen:

- [MikTex](https://miktex.org/download) (Paketmanager Windows)
- [MacTex (TexLive)](http://www.tug.org/mactex/) (Paketmanager MacOS)
- [Texmaker](https://www.xm1math.net/texmaker/download.html) (LaTeX-Kompilierer)


## Einstellungen in texmaker
Sowohl auf Windows als auch MacOS müssen in Texmaker noch ein paar Einstellungen übernommen werden. 

Unter **Optionen** -> **Texmaker konfigurieren** sollte unter **Befehle** -> **Bib(la)tex** folgendes hinterlegt werden:

*"biber" %.bcf*

Dies ist für die Quellenanzeige wichtig, da hier der Kompilierer ```biber``` gewählt wird.

## Wohin mit *beamer-german.sty*
Nachdem beides installiert wurde und Texmaker angepasst wurde, muss nun noch die Datei ```beamer-german.sty``` aus dem Ordner **texmf-file** lokal gespeichert werden. Andernfalls sind die Voreinstellungen nicht verfügbar, und die Dateien können nicht kompiliert werden.

### Windows
Auf **Windows**-Rechnern öffnet man in *MikTex* die Einstellungen. Dort kann man unter **Roots**/**Verzeichnisse** ein beliebiges Verzeichnis hinzufügen. Man kann also die Datei aus dem Ordner **texmf-file** auf einem beliebigen Platz am eigenen Computer speichern. Aber man muss dabei auf die Struktur des Verzeichnisses achten. Die Struktur muss wie folgt angelegt werden. 

```C:/Weg zu meinem Ordner/texmf/tex/xelatex/beamer-german.sty```

Nehmen wir also an, der Benutzer ```mustermensch``` möchte die lokale Datei in seinem lokalen LaTeX-Ordner speichern, in dem er auch alle anderen LaTeX-Dateien speichert. Der lokale Pfad zu seinem Ordner ist folgender:

```C:/Benutzer/mustermensch/Dokumente/Latex-Dateien/``` 

Hier legt er jetzt zuerst einen Ordner ```texmf``` an. So entsteht das Verzeichnis:

```C:/Benutzer/mustermensch/Dokumente/Latex-Dateien/texmf``` 

Hier wiederum legt er das Verzeichnis ```tex``` an:

```C:/Benutzer/mustermensch/Dokumente/Latex-Dateien/texmf/tex``` 

Dann werden zwei Verzeichnisse angelegt: ```xelatex``` und ```latex```. Dies liegt daran, dass es verschiedene Kompilierer gibt, und so die Vorlage mit beiden nutzbar ist:

```C:/Benutzer/mustermensch/Dokumente/Latex-Dateien/texmf/tex/xelatex``` 

```C:/Benutzer/mustermensch/Dokumente/Latex-Dateien/texmf/tex/latex``` 

Jetzt legt er die Datei aus dem git-Ordner **texmf-file** in beiden Ordnern ab. So entsteht der finale Weg zur Datei.

```C:/Benutzer/mustermensch/Dokumente/Latex-Dateien/texmf/tex/xelatex/beamer-german.sty``` 

```C:/Benutzer/mustermensch/Dokumente/Latex-Dateien/texmf/tex/latex/beamer-german.sty``` 

**Wichtig:** Wird die Datei im git-Ordner geändert, muss diese auch lokal überspeichert werden. Ansonsten kann es zu Kompilierungsfehlern schauen. Daher beim *Pull* des Repositorys darauf achten, ob die Datei geändert wurde.

## MacOS
Auf MacOS ist das ganze etwas leichter, da es einfach in den lokalen *texmf-Ordner* gespeichert wird. Auf **MacOS**-Rechnern findet sich dies in: 

```/usr/local/texlive/texmf-local/tex```

Dort muss es mindestens im Unterordner XeLaTeX hinterlegt werden (besser auch im Ordner LaTeX). Bei beiden geschieht dies im Unterordner *local*. 

Bei manchen Rechnern ist dieser Ordner versteckt. Um die versteckten Ordner sichtbar zu machen, einfach im Finder die Tastenkombination ```Cmd``` + ```Shift``` + ```.``` drücken. Dann werden die versteckten Ordner sichtbar. Wenn man die Ordner wieder verstecken möchte, einfach die Tastenkombination wiederholen. 

# Schriftart Installation  
**Metropolis** (Beamer-Theme) setzt die Schriftart *FiraSans* und *FiraMono* voraus. Diese ist [hier](https://fonts.google.com/specimen/Fira+Sans) und [hier](https://fonts.google.com/specimen/Fira+Mono) zum Download verfügbar. Einfach in den Rechner-Schriftarten installieren.

Bei **Windows** einfach Rechtsklick auf die Datei und im Menü **Installieren** auswählen. Wichtig, man benötigt Administratorenrechte.

Bei **Mac** einfach Doppelklick auf die Schriftart-Datei. Es öffnet sich die Vorschau und dann kann man **Installieren** auswählen. 

# Einstellungen RStudio (für ```.rnw```-Dateien)
Bevor zum ersten Mal eine ```.rnw```-Datei kompiliert wird, muss die Datei aus **texmf** wie oben beschrieben abgespeichert werden und **MikTex** bzw. **MacTex** eingestellt sein. Ansonsten findet **tinyTex** die Vorlage nicht. 

In RStudio unter **Global Options** muss bei **RSweave** folgendes eingestellt sein:

- Weave rnw-files using: **knitr**

- Typeset LaTeX into PDF using: **XeLaTeX**

- Kreuz bei *Use tinytex when compiling .tex files* setzen.

Dann eine ```.rnw```-Datei öffnen und in der Leiste wird sichtbar, dass **tinytex** installiert werden muss. Dies klicken. Anschließend R Studio neustarten. 

**Wichtig**: Die Datei **beamer-german.sty** aus dem Folder *texmf-file* muss im lokalen texmf-Ordner gespeichert werden. Andernfalls erkennt das Programm bei der Kompilierung die Standardeinstellungen nicht. 

## Vorlage-Datei
In der Datei **vorlage.rnw** sind die üblichen Anwendungsfälle kurz beschrieben. 

Für *.tex*-Dateien gibt es die Vorlagedatei **vorlage-texmaker.tex**. 


