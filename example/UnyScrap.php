<?php
require_once (realpath(dirname(__FILE__) . '/../lib/Scrap.php'));

class UnyScrap extends Scrap
{
	public static function pengumuman($url) 
	{
		$bacaHtml = Scrap::baca($url);

		$pecah = explode('<div class="sidebar-dua ">',$bacaHtml);
		$pecah1 = explode('<div class="view-content">', $pecah[1]);
		$pecah2 = explode('<h2 class="element-invisible"', $pecah1[2]);

		return $pecah2[0];

		/*$doc = new DOMDocument();
		$doc->loadHTML($pecah2[0]);
		$xpath = new DomXpath($doc);
		//$liList = $doc->getElementsByTagName('div');

		$classname="views-row";
		$liList = $finder->query("//*[contains(concat(' ', normalize-space(@class), ' '), ' $classname ')]");

		$liValues = array();
		$i = 0;

		foreach ($liList as $li) {
			$nodeImg = $xpath->query("div/img[@width='60']/attribute::src", $li);
			$nodeTitle = $xpath->query("a/img[@width='60']/attribute::alt", $li);
			$nodeUrl = $xpath->query("span[@class='short-cut']/a[1]/attribute::href", $li);
			foreach ($nodeTitle as $rowNode) {
			    $liValues[$i]['title'] = $rowNode->nodeValue;
			}

			$i++;
			
		}

		var_dump($liValues)*/
	}
}
?>