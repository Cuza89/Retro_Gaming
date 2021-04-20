<?php
include_once 'delovi/init.php';
if(!je_admin()) header ('Location: index.php');
if(isset($_GET['idk'])){
    $id = (int)$_GET['idk'];
     if(izbrisi_korisnika($id)){?>
        <img src='slike/kanta.png'>
		<p>KORISNIK JE IZBRISAN IZ BAZE.</p>
   <?php }else{
        echo "Došlo je do greške prilikom brisanja. ";
    }
}

?><br />
<a href="http://localhost/retro_gaming/admin/korisnici.php"><img src="slike/nazad.png"></a>