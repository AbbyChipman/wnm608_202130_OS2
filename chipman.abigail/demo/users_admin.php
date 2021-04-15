<?php

include "../lib/php/functions.php";

$users = file_get_json("users.json");

// pretty_dump($_SERVER);
// pretty_dump($_GET);








function showUserPage($user) {


$classes = implode(", ", $user->classes);

echo <<<HTML
<nav class="nav crumbs">
   <ul>
      <li><a href="{$_SERVER['PHP_SELF']}">Back</a></li>
   </ul>
</nav>
<div>
   <h1>$user->name</h1>
</div>

<div>
 	<form action="">
 		<label for="name" class="form-label">Name:</label>
 		<input type="text" size="30" id="name" placeholder='$user->name'>
 		<br>

 		<label for="type" class="form-label">Type:</label>
 		<input type="text" size="30" id="type" placeholder=$user->type>
 		<br>

 		<label for="email" class="form-label">Email:</label>
 		<input type="text" size="30" id="email" placeholder=$user->email>
 		<br>

 		<label for="classes" class="form-label">Classes:</label>
 		<input type="text" id="classes" placeholder='$classes'>
 		<br>
 		<br>

 		<input type="submit" class="form-button" style="width:25%" value="Update Information">

 	</form>
</div>
HTML;
}






?><!DOCTYPE html>
<html lang="en">
<head>
   <title>User Administrator</title>
   <?php include "../parts/meta.php" ?>
</head>
<body>
   <header class="navbar">
      <div class="container display-flex flex-align-center">
         <div class="flex-none">
            <h1>User Admin</h1>
         </div>
         <div class="flex-stretch"></div>
         <nav class="flex-none nav flex">
            <ul>
               <li><a href="<?= $_SERVER['PHP_SELF'] ?>">List</a></li>
            </ul>
         </nav>
      </div>
   </header>

   <div class="container">
      <div class="card soft">

         <?php
         if(isset($_GET['id'])) {
            showUserPage($users[$_GET['id']]);
         } else {
         ?>

         <h2>User List</h2>

         <ul>
         <?php

         for($i=0; $i<count($users); $i++) {
            echo "<li>
            <a href='{$_SERVER['PHP_SELF']}?id=$i'>{$users[$i]->name}</a>
            </li>";
         }

         ?>
         </ul>
         <?php
         }
         ?>
      </div>
   </div>
</body>
</html>