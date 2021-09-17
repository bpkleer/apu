* Encoding: UTF-8.
* ###~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~###
#                                                                                                                                                   #
# Course:      Analyse politischer Unterstützung                                                                                # 
# Instructor:  Benedikt Philipp Kleer                                                                                                  #
# Location:    Justus-Liebig-University Giessen (Germany)                                                                  #
# Date:        Winter Term 2021/22                                                                                                    #
#                                                                                                                                                   #
###~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~###.


* Korrelation 1: happy & ppltrst.
CORRELATIONS
  /VARIABLES=happy ppltrst
  /PRINT=TWOTAIL NOSIG FULL
  /MISSING=PAIRWISE.

* Korrelation 2: stfdem & stfeco.
CORRELATIONS
  /VARIABLES=stfdem stfeco
  /PRINT=TWOTAIL NOSIG FULL
  /MISSING=PAIRWISE.

* Korrelation 3: trstprl & trstprt.
CORRELATIONS
  /VARIABLES=trstprl trstprt
  /PRINT=TWOTAIL NOSIG FULL
  /MISSING=PAIRWISE.


*Mittelwertvergleich: gndr auf trstprl.
T-TEST GROUPS=gndr(1 2)
  /MISSING=ANALYSIS
  /VARIABLES=trstprl
  /ES DISPLAY(TRUE)
  /CRITERIA=CI(.95).
