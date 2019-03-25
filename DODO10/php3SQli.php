<?php
/**
 * Short description for php9sel.php
 *
 * @package php9sel
 * @author red <red@red-Swift-SF113-31>
 * @version 0.1
 * @copyright (C) 2019 red <red@red-Swift-SF113-31>
 * @license MIT
 */


  $db = new PDO("sqlite:dodo10.db"); 
  $db -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

  try {

    $res = $db -> query('select * from Cars order by col_2');


    print '<table>';
    foreach ($res as $row) {

      print '<tr><td>' . $row['col_1'] . '</td><td>' . $row['col_2'] . '</td></tr>';

    }
    print '</table>';

  }
  catch(PDOException $e) {

    print ("exception " . $e->getMessage());
  
  }

  print "<p><a href='05_select_values_with_param.html'>Select</a> valules with parameter";

?>
