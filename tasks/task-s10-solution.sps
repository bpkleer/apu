* Encoding: UTF-8.
* ###~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~###
#                                                                                                                                                   #
# Course:      Analyse politischer Unterstützung                                                                                # 
# Instructor:  Benedikt Philipp Kleer                                                                                                  #
# Location:    Justus-Liebig-University Giessen (Germany)                                                                  #
# Date:        Winter Term 2021/22                                                                                                    #
#                                                                                                                                                   #
###~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~###.

* Bivariates Modell.
REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA CHANGE
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT grade3
  /METHOD=ENTER grade.


* Multivariates Modell.
REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA CHANGE
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT grade3
  /METHOD=ENTER grade term.

*  Multivariates Modell mit dichotomer kategorieller Variable.
RECODE tutorial (2=0) (1=1) INTO tut_no.
RECODE tutorial (2=1) (1=0) INTO tut_yes.
EXECUTE.
REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA CHANGE
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT grade3
  /METHOD=ENTER grade term tut_yes.

* Multivariates Modell mit polytome kategorieller Variable.
RECODE learner (1=0) (2=0) (3=1) INTO learn_fast.
RECODE learner (1=0) (2=1) (3=0) INTO learn_med.
RECODE learner (1=1) (2=0) (3=0) INTO learn_slow.
EXECUTE.
REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA CHANGE
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT grade3
  /METHOD=ENTER grade term tut_yes learn_fast learn_slow.

