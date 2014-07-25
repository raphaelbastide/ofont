<?php

/**
* While writing on (optional) support for PiM with Thumbnails,
*
* owzim has written the js-code that rebuilds the crop rectangle, - and
*
* also he has tested and forthrightly commented my various tests with that. :)
*
* We both want to have the data stored and pre-selected when coming back
*
* to a previous created thumbnail.
*
* We use this wrapper class with a read and a write method on a session basis.
*
* Together with the PiM the coords and options are stored permanent!
*
* It is stored as metadata in a IPTC custom field (2#215) of the original imagefile :)
*
* horst
*/

class CropImageKeepCoords {

	private $sessArrayName = __CLASS__;
	private $id = null;
	private $prefix;
	private $pageimage;
	private $permanentBoost = false;

	public function __construct($pageimage, $prefix, $thumbW, $thumbH, $permanentBoost=false) {
		if(!$pageimage) return;
		$this->id = $prefix . md5($pageimage->url);
		$this->prefix = $prefix;
		$this->pageimage = $pageimage;
		$this->thumbW = $thumbW;
		$this->thumbH = $thumbH;
		$this->permanentBoost = $permanentBoost;
	}

	public function read(&$x1, &$y1, &$w, &$h, &$params) {
		if(!$this->pageimage || (!$this->permanentBoost && !isset(wire('session')->{$this->sessArrayName}[$this->id]))) {
			$x1 = $y1 = 0;
			$w = $this->thumbW;
			$h = $this->thumbH;
			return false;
		}
		if(isset(wire('session')->{$this->sessArrayName}[$this->id])) {
			$a = wire('session')->{$this->sessArrayName}[$this->id];
			foreach(array('x1','y1','w','h') as $k=>$v) {
				$$v = $a[$k];
			}
			foreach(array('quality','sharpening','colorize') as $k=>$v) {
				if(isset($a[$k+4])) {
					$params["$v"] = $a[$k+4];
				}
			}
			return true;
		}
		if($this->permanentBoost) {
			$pim = wire('modules')->get('PageImageManipulator')->imLoad();
			$res = $pim->fileThumbnailModuleCoordsRead($this->pageimage, $x1, $y1, $w, $h, $params, $this->prefix);
			$w = 0==$w ? $this->thumbW : $w;
			$h = 0==$h ? $this->thumbH : $h;
			unset($pim);
			return $res;
		}
		$x1 = $y1 = 0;
		$w = $this->thumbW;
		$h = $this->thumbH;
		return false;
	}

	public function write($x1=null, $y1=null, $w=null, $h=null, $params=array()) {
		if(!$this->pageimage) {
			return false;
		}
		foreach(array('x1','y1','w','h') as $key) {
			if(null===$$key) {
				$$key = isset(wire('input')->get->$key) ? intval(wire('input')->get->$key) : 0;
			}
		}
        if(0==$w || 0==$h) {
			return false;
		}
		$entry = array($x1,$y1,$w,$h);
		foreach($params as $param) {
			$entry[] = $param;
		}
		$a = is_array(wire('session')->{$this->sessArrayName}) ? wire('session')->{$this->sessArrayName} : array();
		wire('session')->{$this->sessArrayName} = array_merge($a, array($this->id=>$entry));
		return true;
	}

}
