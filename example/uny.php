<?php
require_once (realpath(dirname(__FILE__) . '/UnyScrap.php'));

if (isset($_GET['op'])) {
	$op = $_GET['op'];

	switch($op) {
		case 'pengumuman' :
			echo UnyScrap::pengumuman('http://uny.ac.id');
			break;
	}
} else {
	echo UnyScrap::baca('http://uny.ac.id');
}
?>