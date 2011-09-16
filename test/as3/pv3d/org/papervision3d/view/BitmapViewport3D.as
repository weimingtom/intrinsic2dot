package org.papervision3d.view
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.events.Event;
	import flash.geom.Matrix;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.core.view.IViewport3D;

	/**
	 *
	 * @Author Ralph Hauwert
	 */
	public class BitmapViewport3D extends Viewport3D implements IViewport3D
	{
		public var bitmapData : BitmapData;
		public var _containerBitmap : Bitmap;
		protected var _fillBeforeRender : Boolean;
		protected var bgColor : int;
		protected var bitmapTransparent : Boolean;

		public function set fillBeforeRender (value:Boolean) : void;
		public function get fillBeforeRender () : Boolean;

		public function set autoClipping (clip:Boolean) : void;
		public function get autoClipping () : Boolean;

		public function BitmapViewport3D (viewportWidth:Number=640, viewportHeight:Number=480, autoScaleToStage:Boolean=false, bitmapTransparent:Boolean=false, bgColor:int=0x000000, interactive:Boolean=false, autoCulling:Boolean=true);

		public function updateAfterRender (renderSessionData:RenderSessionData) : void;

		protected function onStageResize (event:Event=null) : void;
	}
}
