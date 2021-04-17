
<html>
	<script> javascript:document.location='#pointToScrollTo' </script>
	<head>
		<title> Главная </title>
		<meta charset="utf-8">
		<link href="mystyle.css" rel="stylesheet" type="text/css">
	</head>
	
	<?php
	
	
	
	?>
	<?php
	require_once "config.php";
	
	//100% рабочий вариант
	if(isset($_COOKIE["loggedin"]) && $_COOKIE["loggedin"] == true){
		$num_of_rows=0;
		$sqlcheck = "SELECT username,sessionhash,active from sessions where active=true and username = ? and sessionhash = ?";
         
								if($stmtch = mysqli_prepare($link, $sqlcheck)){
								// Bind variables to the prepared statement as parameters
								mysqli_stmt_bind_param($stmtch, "ss", $param_username, $param_sessionhash);
            
								// Set parameters
								$param_username = $_COOKIE["username"];
								$param_sessionhash =  $_COOKIE["sessionid"]; // Checks password hash
								
								if(mysqli_stmt_execute($stmtch))
								{
								 mysqli_stmt_store_result($stmtch);
								$num_of_rows=mysqli_stmt_num_rows($stmtch);
								}
								// Close statement
								mysqli_stmt_close($stmtch);
								}		
		if($num_of_rows>0){
			
		}
		else{
			header("location: login.php?action=logout");
			
			exit;	
		}
		
	}
	
	
	
	
	if($_COOKIE["loggedin"] == false)
	{
		header("location: login.php");
		exit;
	}
	
	if(isset($_GET["Text1"]))
	{
	$sql = "INSERT INTO messages (username, date, text) VALUES (?, CURRENT_TIME(),?)";
	
	$username = $_COOKIE["username"];
	
	
	if($stmt = mysqli_prepare($link,$sql)){
		mysqli_stmt_bind_param($stmt, "ss", $param_username, $param_text);
		
		$param_username = $username;
		$param_text = $_GET["Text1"];
		
		if(mysqli_stmt_execute($stmt)){
			header("location: main.php");
			
		}
		 mysqli_stmt_close($stmt);
	}
	}

	?>
	
	<?php 
		$text = $username = $date = "";
		$num_of_rows=0;
		$usernames = array();
		$texts = array();
		$dates = array();
		$written = array();
		$sql = "SELECT username, date, text from messages";
		if($stmt = mysqli_prepare($link,$sql)){	
		
		if(mysqli_stmt_execute($stmt)){
			mysqli_stmt_store_result($stmt);
			$num_of_rows = mysqli_stmt_num_rows($stmt);
				if($num_of_rows>0){
					mysqli_stmt_bind_result($stmt, $username, $date, $text);
					while(mysqli_stmt_fetch($stmt))
					{
						array_push($usernames,$username);
						array_push($texts,$text);
						array_push($dates,$date);
						array_push($written,false);
					}
				}					
		}
		 mysqli_stmt_close($stmt);
		}
	?>
	<body>
	<div id="main">
		<div id="fone">
		<p id="usermenu">CURRENT USER:  <?php echo $_COOKIE["username"] ?> <button id="quitButton" class="registerbtn"> Выход  </button>  </p>
		 
		<div class="container">
			<div id ="chatcontainer">
			
				<?php 
				$i = 0;
				while($i < $num_of_rows)
				{
					echo ' <div class="box"> 
						<div class="Name">'." $usernames[$i] $dates[$i]".' </div>
						<div class="message">'."$texts[$i] 
					</div>
					</div>";
					$written[$i]=true;
					$i++;
					
				}
				?>
						
				<a name="pointToScrollTo"></a>
			
			</div>
			<div id="messagewindow">
			<form name = "f2">
			<div id="sendcontainer"><textarea  name="Text1" cols="40" rows="5" placeholder="Your message here..." id="chatbox"> </textarea>
			<div id="buttoncontainer">
			<input type="submit" name="button" value="Отправить" id="sendbutton">
			</div>
			</div>
			
			
			</form>	
			</div>
			
			</div>
		<script type="text/javascript">
		var btn = document.getElementById("quitButton");
		
		btn.onclick = function() {
		document.cookie = "id=; expires = Thu, 01 Jan 1970 00:00:00 GMT"
		document.cookie = "loggedin=; expires = Thu, 01 Jan 1970 00:00:00 GMT"
		document.cookie = "username=; expires = Thu, 01 Jan 1970 00:00:00 GMT"
		window.location.replace("login.php?action=logout");
		}
		</script>

			
		

		</div>
	</div>
	</body>	
</html>