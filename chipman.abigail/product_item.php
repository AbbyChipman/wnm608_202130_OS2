<!DOCTYPE html>
<html lang="en">
<head>

	<title>Product Item</title>

	<?php include "parts/meta.php" ?>

</head>

<body>

	<?php include "parts/navbar.php" ?>

	<div class="view-window-small display-flex flex-align-center flex-justify-center" style="background-image:url(img/glitter-background.jpg)">
   		<h1 class="card section rainbow">PRODUCT #<?= $_GET['id'] ?></h1>
	</div>

	<div class="container">
		<div class="card soft">
			<?php include "parts/product.php" ?>

			<h2>Product Item</h2>
				<div>This is Product #<?= $_GET['id'] ?></div></div>

		</div>
	</div>

</body>
</html>