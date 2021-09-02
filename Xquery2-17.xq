declare variable $imagenGanar := <img src="https://png.pngtree.com/png-clipart/20190603/original/pngtree-creative-three-dimensional-metal-win-png-image_387725.jpg" width="100px" height="100px"/>;
  declare variable $imagenPerder:= <img src="https://png.pngtree.com/png-clipart/20200701/original/pngtree-wrong-number-png-image_5418896.jpg" width="100px" height="100px"/>;
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
      <td>{if($x/resultadolocal/text()>$x/resultadovisitante/text()) then $imagenGanar else $imagenPerder}</td>
    </tr>
}
</table>
</body>
</html>