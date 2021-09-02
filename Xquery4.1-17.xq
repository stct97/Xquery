declare function local:obtain_escudo($nombre_equipo){
  for $x in doc("futbol.xml")//evento
  where $x/equipolocal/text() = $nombre_equipo or $x/equipovisitante/text() = $nombre_equipo
  return
  if($x/equipolocal/text() = $nombre_equipo) then $x/escudoLocal/text() else($x/escudoVisitante/text())
};

for $equipo in //clasificacion/team, $partido in //eventos/evento
where $partido/equipolocal/text() = $equipo/name or $partido/equipovisitante/text() = $equipo/name
return
  <equipo>
    <nombre> {$equipo/name/text()} </nombre>
    <escudo>  {local:obtain_escudo($equipo/name/text())}
    </escudo>
  </equipo>