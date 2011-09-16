package org.papervision3d.objects
{
	import flash.display.BlendMode;
	import org.papervision3d.Papervision3D;
	import org.papervision3d.core.culling.FrustumTestMethod;
	import org.papervision3d.core.data.UserData;
	import org.papervision3d.core.geom.renderables.Triangle3D;
	import org.papervision3d.core.log.PaperLogger;
	import org.papervision3d.core.material.AbstractLightShadeMaterial;
	import org.papervision3d.core.math.Matrix3D;
	import org.papervision3d.core.math.Number3D;
	import org.papervision3d.core.math.Quaternion;
	import org.papervision3d.core.proto.CameraObject3D;
	import org.papervision3d.core.proto.DisplayObjectContainer3D;
	import org.papervision3d.core.proto.GeometryObject3D;
	import org.papervision3d.core.proto.MaterialObject3D;
	import org.papervision3d.core.proto.SceneObject3D;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.materials.shaders.ShadedMaterial;
	import org.papervision3d.materials.utils.MaterialsList;
	import org.papervision3d.view.Viewport3D;
	import org.papervision3d.view.layer.ViewportLayer;

	/**
	 * The DisplayObject class represents instances of 3D objects that are contained in the scene.
	 * <p/>
	 * That includes all objects in the scene, not only those that can be rendered, but also the camera and its target.
	 * <p/>
	 * The DisplayObject3D class supports basic functionality like the x, y and z position of an object, as well as rotationX, rotationY, rotationZ, scaleX, scaleY and scaleZ and visible. It also supports more advanced properties of the object such as its transform Matrix3D.
	 * <p/>
	 * <p/>
	 * DisplayObject3D is not an abstract base class; therefore, you can call DisplayObject3D directly. Invoking new DisplayObject() creates a new empty object in 3D space, like when you used createEmptyMovieClip().
	 * 
	 */
	public class DisplayObject3D extends DisplayObjectContainer3D
	{
		/**
		 * tells Mesh3D's render() method to sort by measuring from the center of a triangle
		 */
		public static const MESH_SORT_CENTER : uint = 1;

		/**
		 * tells Mesh3D's render() method to sort by measuring from the farthest point of a triangle
		 */
		public static const MESH_SORT_FAR : uint = 2;

		/**
		 * tells Mesh3D's render() method to sort by measuring from the closest point of a triangle
		 */
		public static const MESH_SORT_CLOSE : uint = 3;

		/**
		 * A Matrix3D object containing values that affect the scaling, rotation, and translation of the display object.
		 */
		public var transform : Matrix3D;

		/**
		 * [internal-use] A camera transformed Matrix3D object.
		 */
		public var view : Matrix3D;

		/**
		 * World transformation.
		 */
		public var world : Matrix3D;

		/**
		 * [internal-use]
		 */
		public var faces : Array;

		/**
		 * This allows objects faces to have their own containers.
		 */
		public static var faceLevelMode : Boolean;
		public static var sortedArray : Array;

		/**
		 * The GeometryObject3D object that contains the 3D definition of this instance.
		 * <p/>
		 * When different objects share the same geometry, they become instances. They are the same object, displayed multiple times. Changing the shape of this object changes the shape of all of its instances.
		 * <p/>
		 * Instancing an object saves system memory, and is useful to display an object multiple times while maintaining its shape.
		 * <p/>
		 * For example, you could create armies and forests full of duplicate objects without needing the memory to handle that much actual geometry. Each instance has its own transform node so it can have its own position, rotation, and scaling.
		 */
		public var geometry : GeometryObject3D;

		/**
		 * [internal-use] The average depth of the object faces center. Used internally for z-sorting.
		 */
		public var screenZ : Number;

		/**
		 * [internal use] Is this object culled by camera frustum?
		 */
		public var culled : Boolean;

		/**
		 * The list of materials for this instance.
		 */
		public var materials : MaterialsList;

		/**
		 * tells Mesh3D's render() method to compare the measurement choice of the user for a triangle's sorting
		 */
		public var meshSort : uint;
		public var container : ViewportLayer;
		public var alpha : Number;
		public var blendMode : String;
		public var filters : Array;
		public var parentContainer : DisplayObject3D;
		public var flipLightDirection : Boolean;
		public var frustumTestMethod : int;

		/**
		 * [read-only] Indicates the DisplayObjectContainer3D object that contains this display object.
		 */
		public var parent : DisplayObjectContainer3D;

		/**
		 * [read-only] The coordinate of the object on screen.
		 */
		public var screen : Number3D;

		/**
		 * Whether or not the display object is visible.
		 * <p/>
		 * A Boolean value that indicates whether the object is projected, transformed and rendered. A value of false will effectively ignore the object. The default value is true.
		 */
		public var visible : Boolean;

		/**
		 * An optional object name.
		 */
		public var name : String;

		/**
		 * [read-only] Unique id of this instance.
		 */
		public var id : int;

		/**
		 * An object that contains user defined properties.
		 * <p/>
		 * All properties of the extra field are copied into the new instance. The properties specified with extra are publicly available.
		 */
		public var extra : Object;
		public var cullTest : Number;
		public var useClipping : Boolean;
		public var testQuad : Boolean;

		/**
		 * Relative directions.
		 */
		private static const FORWARD : Number3D = new Number3D( 0, 0, 1 );
		private static const BACKWARD : Number3D = new Number3D( 0, 0, -1 );
		private static const LEFT : Number3D = new Number3D( -1, 0, 0 );
		private static const RIGHT : Number3D = new Number3D( 1, 0, 0 );
		private static const UP : Number3D = new Number3D( 0, 1, 0 );
		private static const DOWN : Number3D = new Number3D( 0, -1, 0 );
		private static var _tempMatrix : Matrix3D;
		private static var _tempQuat : Quaternion;
		private static var _newID : int;
		private static var toDEGREES : Number;
		private static var toRADIANS : Number;
		private static var entry_count : uint;

		/**
		 * [internal-use]
		 */
		protected var _transformDirty : Boolean;
		protected var _sorted : Array;
		protected var _useOwnContainer : Boolean;
		protected var _userData : UserData;

		/**
		 * The scene where the object belongs.
		 */
		protected var _scene : SceneObject3D;

		/**
		 * pre-made Number3Ds and Matrix3Ds for use in the lookAt function
		 * and others
		 * 
		 */
		private var _position : Number3D;
		private var _lookatTarget : Number3D;
		private var _zAxis : Number3D;
		private var _xAxis : Number3D;
		private var _yAxis : Number3D;
		private var _rotation : Number3D;
		private var _rotationDirty : Boolean;
		private var _rotationX : Number;
		private var _rotationY : Number;
		private var _rotationZ : Number;
		private var _scaleX : Number;
		private var _scaleY : Number;
		private var _scaleZ : Number;
		private var _scaleDirty : Boolean;
		private var _tempScale : Number3D;
		private var _numClones : uint;
		private var _material : MaterialObject3D;
		private var _rot : Quaternion;
		private var _qPitch : Quaternion;
		private var _qYaw : Quaternion;
		private var _qRoll : Quaternion;
		private var _localRotationX : Number;
		private var _localRotationY : Number;
		private var _localRotationZ : Number;
		private var _autoCalcScreenCoords : Boolean;

		/**
		 * Returns an empty DiplayObject3D object positioned in the center of the 3D coordinate system (0, 0 ,0).
		 */
		public static function get ZERO () : DisplayObject3D;

		public function set useOwnContainer (value:Boolean) : void;
		public function get useOwnContainer () : Boolean;

		public function set userData (userData:UserData) : void;
		public function get userData () : UserData;

		/**
		 * An Number that sets the X coordinate of a object relative to the origin of its parent.
		 */
		public function get x () : Number;
		public function set x (value:Number) : void;

		/**
		 * An Number that sets the Y coordinate of a object relative to the origin of its parent.
		 */
		public function get y () : Number;
		public function set y (value:Number) : void;

		/**
		 * An Number that sets the Z coordinate of a object relative to the origin of its parent.
		 */
		public function get z () : Number;
		public function set z (value:Number) : void;

		/**
		 * A Number3D containing the current x, y, and z of the DisplayObject3D
		 */
		public function get position () : Number3D;
		public function set position (n:Number3D) : void;

		/**
		 * Specifies the rotation around the X axis from its original orientation.
		 */
		public function get rotationX () : Number;
		public function set rotationX (rot:Number) : void;

		/**
		 * Specifies the rotation around the Y axis from its original orientation.
		 */
		public function get rotationY () : Number;
		public function set rotationY (rot:Number) : void;

		/**
		 * Specifies the rotation around the Z axis from its original orientation.
		 */
		public function get rotationZ () : Number;
		public function set rotationZ (rot:Number) : void;

		/**
		 * Sets the 3D scale as applied from the registration point of the object.
		 */
		public function get scale () : Number;
		public function set scale (scale:Number) : void;

		/**
		 * Sets the scale along the local X axis as applied from the registration point of the object.
		 */
		public function get scaleX () : Number;
		public function set scaleX (scale:Number) : void;

		/**
		 * Sets the scale along the local Y axis as applied from the registration point of the object.
		 */
		public function get scaleY () : Number;
		public function set scaleY (scale:Number) : void;

		/**
		 * Sets the scale along the local Z axis as applied from the registration point of the object.
		 */
		public function get scaleZ () : Number;
		public function set scaleZ (scale:Number) : void;

		/**
		 * The X coordinate of a object relative to the scene coordinate system.
		 */
		public function get sceneX () : Number;

		/**
		 * The Y coordinate of a object relative to the scene coordinate system.
		 */
		public function get sceneY () : Number;

		/**
		 * The Z coordinate of a object relative to the scene coordinate system.
		 */
		public function get sceneZ () : Number;

		/**
		 * The default material for the object instance. Materials collect data about how objects appear when rendered.
		 */
		public function set material (material:MaterialObject3D) : void;
		public function get material () : MaterialObject3D;

		public function set scene (p_scene:SceneObject3D) : void;
		public function get scene () : SceneObject3D;

		public function set autoCalcScreenCoords (autoCalculateScreenCoords:Boolean) : void;
		public function get autoCalcScreenCoords () : Boolean;

		/**
		 * Rotate the display object around its lateral or transverse axis —an axis running from the pilot's left to right in piloted aircraft, and parallel to the wings of a winged aircraft; thus the nose pitches up and the tail down, or vice-versa.
		 * @param	angle	The angle to rotate.
		 */
		public function set localRotationX (angle:Number) : void;
		public function get localRotationX () : Number;

		/**
		 * Rotate the display object around about the vertical axis —an axis drawn from top to bottom.
		 * @param	angle	The angle to rotate.
		 */
		public function set localRotationY (angle:Number) : void;
		public function get localRotationY () : Number;

		/**
		 * Rotate the display object around the longitudinal axis —an axis drawn through the body of the vehicle from tail to nose in the normal direction of flight, or the direction the object is facing.
		 * @param	angle
		 */
		public function set localRotationZ (angle:Number) : void;
		public function get localRotationZ () : Number;

		/**
		 * Creates a new DisplayObject3D instance. After creating the instance, call the addChild() method of a DisplayObjectContainer3D.
		 * @param	name		[optional] - The name of the newly created object.
		 * @param	geometry	[optional] - The geometry of the newly created object.
		 *   
		 *     <ul>
		 *   <li><b>x</b></b>: An Number that sets the X coordinate of a object relative to the scene coordinate system.</li>
		 *   <p/>
		 *   <li><b>y</b>: An Number that sets the Y coordinate of a object relative to the scene coordinate system.</li>
		 *   <p/>
		 *   <li><b>z</b>: An Number that sets the Z coordinate of a object relative to the scene coordinate system.</li>
		 *   <p/>
		 *   <li><b>rotationX</b>: Specifies the rotation around the X axis from its original orientation.</li>
		 *   <p/>
		 *   <li><b>rotationY</b>: Specifies the rotation around the Y axis from its original orientation.</li>
		 *   <p/>
		 *   <li><b>rotationZ</b>: Specifies the rotation around the Z axis from its original orientation.</li>
		 *   <p/>
		 *   <li><b>scaleX</b>: Sets the scale along the local X axis as applied from the registration point of the object.</li>
		 *   <p/>
		 *   <li><b>scaleY</b>: Sets the scale along the local Y axis as applied from the registration point of the object.</li>
		 *   <p/>
		 *   <li><b>scaleZ</b>: Sets the scale along the local Z axis as applied from the registration point of the object.</li>
		 *   <p/>
		 *   <li><b>visible</b>: Whether or not the display object is visible.
		 *   <p/>
		 *   A Boolean value that indicates whether the object is projected, transformed and rendered. A value of false will effectively ignore the object. The default value is true.</li>
		 *   <p/>
		 *   <li><b>container</b>: The MovieClip that you draw into when rendering. Use only when the object is rendered in its own unique MovieClip.
		 *   <p/>
		 *   It's Boolean value determines whether the container MovieClip should be cleared before rendering.</li>
		 *   <p/>
		 *   <li><b>extra</b>: An object that contains user defined properties.
		 *   <p/>
		 *   All properties of the extra field are copied into the new instance. The properties specified with extra are publicly available.</li>
		 *   </ul>
		 */
		public function DisplayObject3D (name:String=null, geometry:GeometryObject3D=null);

		/**
		 * Adds a child DisplayObject3D instance to this DisplayObjectContainer instance.
		 * 
		 *   [TODO: If you add a child object that already has a different display object container as a parent, the object is removed from the child list of the other display object container.]
		 * @param	child	The DisplayObject3D instance to add as a child of this DisplayObjectContainer3D instance.
		 * @param	name	An optional name of the child to add or create. If no name is provided, the child name will be used.
		 * @return	The DisplayObject3D instance that you have added or created.
		 */
		public function addChild (child:DisplayObject3D, name:String=null) : DisplayObject3D;

		/**
		 * Adds a geometry definition to the instance.
		 * 
		 *   A geometry describes the visual shape and appearance of an object in a scene.
		 * @param	geometry	A geometry definition.
		 */
		public function addGeometry (geometry:GeometryObject3D=null) : void;

		/**
		 * Clones this object.
		 * @return	The cloned DisplayObject3D.
		 */
		public function clone () : DisplayObject3D;

		/**
		 * Gets the distance to the position of the given object.
		 * @param	obj		The display object to measure the distance to.
		 * @return	The distance to the registration point of the given object.
		 */
		public function distanceTo (obj:DisplayObject3D) : Number;

		/**
		 * Evaluates the display object to see if it overlaps or intersects with the point specified by the x, y and z parameters.
		 * <p/>
		 * The x, y and z parameters specify a point in the coordinate space of the instance parent object, not the scene (unless that parent object is the scene).
		 * @param	x	The x coordinate to test against this object.
		 * @param	y	The y coordinate to test against this object.
		 * @param	z	The z coordinate to test against this object.
		 * @return	true if the display object overlaps or intersects with the specified point; false otherwise.
		 */
		public function hitTestPoint (x:Number, y:Number, z:Number) : Boolean;

		public function hitTestObject (obj:DisplayObject3D, multiplier:Number=1) : Boolean;

		public function getMaterialByName (name:String) : MaterialObject3D;

		public function materialsList () : String;

		/**
		 * Replaces a material by its name.
		 * @param	material
		 * @param	name
		 * @return
		 */
		public function replaceMaterialByName (material:MaterialObject3D, name:String) : void;

		/**
		 * Sets the material for a child DisplayObject3D.
		 * @param child		A child DisplayObject3D of this DAE.
		 * @param material	The new material for the child.
		 * @param existingMaterial Optional existing material to be replaced.
		 */
		public function setChildMaterial (child:DisplayObject3D, material:MaterialObject3D, existingMaterial:MaterialObject3D=null) : void;

		/**
		 * Sets the material for a child DisplayObject3D by the child's name.
		 * @param childName The name of the DisplayObject3D.
		 * @param material	The new material for the child.
		 */
		public function setChildMaterialByName (childName:String, material:MaterialObject3D) : void;

		/**
		 *
		 * @param	do3d
		 * @param	existingMaterial
		 * @param	newMaterial
		 */
		private function updateMaterials (do3d:DisplayObject3D, existingMaterial:MaterialObject3D, newMaterial:MaterialObject3D) : void;

		/**
		 * [internal-use] Projects three dimensional coordinates onto a two dimensional plane to simulate the relationship of the camera to subject.
		 * <p/>
		 * This is the first step in the process of representing three dimensional shapes two dimensionally.
		 * @param	parent	The DisplayObject3D object that contains this display object.
		 * @param	renderSessionData Data for the current render.
		 */
		public function project (parent:DisplayObject3D, renderSessionData:RenderSessionData) : Number;

		/**
		 *
		 */
		public function calculateScreenCoords (camera:CameraObject3D) : void;

		/**
		 * Translate the display object in the direction it is facing, i.e. it's positive Z axis.
		 * @param	distance	The distance that the object should move forward.
		 */
		public function moveForward (distance:Number) : void;

		/**
		 * Translate the display object in the opposite direction it is facing, i.e. it's negative Z axis.
		 * @param	distance	The distance that the object should move backward.
		 */
		public function moveBackward (distance:Number) : void;

		/**
		 * Translate the display object lateraly, to the left of the direction it is facing, i.e. it's negative X axis.
		 * @param	distance	The distance that the object should move left.
		 */
		public function moveLeft (distance:Number) : void;

		/**
		 * Translate the display object lateraly, to the right of the direction it is facing, i.e. it's positive X axis.
		 * @param	distance	The distance that the object should move right.
		 */
		public function moveRight (distance:Number) : void;

		/**
		 * Translate the display object upwards, with respect to the direction it is facing, i.e. it's positive Y axis.
		 * @param	distance	The distance that the object should move up.
		 */
		public function moveUp (distance:Number) : void;

		/**
		 * Translate the display object downwards, with respect to the direction it is facing, i.e. it's negative Y axis.
		 * @param	distance	The distance that the object should move down.
		 */
		public function moveDown (distance:Number) : void;

		/**
		 * Move the object along a given direction.
		 * @param	distance	The distance that the object should travel.
		 * @param	axis		The direction that the object should move towards.
		 */
		public function translate (distance:Number, axis:Number3D) : void;

		/**
		 * Rotate the display object around its lateral or transverse axis —an axis running from the pilot's left to right in piloted aircraft, and parallel to the wings of a winged aircraft; thus the nose pitches up and the tail down, or vice-versa.
		 * @param	angle	The angle to rotate.
		 */
		public function pitch (angle:Number) : void;

		/**
		 * Rotate the display object around about the vertical axis —an axis drawn from top to bottom.
		 * @param	angle	The angle to rotate.
		 */
		public function yaw (angle:Number) : void;

		/**
		 * Rotate the display object around the longitudinal axis —an axis drawn through the body of the vehicle from tail to nose in the normal direction of flight, or the direction the object is facing.
		 * @param	angle
		 */
		public function roll (angle:Number) : void;

		/**
		 * Make the object look at a specific position.
		 * @param	targetObject	Object to look at.
		 * @param	upAxis			The vertical axis of the universe. Normally the positive Y axis.
		 */
		public function lookAt (targetObject:DisplayObject3D, upAxis:Number3D=null) : void;

		/**
		 * Copies the position information (x, y and z coordinates) from another object or Matrix3D.
		 * @param	reference	A DisplayObject3D or Matrix3D object to copy the position from.
		 */
		public function copyPosition (reference:*) : void;

		/**
		 * Copies the transformation information (position, rotation and scale) from another object or Matrix3D.
		 * @param	reference	A DisplayObject3D or Matrix3D object to copy the position from.
		 */
		public function copyTransform (reference:*) : void;

		/**
		 * Returns a string value representing the three-dimensional position values of the display object instance.
		 * @return	A string.
		 */
		public function toString () : String;

		public function createViewportLayer (viewport:Viewport3D, recurse:Boolean=true) : ViewportLayer;

		public function addChildrenToLayer (do3d:DisplayObject3D, layer:ViewportLayer) : void;

		protected function setParentContainer (parent:DisplayObject3D, assign:Boolean=true) : void;

		public function updateTransform () : void;

		private function updateRotation () : void;
	}
}
