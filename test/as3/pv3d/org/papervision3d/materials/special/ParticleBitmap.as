package org.papervision3d.materials.special
{
	import flash.display.BitmapData;
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.geom.Rectangle;
	import org.papervision3d.core.log.PaperLogger;

	/**
	 * Used to store the bitmap for a particle material. It also stores scale and offsets for moving the registration point of the bitmap.
	 * @author Seb Lee-Delisle
	 */
	public class ParticleBitmap
	{
		public var offsetX : Number;
		public var offsetY : Number;
		public var scaleX : Number;
		public var scaleY : Number;
		public var bitmap : BitmapData;
		public var width : int;
		public var height : int;
		private static var drawMatrix : Matrix;
		private static var tempSprite : Sprite;

		public function ParticleBitmap (source:*=null, scale:Number=1, forceMipMap:Boolean=false, transparent:Boolean=true);

		public function create (clip:DisplayObject, scale:Number=1, transparent:Boolean=true) : BitmapData;

		public function createExact (clip:DisplayObject, posX:Number=1, posY:Number=1, scaleX:Number=1, scaleY:Number=1, rotation:Number=0) : BitmapData;

		/**
		 * rounds up to the nearest MIPMAP-able size to the value you pass in.
		 * 
		 *   Kudos to Jack Lang for writing this optimised function.
		 * 
		 *   
		 */
		protected function roundUpToMipMap (val:Number) : uint;

		/**
		 * Finds the nearest MIPMAP-able size to the value you pass in.
		 * 
		 *   Kudos to Jack Lang for writing this optimised function.
		 * 
		 *   
		 */
		protected function getNearestMipMapSize (val:Number) : uint;
	}
}
