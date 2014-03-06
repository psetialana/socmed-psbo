<?php
require_once (realpath(dirname(__FILE__) . '/../lib/Scrap.php'));

class YogyesScrap extends Scrap
{
	public static function kawisata($url)
	{

		$bacaHtml= Scrap::baca($url);

		$pecah = explode('<div id="kawista-list-of-content">',$bacaHtml);
		$pecah2 = explode('<ul>', $pecah[1]);
		$pecah3 = explode('</ul>', $pecah2[1]);

		$doc = new DOMDocument();
		$doc->loadHTML($pecah3[0]);
		$xpath = new DomXpath($doc);
		$liList = $doc->getElementsByTagName('li');

		$liValues = array();
		$i = 0;

		foreach ($liList as $li) {
			$nodeImg = $xpath->query("a/img[@width='60']/attribute::src", $li);
			$nodeTitle = $xpath->query("a/img[@width='60']/attribute::alt", $li);
			$nodeUrl = $xpath->query("span[@class='short-cut']/a[1]/attribute::href", $li);
			foreach ($nodeTitle as $rowNode) {
			    $liValues[$i]['title'] = $rowNode->nodeValue;
			}
		    foreach ($nodeImg as $rowNode) {
			    $liValues[$i]['img'] = $rowNode->nodeValue;
			}
			foreach ($nodeUrl as $rowNode) {
			    $liValues[$i]['url'] = $rowNode->nodeValue;
			}

			$i++;
			
		}

		return json_encode($liValues);
	}
}
?>