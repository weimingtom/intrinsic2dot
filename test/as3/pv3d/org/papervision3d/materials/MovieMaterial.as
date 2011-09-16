package org.papervision3d.materials
{
	import flash.display.BitmapData;
	import flash.display.DisplayObject;
	import flash.display.Graphics;
	import flash.display.Stage;
	import flash.geom.Matrix;
	import flash.geom.Rectangle;
	import org.papervision3d.core.log.PaperLogger;
	import org.papervision3d.core.render.command.RenderTriangle;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.core.render.draw.ITriangleDrawer;
	import org.papervision3d.core.render.material.IUpdateAfterMaterial;
	import org.papervision3d.core.render.material.IUpdateBeforeMaterial;

	/**
	 * The MovieMaterial class creates a texture from an existing MovieClip instance.
	 * <p/>
	 * The texture can be animated and/or transparent. Current scale and color values of the MovieClip instance will be used. Rotation will be discarded.
	 * <p/>
	 * Materials collects data about how objects appear when rendered.
	 */
	public class MovieMaterial extends BitmapMaterial implements ITriangleDrawer, IUpdateBeforeMaterial, IUpdateAfterMaterial
	{
		protected var recreateBitmapInSuper : Boolean;
		private var materialIsUsed : Boolean;

		/**
		 * The MovieClip that is used as a texture.
		 */
		public var movie : DisplayObject;

		/**
		 * A Boolean value that determines whether the MovieClip is transparent. The default value is false, which is much faster.
		 */
		public var movieTransparent : Boolean;

		/**
		 * When updateBitmap() is called on an animated material, it looks to handle a change in size on the texture.
		 * 
		 *   This is true by default, but in certain situations, like drawing on an object, you wouldn't want the size to change
		 */
		public var allowAutoResize : Boolean;
		private var userClipRect : Rectangle;
		private var autoClipRect : Rectangle;
		private var movieAnimated : Boolean;
		private var quality : String;
		private var stage : Stage;

		/**
		 * A Boolean value that determines whether the texture is animated.
		 * 
		 *   If set, the material must be included into the scene so the BitmapData texture can be updated when rendering. For performance reasons, the default value is false.
		 */
		public function get animated () : Boolean;
		public function set animated (status:Boolean) : void;

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
		 *  Rectangle object that defines the area of the source object to draw.
		 * 
		 *   When present, this property defines bitmap size overriding allowAutoResize.
		 * 
		 *   If you do not supply this value, no clipping occurs and the entire source object is drawn.
		 * 
		 */
		public function get rect () : Rectangle;
		public function set rect (clipRect:Rectangle) : void;

		/**
		 * The MovieMaterial class creates a texture from an existing MovieClip instance.
		 * @param	movieAsset		A reference to an existing MovieClip loaded into memory or on stage
		 * @param	transparent		[optional] - If it's not transparent, the empty areas of the MovieClip will be of fill32 color. Default value is false.
		 * @param	animated		[optional] - a flag setting whether or not this material has animation.  If set to true, it will be updated during each render loop
		 */
		public function MovieMaterial (movieAsset:DisplayObject=null, transparent:Boolean=false, animated:Boolean=false, precise:Boolean=false, rect:Rectangle=null);

		/**
		 *
		 * @param	asset
		 * @return
		 */
		protected function createBitmapFromSprite (asset:DisplayObject) : BitmapData;

		protected function initBitmap (asset:DisplayObject) : void;

		public function drawTriangle (tri:RenderTriangle, graphics:Graphics, renderSessionData:RenderSessionData, altBitmap:BitmapData=null, altUV:Matrix=null) : void;

		/**
		 * Updates animated MovieClip bitmap.
		 * 
		 *   Draws the current MovieClip image onto bitmap.
		 */
		public function updateBeforeRender (renderSessionData:RenderSessionData) : void;

		public function updateAfterRender (renderSessionData:RenderSessionData) : void;

		public function drawBitmap () : void;

		/**
		 * Specifies which rendering quality Flash Player uses when drawing the bitmap texture from the movie asset.
		 * 
		 *   If not set, bitmaps are drawn using the current stage quality setting.
		 */
		public function setQuality (quality:String, stage:Stage, updateNow:Boolean=true) : void;
	}
}
