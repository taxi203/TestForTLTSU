<?php

$plugins[] = array('reg'=>"/^test-geocoder$/", 'method'=>function($m){
  return array('tpl'=>__DIR__.'/views/geocoder.html');
});


$pluginsAjax['av_AddGeoObj'] = array( 'method'=>function(){
  header("Access-Control-Allow-Origin: *");
  $CoordLeft = "POINT(".$_POST['boundedBy'][0][0].' '. $_POST['boundedBy'][0][1] .')';
  $CoordRight = "POINT(".$_POST['boundedBy'][1][0].' '. $_POST['boundedBy'][1][1] .')';
  $id = wquery("insert into test.geo_objs (id, obj_name, coord_left, coord_right, ip) 
	values ('%s','%s', PointFromText('%s'), PointFromText('%s'), inet_aton('%s') )", 
      array($_POST['id'], $_POST['text'], $CoordLeft, $CoordRight, $_SERVER['REMOTE_ADDR']), true);
  //dump($id);
  return array('id'=>$id);
});

$pluginsAjax['av_GeoObjsList'] = array( 'method'=>function(){
  header("Access-Control-Allow-Origin: *");
  $ol = wquery("select id,obj_name,x(coord_left), y(coord_left), coord_right,create_t, 
    (x(coord_left) + x(coord_right))/2 c_x, (y(coord_left) + y(coord_right))/2 c_y
    from test.geo_objs
    order by -create_t");
  //dump($ol);
  
  return SmartyProcess(__DIR__.'/views/ObjsList.html', array('ObjsList'=>$ol));
});

$pluginsAjax['av_CalcDist'] = array( 'method'=>function(){
  
  //dump($_GET);
  $d = calcDistance($_GET['lat0'], $_GET['long0'], $_GET['lat1'], $_GET['long1']);
  return 'расстояние: <strong>'.round($d / 1000)."</strong> км";
});


function calcDistance($lon1, $lat1, $lon2, $lat2) {
  $lat1 *= M_PI / 180;
  $lat2 *= M_PI / 180;
  $lon1 *= M_PI / 180;
  $lon2 *= M_PI / 180;
  
  $d_lon = $lon1 - $lon2;
  
  $slat1 = sin($lat1);
  $slat2 = sin($lat2);
  $clat1 = cos($lat1);
  $clat2 = cos($lat2);
  $sdelt = sin($d_lon);
  $cdelt = cos($d_lon);
  
  $y = pow($clat2 * $sdelt, 2) + pow($clat1 * $slat2 - $slat1 * $clat2 * $cdelt, 2);
  $x = $slat1 * $slat2 + $clat1 * $clat2 * $cdelt;
  
  return atan2(sqrt($y), $x) * 6372795;
}

