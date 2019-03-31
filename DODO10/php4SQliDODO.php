<?php
/**
 * Short description for dodo10sel.php
 *
 * @package dodo10sel
 * @author red <red@red-Swift-SF113-31>
 * @version 0.1
 * @copyright (C) 2019 red <red@red-Swift-SF113-31>
 * @license MIT
 */


$db = new SQLite3('dodo10.db');


$results = $db->query('SELECT Name FROM Cars');
while ($row = $results->fetchArray()) {
        var_dump($row);
}

?>

