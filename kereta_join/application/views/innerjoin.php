<!DOCTYPE html>
<html>
<head>
	<title>Kereta</title>
	<link rel="stylesheet" href="<?php echo base_url('css\bootstrap.min.css')?>">
    <link rel="stylesheet" href="<?php echo base_url('css\style.css')?>">
    <script src="<?php echo base_url('js/jquery-3.3.1.slim.min.js') ?>"></script>
    <script src="<?php echo base_url('js/bootstrap.min.js') ?>"></script>
    <script src="<?php echo base_url('js/popper.min') ?>"></script>
</head>
<body>
	<div class="container mt-4">
		<a href="<?php echo site_url('C_Kereta/index') ?>"><button>Home</button></a>
		<a href="<?php echo site_url('C_Kereta/leftjoin') ?>"><button>Left Join</button></a>
		<a href="<?php echo site_url('C_Kereta/rightjoin') ?>"><button>Right Join</button></a>
		<a href="<?php echo site_url('C_Kereta/innerjoin') ?>"><button>Inner Join</button></a>
	</div>
	<div class="container mt-5">
		<table class="table table-bordered ">
			<tr class="text-center">
				<th>Kode Kereta</th>
				<th>Nama Kereta</th>
				<th>Kode Gerbong</th>
				<th>Nama Gerbong</th>
				<th>Kode Kursi</th>
			</tr>
			<?php 
				foreach ($kereta as $key) {
			?>
				<tr>
					<td><?php echo $key->kd_kereta ?></td>
					<td><?php echo $key->nama_kereta ?></td>
					<td><?php echo $key->kd_gerbong ?></td>
					<td><?php echo $key->nama_gerbong ?></td>
					<td><?php echo $key->kd_kursi ?></td>
				</tr>
			<?php  
				}
			?>
				
		</table>	
	</div>
</body>
</html>