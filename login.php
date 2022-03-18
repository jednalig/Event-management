<?php
require_once './library/config.php';
require_once './library/functions.php';

$errorMessage = '&nbsp;';
if (isset($_POST['name']) && isset($_POST['pwd'])) {
	$result = doLogin();
	if ($result != '') {
		$errorMessage = $result;
	}
}

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>
    <link rel="stylesheet" href="2style.css">
    <link href="<?php echo WEB_ROOT; ?>library/spry/textfieldvalidation/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
	<script src="<?php echo WEB_ROOT; ?>library/spry/textfieldvalidation/SpryValidationTextField.js" type="text/javascript"></script>
	
	<link href="<?php echo WEB_ROOT; ?>library/spry/passwordvalidation/SpryValidationPassword.css" rel="stylesheet" type="text/css" />
	<script src="<?php echo WEB_ROOT; ?>library/spry/passwordvalidation/SpryValidationPassword.js" type="text/javascript"></script>


</head>
<body>

<div class="container2" style="margin-left: 38%;">
    <form action="" method="post">
        <div class="title2">Login</div>


        <div class="input-box">
            <input type="text" name="name" placeholder="Username" required>
            <div class="underline"></div>
        </div>


        <div class="input-box">
            <input type="password" name="pwd" placeholder="Enter Password" required>
            <div class="underline"></div>
        </div>
        <div class="input-box2">
        <button type="submit" class="btn" style="width: 100%; height: 50px; font-size: 20px; cursor:pointer;  background: linear-gradient( to right, rgb(8, 75, 8) 0%, rgb(216, 216, 46) 100%);">Log In</button>
        </div>
        
</div>   
</body>
<script>

var sprytf_name = new Spry.Widget.ValidationTextField("sprytf_name", "none", {minChars:4, validateOn:["blur", "change"]});
var sprytf_pwd = new Spry.Widget.ValidationPassword("sprytf_pwd", {minChars:4, maxChars: 12, validateOn:["blur", "change"]});

</script>
</html>