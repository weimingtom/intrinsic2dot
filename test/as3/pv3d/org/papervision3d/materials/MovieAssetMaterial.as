package org.papervision3d.materials
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.utils.getDefinitionByName;
	import org.papervision3d.core.log.PaperLogger;
	import org.papervision3d.core.render.draw.ITriangleDrawer;

	/**
	 * The MovieAssetMaterial class creates a texture from a MovieClip library symbol.
	 * <p/>
	 * The texture can be animated and/or transparent.
	 * <p/>
	 * The MovieClip's content needs to be top left aligned with the registration point.
	 * <p/>
	 * Materials collects data about how objects appear when rendered.
	 */
	public class MovieAssetMaterial extends MovieMaterial implements ITriangleDrawer
	{
		private static var _library : Object;
		private static var _count : Object;

		/**
		 * By default, a MovieAssetMaterial is stored and resused, but there are times where a user may want a unique copy.  set to true if you want a unique instance
		 * created
		 */
		public var createUnique : Boolean;

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
		 * The MovieAssetMaterial class creates a texture from a MovieClip library id.
		 * @param	linkageID			The linkage name of the MovieClip symbol in the library.
		 * @param	transparent			[optional] - If it's not transparent, the empty areas of the MovieClip will be of fill32 color. Default value is false.
		 */
		public function MovieAssetMaterial (linkageID:String="", transparent:Boolean=false, animated:Boolean=false, createUnique:Boolean=false, precise:Boolean=false);

		protected function createMovie (asset:*) : MovieClip;
	}
}
