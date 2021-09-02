<html>
<head></head>
<body>
<table border = "1">
{
  for $x in //evento
  return 
    <tr>
      <td>{$x/equipolocal/text()}</td>
      <td>{$x/resultadolocal/text()}-{$x/resultadovisitante/text()}</td>
      <td>{$x/equipovisitante/text()}</td>
      <td>{if($x/resultadolocal/text()>$x/resultadovisitante/text()) then "x" else ""}</td>
      <td>{if($x/resultadolocal/text()=$x/resultadovisitante/text()) then "x" else ""}</td>
      <td>{if($x/resultadolocal/text()<$x/resultadovisitante/text()) then "x" else ""}</td>
    </tr>
}
</table>
</body>
</html>