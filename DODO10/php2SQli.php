<?php
/**
 * Short description for php8sel.php
 *
 * @package php8sel
 * @author red <red@red-Swift-SF113-31>
 * @version 0.1
 * @copyright (C) 2019 red <red@red-Swift-SF113-31>
 * @license MIT
 */

$db = new SQLite3('dodo10.db');
if($stmt = $db->prepare('SELECT * FROM Cars '))
{
         $result = $stmt->execute();

         $names=array();
         while($arr=$result->fetchArray(SQLITE3_ASSOC))
         {
          $names[$arr['id']]=$arr['student_name'];
         }
}
?>
