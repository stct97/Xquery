<clasificacion>
{
for $x in //team
return element team{ attribute rank {$x/rank}, 
element name{$x/name/text()}, 
element points{concat("Puntos: ",$x/points," Total puntos: ",sum(//points/text()))}, 
element played{$x/played/text()}, 
element goles{concat($x/goals_scored/text()," - ", $x/goals_conceded/text()),
element diferencia_de_goles{$x/goals_scored - $x/goals_conceded}}, 
element descenso{if ($x/rank/text() > 18) then "SI"else "NO"}}
}
</clasificacion>