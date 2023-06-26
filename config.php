<?php

    $con = new mysqli("localhost","rehoAdmin","rehoAdmin","reho");
    $conn = new mysqli("localhost","rehoAdmin","rehoAdmin","reho");
    // Check connection
    if ($conn->connect_error || $con->connect_error) {
      echo "<br/><br/>Failed to connect to MySQL: <br/><pre>" . $conn->connect_error . "</pre>";
      exit();
    }

?>