package org.papervision3d.materials
{
	import flash.display.BitmapData;
	import flash.display.Graphics;
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import org.papervision3d.core.render.command.RenderTriangle;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.core.render.draw.ITriangleDrawer;

	public class BitmapColorMaterial extends BitmapMaterial implements ITriangleDrawer
	{
		private var uvMatrix : Matrix;
		private static const BITMAP_WIDTH : int = 16;
		private static const BITMAP_HEIGHT : int = 16;

		public function BitmapColorMaterial (color:Number=0xFF00FF, alpha:Number=1);

		private function init () : void;

		public function drawTriangle (tri:RenderTriangle, graphics:Graphics, renderSessionData:RenderSessionData, altBitmap:BitmapData=null, altUV:Matrix=null) : void;

		private function createBitmapData () : void;

		private function createStaticUVMatrix () : void;
	}
}
