<?php
include("ayar.php");
ob_start();
session_start();
if(!isset($_SESSION["ogrencigiris"])){
$ogrencino=$_POST["ogrencino"];
$sifre=$_POST["sifre"];
$okuogrenci = mysql_fetch_assoc(mysql_query("SELECT * FROM ogrenci where ogrenci_no='$ogrencino' and sifre='$sifre'"));
	if ($okuogrenci){
		$ogrenci_id=$okuogrenci["id"];
	}
}else{
	$okuogrenci="true";	
}
	if($okuogrenci){
		$_SESSION["ogrencigiris"] = "true";
		if (!isset($_SESSION["ogrenci_idd"])){
			$_SESSION["ogrenci_idd"] = $ogrenci_id;
		}
$obilgi = mysql_fetch_assoc(mysql_query("SELECT * FROM ogrenci where id='$_SESSION[ogrenci_idd]'"));		
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title>Öğrenci Sistemi</title>
	<link rel="stylesheet" href="css/stil.css" type="text/css" media="screen" />
</head>
<body>

<!-- anaKapsayici -->
<div id="anaKapsayici">

	<!-- ust -->
	<div id="ust">
		<div class="ortala">
		<div id="logo">
			<h1><a href="#">Baransel Pamuk V.2.33</a></h1>
		</div>
		
		<!-- kulMenusu -->
		<div id="kulMenusu">
			<ul>
				<li>Merhaba ! <? echo $obilgi["isim"]." ".$obilgi["soyad"];?></li>
				<li><a href="cikiso.php">Çıkış</a></li>
			</ul>
		</div>
		<!-- kulMenusu son -->
		
		<div class="temizle"></div> <!-- logo, kulMenusu icin temizleme -->
		</div>
	</div>
	<div class="golge"></div> <!-- ust icin temizleme -->
	<!-- ust son -->
	
	
	<!-- orta -->
	<div id="orta" class="ortala">
		<!--anaMenu-->
		<div id="anaMenu">
<div class="menu">
				<div class="menuBasligi">Yeni Dönem</div>
				<div class="altMenuler">
					<ul>
						<li><a href="ogrencigiris.php?s=addlecture">Ders Ekle</a></li>
						<li><a href="ogrencigiris.php?s=dellecture">Ders Kaldır</a></li>
					</ul>
				</div>
			</div>
			
			<div class="menu">
				<div class="menuBasligi"><a href="#">Nitelik</a></div>
				<div class="altMenuler">
					<ul>
						<li><a href="ogrencigiris.php?s=studentgrade">Not Ekle</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!--anaMenu son -->
	
		
		
		<!--sayfaIcerigi-->
		<div id="sayfaIcerigi">
		
	
			<div class="temizle"></div> 
            <?
			if($_GET["s"]=="addlecture"){
				include("addlecture.php");
			}else if($_GET["s"]=="dellecture"){
				include("dellecture.php");
			}else if($_GET["s"]=="dersedit"){
				include("dersedit.php");
			}else if($_GET["s"]=="studentgrade"){
				include("studentgrade.php");
			}else{
					?>
      <div class="sayfaAciklamasi">
				<h3 class="genelBaslik">Hoşgeldiniz!</h3>
				<p>Yeni Sisteme Giriş Yapmış Bulunmaktasınız.</p>
			</div>
            <?
			}
			?>

		</div>
		
		
		<div class="temizle"></div> 
	</div>
	<!-- orta son -->
	
	<!-- alt -->
	<div id="alt">
		<p class="ortala">Baransel Pamuk &copy; 2017 | Student Registration System </p>
</div>
	<!-- alt son -->
	
</div>
<!-- anaKapsayici son -->

</body>
</html>
<?php
	}else{
		echo "username or password is wrong!";
		header("Refresh: 2; url=ogrencilogin.php");
	}
?>