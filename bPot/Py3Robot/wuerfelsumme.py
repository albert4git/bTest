alle_wuerfe = [ (x,y) for x in range(1,7) for y in range(1,7)]

wuerfe_mit_summe_7 =  [ x for x in alle_wuerfe if sum(x) == 7 ]

wahrscheinlichkeit_7 = len(wuerfe_mit_summe_7) / len(alle_wuerfe)

print("Wahrscheinlichkeit für Summe 7: " + str(wahrscheinlichkeit_7))
