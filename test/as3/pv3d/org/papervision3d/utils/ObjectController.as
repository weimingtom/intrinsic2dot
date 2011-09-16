package org.papervision3d.utils
{
	import flash.display.Stage;
	import flash.events.EventDispatcher;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	import org.papervision3d.objects.DisplayObject3D;

	public class ObjectController extends EventDispatcher
	{
		private static var _instance : ObjectController;
		public var isMouseDown : Boolean;
		public var restrictInversion : Boolean;
		protected var currentRotationObj : DisplayObject3D;
		protected var arrowLeft : Boolean;
		protected var arrowUp : Boolean;
		protected var arrowRight : Boolean;
		protected var arrowDown : Boolean;
		protected var lastX : Number;
		protected var lastY : Number;
		protected var difX : Number;
		protected var difY : Number;
		protected var si : Number;
		protected var movementInc : Number;
		private var stage : Stage;

		public static function getInstance () : ObjectController;

		public function ObjectController ();

		public function registerControlObject (obj:DisplayObject3D) : void;

		public function registerStage (p_stage:Stage) : void;

		protected function updateLastRotation () : void;

		protected function updateDif () : void;

		protected function onMouseDown (e:MouseEvent) : void;

		protected function onMouseMove (e:MouseEvent) : void;

		protected function onMouseUp (e:MouseEvent) : void;

		protected function onKeyDown (e:KeyboardEvent) : void;

		protected function onKeyUp (e:KeyboardEvent) : void;

		protected function handleKeyStroke () : void;

		protected function updateMovements () : void;
	}
}
