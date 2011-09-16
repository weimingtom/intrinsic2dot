package org.papervision3d.view
{
	import flash.display.Sprite;
	import flash.events.Event;
	import org.papervision3d.core.proto.CameraObject3D;
	import org.papervision3d.core.view.IView;
	import org.papervision3d.render.BasicRenderEngine;
	import org.papervision3d.scenes.Scene3D;

	/**
	 *
	 * @Author Ralph Hauwert
	 */
	public class AbstractView extends Sprite implements IView
	{
		protected var _camera : CameraObject3D;
		protected var _height : Number;
		protected var _width : Number;
		public var scene : Scene3D;
		public var viewport : Viewport3D;
		public var renderer : BasicRenderEngine;

		public function get camera () : CameraObject3D;

		public function set viewportWidth (width:Number) : void;
		public function get viewportWidth () : Number;

		public function set viewportHeight (height:Number) : void;
		public function get viewportHeight () : Number;

		public function AbstractView ();

		public function startRendering () : void;

		public function stopRendering (reRender:Boolean=false, cacheAsBitmap:Boolean=false) : void;

		public function singleRender () : void;

		protected function onRenderTick (event:Event=null) : void;
	}
}
