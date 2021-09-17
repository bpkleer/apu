* Encoding: UTF-8.
* ###~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~###
#                                                                                                                                                   #
# Course:      Analyse politischer Unterstützung                                                                                # 
# Instructor:  Benedikt Philipp Kleer                                                                                                  #
# Location:    Justus-Liebig-University Giessen (Germany)                                                                  #
# Date:        Winter Term 2021/22                                                                                                    #
#                                                                                                                                                   #
###~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~###.

* Beispieldatensatz: ESS (Österreich).

DESCRIPTIVES VARIABLES=stfdem
/STATISTICS=MEAN STDDEV VARIANCE MIN MAX.

*Einfache Grafik.
* Diagrammerstellung.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=stfdem MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: stfdem=col(source(s), name("stfdem"))
  GUIDE: axis(dim(1), label("stfdem"))
  GUIDE: axis(dim(2), label("Häufigkeit"))
  GUIDE: text.title(label("Einfache Balken von stfdem"))
  ELEMENT: interval(position(summary.count(bin.rect(stfdem))), shape.interior(shape.square))
END GPL.
