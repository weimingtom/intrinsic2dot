package org.papervision3d.materials
{
	import flash.display.BitmapData;
	import flash.utils.describeType;
	import flash.utils.getDefinitionByName;
	import org.papervision3d.core.log.PaperLogger;
	import org.papervision3d.core.render.draw.ITriangleDrawer;

	/**
	 * The BitmapAssetMaterial class creates a texture from a Bitmap library symbol.
	 * 
	 *   Materials collects data about how objects appear when rendered.
	 * 
	 */
	public class BitmapAssetMaterial extends BitmapMaterial implements ITriangleDrawer
	{
		private static var _library : Object;
		private static var _count : Object;

		/**
		 * A texture object.
		 */
		public function get texture () : Object;
		/**
		 *
		 * @private
		 */
		public function set texture (asset:Object) : void;

		/**
		 * The BitmapAssetMaterial class creates a texture from a Bitmap library asset.
		 * @param	linkageID				The linkage name of the Bitmap symbol in the library.
		 */
		public function BitmapAssetMaterial (linkageID:String, precise:Boolean=false);

		/**
		 * [internal-use]
		 * @param	asset
		 * @return
		 */
		protected function createBitmapFromLinkageID (asset:String) : BitmapData;
	}
}
