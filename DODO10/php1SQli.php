<?php
/**
 * Short description for php10sel.php
 *
 * @package php10sel
 * @author red <red@red-Swift-SF113-31>
 * @version 0.1
 * @copyright (C) 2019 red <red@red-Swift-SF113-31>
 * @license MIT
 */


$db = new SQLite3('./dodo10.db');

$stmt = $db->prepare('SELECT * FROM people WHERE id=:id');
$stmt->bindValue(':id', 1, SQLITE3_INTEGER);



$result = $stmt->execute();
var_dump($result->fetchArray());


?>
