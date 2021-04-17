<html>
	<head>
		<title> Задание PHP </title>
		<meta charset="utf-8">
		<link href="mystyle.css" rel="stylesheet" type="text/css">
	</head>
	
	<body>
	<div id = "main">
		<div id="fone">
		
		
		<form method="get" action="index.php">
		Sum <input type="number" name="sum" value="<?php echo $_GET['sum'] ?? ''; ?>">
		<p>Currency from </p>
		<select name="cur_from" id="cur_from">
		<option value="RUB" <?php echo (isset($_GET['sub']) && $_GET['cur_from'] === 'RUB') ? 'selected' : ''; ?> > Rubles</option>
		<option value="USD" <?php echo (isset($_GET['sub']) && $_GET['cur_from'] === 'USD') ? 'selected' : ''; ?> > Dollars </option>
		<option value="EUR" <?php echo (isset($_GET['sub']) && $_GET['cur_from'] === 'EUR') ? 'selected' : ''; ?> > Euros </option>
		<option value="INR" <?php echo (isset($_GET['sub']) && $_GET['cur_from'] === 'INR') ? 'selected' : ''; ?> > Rupees </option>
		</select>
		<p>Currency to </p>
		<select name="cur_to" id="cur_to">
		<option value="RUB" <?php echo (isset($_GET['sub']) && $_GET['cur_to'] === 'RUB') ? 'selected' : ''; ?> > Rubles</option>
		<option value="USD" <?php echo (isset($_GET['sub']) && $_GET['cur_to'] === 'USD') ? 'selected' : ''; ?> > Dollars </option>
		<option value="EUR" <?php echo (isset($_GET['sub']) && $_GET['cur_to'] === 'EUR') ? 'selected' : ''; ?> > Euros </option>
		<option value="INR" <?php echo (isset($_GET['sub']) && $_GET['cur_to'] === 'INR') ? 'selected' : ''; ?> > Rupees </option>
		</select>
	
		<input type="submit"  name="sub" value = "YEP" >
		
		</form>
		<button id="myBtn">Готово</button>
		<?php
		if(isset($_GET['sub']))
		{
		$cur_values = [ 'RUB' => 1.,
						'USD' => 0.0130,
						'EUR' => 0.0113,
						'INR' => 0.96,];
		$cur_from = $_GET['cur_from'];
		$cur_to = $_GET['cur_to'];
		$sum = $_GET['sum'];
		
		$sum_converted = round (($sum / $cur_values[$cur_from]) * $cur_values[$cur_to], 4);
		
		echo "$sum_converted $cur_to";
		}
		?>
		
		</div>
	</div>
	<!-- The Modal -->
			<div id="myModal" class="modal">
			<!-- Modal content -->
				<div class="modal-content">
					<span class="close">&times;</span>
					<p id="m1">Some text in the Modal..</p>
					<p>Имя</p>
					<p id="m2">  </p>
					<p> Почта: </p>
					<p id="m3">  </p>
					<p>Телефон</p>
					<p id="m4">  </p>
					<p>Возраст</p>
					<p id="m5">  </p>
				</div>
			</div>
			<script>
			var modal = document.getElementById("myModal");
			var btn = document.getElementById("myBtn");				
			var span = document.getElementsByClassName("close")[0];
			btn.onclick = function() {
				modal.style.display = "block";
					}
					
					span.onclick = function() {
					modal.style.display = "none";
					
					}
				
			window.onclick = function(event) {
			if (event.target == modal) {
			modal.style.display = "none";
			}
			}
			</script>
	</body>
</html>