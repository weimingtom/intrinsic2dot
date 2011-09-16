package org.papervision3d.materials
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Graphics;
	import flash.display.Loader;
	import flash.events.*;
	import flash.geom.Matrix;
	import flash.net.URLRequest;
	import flash.system.LoaderContext;
	import flash.utils.Dictionary;
	import flash.utils.Timer;
	import org.papervision3d.core.log.PaperLogger;
	import org.papervision3d.core.proto.MaterialObject3D;
	import org.papervision3d.core.render.command.RenderTriangle;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.core.render.draw.ITriangleDrawer;
	import org.papervision3d.events.FileLoadEvent;

	/**
	 * The BitmapFileMaterial class creates a texture by loading a bitmap from an external file.
	 * 
	 *   Materials collect data about how objects appear when rendered.
	 */
	public class BitmapFileMaterial extends BitmapMaterial implements ITriangleDrawer
	{
		/**
		 * The URL that has been requested.
		 */
		public var url : String;

		/**
		 * Whether or not the texture has been loaded.
		 */
		public var loaded : Boolean;

		/**
		 * Function to call when the last image has loaded.
		 */
		public static var callback : Function;

		/**
		 * The color to use in materials before loading has finished.
		 */
		public static var LOADING_COLOR : int;

		/**
		 * The color to use for the lines when there is an error.
		 */
		public static var ERROR_COLOR : int;

		/**
		 * A temporary bitmap to use if the file hasn't loaded yet.
		 */
		public static var loadingBitmap : BitmapData;

		/**
		 * Sets to check for the policy file or not.
		 */
		public var checkPolicyFile : Boolean;

		/**
		 * Internal
		 * 
		 *   Used to define if the loading had failed.
		 */
		protected var errorLoading : Boolean;
		protected var bitmapLoader : Loader;
		protected static var _waitingBitmaps : Array;
		protected static var _loaderUrls : Dictionary;
		protected static var _bitmapMaterials : Dictionary;
		protected static var _subscribedMaterials : Object;
		protected static var _loadingIdle : Boolean;

		/**
		 * A texture object.
		 */
		public function get texture () : Object;
		/**
		 *
		 * @private
		 */
		public function set texture (asset:Object) : void;

		public function get subscribedMaterials () : Object;

		public function get bitmapMaterials () : Dictionary;

		/**
		 * The BitmapFileMaterial class creates a texture by loading a bitmap from an external file.
		 * @param	url					The URL of the requested bitmap file.
		 */
		public function BitmapFileMaterial (url:String="", precise:Boolean=false);

		/**
		 * [internal-use]
		 * @param	asset
		 * @return
		 */
		protected function createBitmapFromURL (asset:String) : BitmapData;

		private function queueBitmap (file:String) : void;

		protected function loadNextBitmap () : void;

		protected function loadBitmapErrorHandler (e:IOErrorEvent) : void;

		protected function loadBitmapProgressHandler (e:ProgressEvent) : void;

		protected function loadBitmapCompleteHandler (e:Event) : void;

		protected function setupAsyncLoadCompleteCallback () : void;

		protected function dispatchAsyncLoadCompleteEvent (e:TimerEvent) : void;

		protected function loadComplete () : void;

		protected function removeLoaderListeners () : void;

		/**
		 *  drawFace3D
		 */
		public function drawTriangle (tri:RenderTriangle, graphics:Graphics, renderSessionData:RenderSessionData, altBitmap:BitmapData=null, altUV:Matrix=null) : void;

		protected function getBitmapForFilename (filename:String) : BitmapData;

		public function destroy () : void;
	}
}
