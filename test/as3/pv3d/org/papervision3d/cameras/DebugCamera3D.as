package org.papervision3d.cameras
{
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.ui.Keyboard;
	import org.papervision3d.view.Viewport3D;

	/**
	 * <p>
	 * DebugCamera3D serves as a tool to allow you control
	 * the camera with your mouse and keyboard while displaying information
	 * about the camera when testing your swf. Due to its nature,
	 * the Keyboard and Mouse Events may interfere with your custom Keyboard and Mouse Events.
	 * This camera is in no way intended for production use.
	 * </p>
	 * 
	 *   <p>
	 * Click and drag for mouse movement. The keys
	 * are setup as follows:
	 * </p>
	 * <pre><code>
	 * w = forward
	 * s = backward
	 * a = left
	 * d = right
	 * q = rotationZ--
	 * e = rotationZ++
	 * r = fov++
	 * f = fov--
	 * t = near++
	 * g = near--
	 * y = far++
	 * h = far--
	 * </code></pre>
	 * @author John Lindquist
	 */
	public class DebugCamera3D extends Camera3D
	{
		/// @private
		protected var _propertiesDisplay : Sprite;

		/// @private
		protected var _inertia : Number;

		/// @private
		protected var viewportStage : Stage;

		/// @private
		protected var startPoint : Point;

		/// @private
		protected var startRotationY : Number;

		/// @private
		protected var startRotationX : Number;

		/// @private
		protected var targetRotationY : Number;

		/// @private
		protected var targetRotationX : Number;

		/// @private
		protected var keyRight : Boolean;

		/// @private
		protected var keyLeft : Boolean;

		/// @private
		protected var keyForward : Boolean;

		/// @private
		protected var keyBackward : Boolean;

		/// @private
		protected var forwardFactor : Number;

		/// @private
		protected var sideFactor : Number;

		/// @private
		protected var xText : TextField;

		/// @private
		protected var yText : TextField;

		/// @private
		protected var zText : TextField;

		/// @private
		protected var rotationXText : TextField;

		/// @private
		protected var rotationYText : TextField;

		/// @private
		protected var rotationZText : TextField;

		/// @private
		protected var fovText : TextField;

		/// @private
		protected var nearText : TextField;

		/// @private
		protected var farText : TextField;

		/// @private
		protected var viewport3D : Viewport3D;

		/**
		 * A Sprite that displays the current properties of your camera
		 */
		public function get propsDisplay () : Sprite;
		public function set propsDisplay (propsDisplay:Sprite) : void;

		/**
		 * The amount of resistance to the change in velocity when updating the camera rotation with the mouse
		 */
		public function get inertia () : Number;
		public function set inertia (inertia:Number) : void;

		/**
		 * DebugCamera3D
		 * @param viewport	Viewport to render to.
		 * @see org.papervision3d.view.Viewport3D
		 * @param fovY		Field of view (vertical) in degrees.
		 * @param near		Distance to near plane.
		 * @param far		Distance to far plane.
		 */
		public function DebugCamera3D (viewport3D:Viewport3D, fovY:Number=90, near:Number=10, far:Number=5000);

		/**
		 * Checks if the viewport is ready for events
		 */
		private function checkStageReady () : void;

		/**
		 * Dispatched with the viewport container is added to the stage
		 */
		protected function onAddedToStageHandler (event:Event) : void;

		/**
		 * Builds the Sprite that displays the camera properties
		 */
		protected function displayProperties () : void;

		/**
		 * Sets up the Mouse and Keyboard Events required for adjusting the camera properties
		 */
		protected function setupEvents () : void;

		/**
		 *  The default handler for the <code>MouseEvent.MOUSE_DOWN</code> event.
		 * @param The event object.
		 */
		protected function mouseDownHandler (event:MouseEvent) : void;

		/**
		 *  The default handler for the <code>MouseEvent.MOUSE_MOVE</code> event.
		 * @param The event object.
		 */
		protected function mouseMoveHandler (event:MouseEvent) : void;

		/**
		 *  Removes the mouseMoveHandler on the <code>MouseEvent.MOUSE_UP</code> event.
		 * @param The event object.
		 */
		protected function mouseUpHandler (event:MouseEvent) : void;

		/**
		 *  Adjusts the camera based on the keyCode from the <code>KeyboardEvent.KEY_DOWN</code> event.
		 * @param The event object.
		 */
		protected function keyDownHandler (event:KeyboardEvent) : void;

		/**
		 *  Checks which Key is released on the <code>KeyboardEvent.KEY_UP</code> event
		 * and toggles that key's movement off.
		 * @param The event object.
		 */
		protected function keyUpHandler (event:KeyboardEvent) : void;

		/**
		 *  Checks which keys are down and adjusts the camera accorindingly on the <code>Event.ENTER_FRAME</code> event.
		 * Also updates the display of properties.
		 * @param The event object.
		 */
		protected function onEnterFrameHandler (event:Event) : void;
	}
}
