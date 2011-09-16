package org.papervision3d.objects.parsers
{
	import flash.display.Bitmap;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.net.URLRequest;
	import flash.net.URLStream;
	import flash.utils.ByteArray;
	import nochump.util.zip.ZipEntry;
	import nochump.util.zip.ZipFile;
	import org.papervision3d.core.log.PaperLogger;
	import org.papervision3d.materials.BitmapMaterial;
	import org.papervision3d.materials.utils.MaterialsList;
	import org.papervision3d.objects.DisplayObject3D;

	public class Sketchup extends DisplayObject3D
	{
		public var model : SketchupCollada;
		private var allMaterials : MaterialsList;
		private var count : Number;
		private var COLLADA : XML;
		private var totalMaterials : Number;
		private var _scale : Number;

		public function Sketchup (kmz:String);

		private function completeHandler (event:Event) : void;

		private function loadBitmapCompleteHandler (e:Event) : void;

		private function build () : void;
	}
}
