package org.papervision3d.cameras
{
	import flash.geom.Rectangle;
	import flash.utils.getTimer;
	import org.papervision3d.core.culling.FrustumCuller;
	import org.papervision3d.core.geom.renderables.Triangle3D;
	import org.papervision3d.core.geom.renderables.Vertex3D;
	import org.papervision3d.core.geom.renderables.Vertex3DInstance;
	import org.papervision3d.core.math.Matrix3D;
	import org.papervision3d.core.proto.CameraObject3D;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.objects.DisplayObject3D;

	/**
	 * Camera3D is the basic camera used by Papervision3D.
	 * </p>
	 * @author Tim Knip
	 */
	public class Camera3D extends CameraObject3D
	{
		protected var _projection : Matrix3D;
		protected var _prevFocus : Number;
		protected var _prevZoom : Number;
		protected var _prevWidth : Number;
		protected var _prevHeight : Number;
		protected var _prevOrtho : Boolean;
		protected var _prevOrthoProjection : Boolean;
		protected var _prevUseProjection : Boolean;
		protected var _focusFix : Matrix3D;

		/**
		 * Whether this camera uses frustum culling.
		 * @return Boolean
		 */
		public function set useCulling (value:Boolean) : void;

		/**
		 * Whether this camera uses a projection matrix.
		 */
		public function set useProjectionMatrix (value:Boolean) : void;

		/**
		 * Sets the distance to the far plane.
		 * @param	value	The distance to the far plane
		 */
		public function set far (value:Number) : void;

		/**
		 * Sets the distance to the near plane (note that this is simply an alias for #focus).
		 * @param	value	The distance to the near plane
		 */
		public function set near (value:Number) : void;

		/**
		 * Sets the orthographic scale of the camera
		 * @param value		The value of the orthographic scale
		 */
		public function set orthoScale (value:Number) : void;

		public function get projection () : Matrix3D;

		/**
		 * Constructor.
		 * @param	fov		This value is the vertical Field Of View (FOV) in degrees.
		 * @param	near	Distance to the near clipping plane.
		 * @param	far		Distance to the far clipping plane.
		 * @param	useCulling		Boolean indicating whether to use frustum culling. When true all objects outside the view will be culled.
		 * @param	useProjection 	Boolean indicating whether to use a projection matrix for perspective.
		 */
		public function Camera3D (fov:Number=60, near:Number=10, far:Number=5000, useCulling:Boolean=false, useProjection:Boolean=false);

		/**
		 * Orbits the camera around the specified target. If no target is specified the 
		 * camera's #target property is used. If this camera's #target property equals null
		 * the camera orbits the origin (0, 0, 0).
		 * @param	pitch	Rotation around X=axis (looking up or down).
		 * @param	yaw		Rotation around Y-axis (looking left or right).
		 * @param	useDegrees 	Whether to use degrees for pitch and yaw (defaults to 'true').
		 * @param	target	An optional target to orbit around.
		 */
		public function orbit (pitch:Number, yaw:Number, useDegrees:Boolean=true, target:DisplayObject3D=null) : void;

		public function projectFaces (faces:Array, object:DisplayObject3D, renderSessionData:RenderSessionData) : Number;

		/**
		 * Projects vertices.
		 * @param	object 					The <code>DisplayObject3D</code> to be projected
		 * @param	renderSessionData		The <code>RenderSessionData</code> holding the containing the camera properties
		 */
		public function projectVertices (vertices:Array, object:DisplayObject3D, renderSessionData:RenderSessionData) : Number;

		/**
		 * Updates the internal camera settings.
		 * @param	viewport
		 */
		public function update (viewport:Rectangle) : void;

		/**
		 * [INTERNAL-USE] Transforms world coordinates into camera space.
		 * @param	transform	An optional transform.
		 */
		public function transformView (transform:Matrix3D=null) : void;

		/**
		 * Creates a transformation that produces a parallel projection.
		 * @param	left
		 * @param	right
		 * @param	bottom
		 * @param	top
		 * @param	near
		 * @param	far
		 * @return	Matrix3D
		 */
		public static function createOrthoMatrix (left:Number, right:Number, bottom:Number, top:Number, near:Number, far:Number) : Matrix3D;

		/**
		 * Creates a transformation that produces a perspective projection.
		 * @param	fov
		 * @param	aspect
		 * @param	near
		 * @param	far
		 * @return	Matrix3D
		 */
		public static function createPerspectiveMatrix (fov:Number, aspect:Number, near:Number, far:Number) : Matrix3D;
	}
}
