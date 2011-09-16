package org.papervision3d.materials.utils
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.geom.Matrix;
	import org.papervision3d.materials.BitmapMaterial;

	public class BitmapMaterialTools
	{
		public static function createBitmapMaterial (bitmapClass:Class, oneSided:Boolean=true) : BitmapMaterial;

		public static function getTexture (bitmapClass:Class) : BitmapData;

		/**
		 * Mirrors the bitmap over its X axis
		 * @param	bitmap The bitmap to mirror.
		 */
		public static function mirrorBitmapX (bitmap:BitmapData) : void;

		/**
		 * Mirrors the bitmap over its Y axis
		 * @param	bitmap The bitmap to mirror.
		 */
		public static function mirrorBitmapY (bitmap:BitmapData) : void;
	}
}
