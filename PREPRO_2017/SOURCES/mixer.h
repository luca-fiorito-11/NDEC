C=======================================================================
C
C     MIXER COMMON
C
C=======================================================================
C
C     PARAMETERS
C
C-----------------------------------------------------------------------
C-----2017/3/7 INCREASED PAGE SIZE TO 1,200,000 FROM 240,000
      PARAMETER (MAXPOINT  = 1200000)
      PARAMETER (MAXPART   = 10)
      PARAMETER (MAXPARTP1 = 11)   ! MAXPART+1
C-----------------------------------------------------------------------
C
C     STORAGE
C
C-----------------------------------------------------------------------
C-----PARAMETERS FOR EACH PART OF COMPOSITE
      COMMON/GETEM/AWRE(MAXPART),DENSE(MAXPART),TEMPK(MAXPART),
     1 QVALUE(MAXPART),ATOM10(MAXPART),FRACTA(MAXPART),FRACTG(MAXPART),
     2 IZAGET(MAXPART),MATGET(MAXPART),
     3 MTGET(MAXPART),IVERSE(MAXPART),NMAT
      COMMON/INPAGE/IXYLOW(MAXPARTP1),IXYHI(MAXPARTP1),ISCR(MAXPARTP1),
     1 NPAGE,NPAGEM
      COMMON/REALLY/NPTAB(MAXPARTP1),IPTAB(MAXPARTP1)
      COMMON/INDICE/IUSE(MAXPART),IUSEN
C-----NEXT POINTS FROM EACH TAPE
      COMMON/COMBOCOM/XA(MAXPART),YA(MAXPART),YB(MAXPART)
C-----INPUT INTERPOLATION LAW - Now fixef dimension
      COMMON/INTRPCOM/NBTIN(100),INTIN(100)
C-----INPUT AND OUTPUT TABLE OF POINTS
      COMMON XTAB(MAXPOINT,MAXPARTP1),YTAB(MAXPOINT,MAXPARTP1)