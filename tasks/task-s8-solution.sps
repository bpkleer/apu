* Encoding: UTF-8.
* ###~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~###
#                                                                                                                                                   #
# Course:      Analyse politischer Unterstützung                                                                                # 
# Instructor:  Benedikt Philipp Kleer                                                                                                  #
# Location:    Justus-Liebig-University Giessen (Germany)                                                                  #
# Date:        Winter Term 2021/22                                                                                                    #
#                                                                                                                                                   #
###~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~###.

* Task a.
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

* Task b.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=eduyrs MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: eduyrs=col(source(s), name("eduyrs"))
  GUIDE: axis(dim(1), label("eduyrs"))
  GUIDE: axis(dim(2), label("Häufigkeit"))
  GUIDE: text.title(label("Einfache Balken von eduyrs"))
  ELEMENT: interval(position(summary.count(bin.rect(eduyrs))), shape.interior(shape.square))
  ELEMENT: line(position(density.normal(eduyrs)))
END GPL.

*Task c.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=vote COUNT()[name="COUNT"] MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: vote=col(source(s), name("vote"), unit.category())
  DATA: COUNT=col(source(s), name("COUNT"))
  COORD: polar.theta(startAngle(0))
  GUIDE: axis(dim(1), null())
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("vote"))
  GUIDE: text.title(label("Kreisdiagramm Anzahl von vote"))
  SCALE: linear(dim(1), dataMinimum(), dataMaximum())
  ELEMENT: interval.stack(position(summary.percent(COUNT))), color.interior(vote))
END GPL.

*Task d.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=vote COUNT()[name="COUNT"] sgnptit MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: vote=col(source(s), name("vote"), unit.category())
  DATA: COUNT=col(source(s), name("COUNT"))
  DATA: sgnptit=col(source(s), name("sgnptit"), unit.category())
  COORD: rect(dim(1,2), cluster(3,0))
  GUIDE: axis(dim(3), label("vote"))
  GUIDE: axis(dim(2), label("Anzahl"))
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("sgnptit"))
  GUIDE: text.title(label("Gruppierte Balken Anzahl von vote Schritt: sgnptit"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: interval(position(sgnptit*COUNT*vote), color.interior(sgnptit), 
    shape.interior(shape.square))
END GPL.

*Task e.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=ppltrst stfgov region MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE
  /FITLINE TOTAL=NO SUBGROUP=NO.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: ppltrst=col(source(s), name("ppltrst"))
  DATA: stfgov=col(source(s), name("stfgov"))
  DATA: region=col(source(s), name("region"), unit.category())
  GUIDE: axis(dim(1), label("ppltrst"))
  GUIDE: axis(dim(2), label("stfgov"))
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("region"))
  GUIDE: text.title(label("Streudiagramm von stfgov Schritt: ppltrst Schritt: region"))
  SCALE: cat(aesthetic(aesthetic.color.interior), include("1", "2", "3", "4", "5", "6", "7", 
    "8", "9", "10", "11", "12"
, "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"
, "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40"
, "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54"
, "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68"
, "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82"
, "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96"
, "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109"
, "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121"
, "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133"
, "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145"
, "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157"
, "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169"
, "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181"
, "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193"
, "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205"
, "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217"
, "218", "219", "220", "221", "222", "223", "224", "225", "226", "227"))
  ELEMENT: point(position(ppltrst*stfgov), color.interior(region))
END GPL.
