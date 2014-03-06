<?php
require_once (realpath(dirname(__FILE__) . '/YogyesScrap.php'));

if (isset($_GET['op'])) {
	$op = $_GET['op'];

	switch($op) {
		case 'candi' :
			echo YogyesScrap::kawisata('http://www.yogyes.com/id/yogyakarta-tourism-object/candi/');
			break;
		case 'alam' :
			echo YogyesScrap::kawisata('http://www.yogyes.com/id/yogyakarta-tourism-object/nature-and-outdoor/');
			break;
	}
} else {
	echo YogyesScrap::baca('http://yogyes.com');
}

?>