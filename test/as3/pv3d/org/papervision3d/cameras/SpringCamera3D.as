package org.papervision3d.cameras
{
	import org.papervision3d.core.math.*;
	import org.papervision3d.objects.DisplayObject3D;

	/**
	 * b at turbulent dot ca - http://agit8.turbulent.ca 
	 * v1 - 2009-01-21
	 */
	public class SpringCamera3D extends Camera3D
	{
		/**
		 * [optional] Target object3d that camera should follow. If target is null, camera behaves just like a normal Camera3D.
		 */
		public var _camTarget : DisplayObject3D;

		/**
		 * Stiffness of the spring, how hard is it to extend. The higher it is, the more "fixed" the cam will be.
		 * A number between 1 and 20 is recommended.
		 */
		public var stiffness : Number;

		/**
		 * Damping is the spring internal friction, or how much it resists the "boinggggg" effect. Too high and you'll lose it!
		 * A number between 1 and 20 is recommended.
		 */
		public var damping : Number;

		/**
		 * Mass of the camera, if over 120 and it'll be very heavy to move.
		 */
		public var mass : Number;

		/**
		 * Offset of spring center from target in target object space, ie: Where the camera should ideally be in the target object space.
		 */
		public var positionOffset : Number3D;

		/**
		 * offset of facing in target object space, ie: where in the target object space should the camera look.
		 */
		public var lookOffset : Number3D;
		private var _zrot : Number;
		private var _velocity : Number3D;
		private var _dv : Number3D;
		private var _stretch : Number3D;
		private var _force : Number3D;
		private var _acceleration : Number3D;
		private var _desiredPosition : Number3D;
		private var _lookAtPosition : Number3D;
		private var _targetTransform : Matrix3D;
		private var _xPositionOffset : Number3D;
		private var _xLookOffset : Number3D;
		private var _xPosition : Number3D;
		private var _xLookAtObject : DisplayObject3D;

		public function set target (object:DisplayObject3D) : void;
		public function get target () : DisplayObject3D;

		/**
		 * Rotation in degrees along the camera Z vector to apply to the camera after it turns towards the target .
		 */
		public function set zrot (n:Number) : void;
		public function get zrot () : Number;

		/**
		 * Constructor.
		 * @param   fov     This value is the vertical Field Of View (FOV) in degrees.
		 * @param   near    Distance to the near clipping plane.
		 * @param   far     Distance to the far clipping plane.
		 * @param   useCulling      Boolean indicating whether to use frustum culling. When true all objects outside the view will be culled.
		 * @param   useProjection   Boolean indicating whether to use a projection matrix for perspective.
		 */
		public function SpringCamera3D (fov:Number=60, near:Number=10, far:Number=5000, useCulling:Boolean=false, useProjection:Boolean=false);

		public function transformView (transform:Matrix3D=null) : void;
	}
}
