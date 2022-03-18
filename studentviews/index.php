<?php
$conn = mysqli_connect("localhost","root","","db_event_management");
 

if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
?>
<?php  ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
  
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1"/>
        <link href="bootstrap.min.css" rel="stylesheet">
<link href="dataTables.bootstrap.css" rel="stylesheet">
<link href="dataTables.responsive.css" rel="stylesheet">
 
<style>
	.mytable{
		margin-left:50px;
		margin-top:30px;
		width:1000px;
	}
</style>
<body>
    <div class="side-menu">
        <div class="brand-name">
            <h1>Event Calendar System</h1>
        </div>
        <ul>
            <li><span>Event Details</span> </li>
            
        </ul>
    </div>
    <div class="container">
        <div class="header">
            <div class="nav">
                
                <div class="user">
                    <a href="../login.php" class="btn">Log In</a>
                   
                </div>
            </div>
        </div>
       
    </div>
    <br>
	<div class="mytable" style="padding-left: 300px; padding-top:100px;">
	<table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
		<thead>
            <tr>
				<th>Event Id</th>
                <th>Event Status</th>
				<th>Event Capacity</th>
				<th>Event Date</th>
                <th>Event Description</th>
            </tr>
        </thead>
		<tbody>
			<?php
				
				$query=mysqli_query($conn,"select * from `tbl_reservations`");
				while($row=mysqli_fetch_array($query)){
					?>
					<tr>
						<td><?php echo $row['uid']; ?></td>
						<td><?php echo $row['status']; ?></td>
						<td><?php echo $row['ucount']; ?></td>
						<td><?php echo $row['rdate']; ?></td>
						<td><?php echo $row['Event_Name']; ?></td>
					</tr>
					<?php
				}
			?>
		</tbody>
	</table>
	</div>
	<script src="jquery.min.js"></script>
	<script src="jquery.dataTables.min.js"></script>
    <script src="dataTables.bootstrap.min.js"></script>
    <script src="dataTables.responsive.js"></script>
	<script src="bootstrap.min.js"></script>
	<script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
    </script>
</body>
</html>