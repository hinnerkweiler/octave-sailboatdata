lwl=8.2        # Länge Wasserlinie
segelfl=60     # Segelfläche
verdr=4850     # Vergrängung in kg

#Berechnet einen Graphen zur Bootsperformance

l=0.1:0.1:lwl+0.5

vrumpf=2.43*sqrt(lwl)
v=2.43*sqrt(l)

tragzahl=sqrt(segelfl)/nthroot(verdr/1000,3)


plot (v,l)
ylabel("LWL (m)")
xlabel("Vmax (kn)")
axis([0,vrumpf+1],[0,lwl+0.5]);
title("Rumpfgeschwindigkeit")
text (0,tragzahl,"<== Segeltragzahl")
line([vrumpf 0],[lwl,lwl])
line([vrumpf vrumpf],[0,lwl])

print -djpg Rumpfgeschwindigkeit.jpg
print -color -deps Rumpfgeschwindigkeit.eps
