<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title>Lecturer Login System</title>
	<link rel="stylesheet" href="css/stil.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="css/giris.css" type="text/css" media="screen" />
</head>
<body>
<div id="girisTasiyici">
	<div id="girisUst">
		<h1><a href="#">Lecturer Login</a></h1>
	</div>
	<form id="girisFormu" method="post" action="hocagiris.php">
		<p>
			<label>Username</label>
			<input type="text" name="kullaniciadi" class="metinKutusu" />
		</p>
		
		<p>
			<label>Password</label>
			<input type="password" name="sifre" class="metinKutusu" />
		</p>
		
		<p>
			<span class="sagKaydir">
			<input type="submit" value="OK" class="dugme" />
			</span>
			<div class="temizle"></div>
		</p>
	</form>
	
	<div id="girisAlt"><span class="ortala">Emre &Ccedil;eltik&ccedil;i</span> &copy; 2013 | Student Registration System
	</div>
</div>
</body>
</html>
<?
error_reporting(0);
<?