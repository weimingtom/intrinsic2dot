package org.papervision3d.objects.parsers
{
	import org.papervision3d.core.animation.channel.Channel3D;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.ProgressEvent;
	import flash.system.Capabilities;
	import flash.utils.ByteArray;
	import flash.utils.Dictionary;
	import org.ascollada.ASCollada;
	import org.ascollada.core.*;
	import org.ascollada.fx.*;
	import org.ascollada.io.DaeReader;
	import org.ascollada.namespaces.*;
	import org.ascollada.types.*;
	import org.papervision3d.Papervision3D;
	import org.papervision3d.core.animation.IAnimatable;
	import org.papervision3d.core.animation.IAnimationProvider;
	import org.papervision3d.core.animation.channel.controller.MorphWeightChannel3D;
	import org.papervision3d.core.animation.channel.geometry.VertexChannel3D;
	import org.papervision3d.core.animation.channel.transform.*;
	import org.papervision3d.core.animation.clip.AnimationClip3D;
	import org.papervision3d.core.animation.key.LinearCurveKey3D;
	import org.papervision3d.core.animation.curve.Curve3D;
	import org.papervision3d.core.controller.*;
	import org.papervision3d.core.geom.*;
	import org.papervision3d.core.geom.renderables.*;
	import org.papervision3d.core.log.PaperLogger;
	import org.papervision3d.core.material.AbstractLightShadeMaterial;
	import org.papervision3d.core.math.*;
	import org.papervision3d.core.proto.*;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.events.FileLoadEvent;
	import org.papervision3d.materials.*;
	import org.papervision3d.materials.shaders.ShadedMaterial;
	import org.papervision3d.materials.special.*;
	import org.papervision3d.materials.utils.*;
	import org.papervision3d.objects.DisplayObject3D;
	import org.papervision3d.objects.special.Skin3D;

	/**
	 * The DAE class represents a parsed COLLADA 1.4.1 file.
	 * 
	 *   <p>Typical use case:</p>
	 * <pre>
	 * var dae :DAE = new DAE();
	 * 
	 *   dae.addEventListener(FileLoadEvent.LOAD_COMPLETE, myOnLoadCompleteHandler);
	 * 
	 *   dae.load( "path/to/collada" );
	 * </pre>
	 * 
	 *   <p>Its possible to pass you own materials via a MaterialsList:</p>
	 * <pre>
	 * var materials :MaterialsList = new MaterialsList();
	 * 
	 *   materials.addMaterial( new ColorMaterial(), "MyMaterial" );
	 * 
	 *   var dae :DAE = new DAE();
	 * 
	 *   dae.addEventListener(FileLoadEvent.LOAD_COMPLETE, myOnLoadCompleteHandler);
	 * 
	 *   dae.load( "path/to/collada", materials );
	 * </pre>
	 * <p>Note that in above case you need the material names as specified in your 3D modelling application.
	 * The material names can also be found by looking at the COLLADA file: find the xml elements 
	 * &lt;instance_material symbol="MyMaterialName" target="SomeTarget" /&gt;. The material names are specified
	 * by the symbol attribute of this element.</p>
	 * 
	 *   <p>A COLLADA file can contain animations. Animations take a long time to parse, hence 
	 * animations are parsed asynchroniously. Listen for FileLoadEvent.ANIMATIONS_COMPLETE and 
	 * FileLoadEvent.ANIMATIONS_PROGRESS:</p>
	 * <pre>
	 * var dae :DAE = new DAE();
	 * 
	 *   dae.addEventListener(FileLoadEvent.LOAD_COMPLETE, myOnLoadCompleteHandler);
	 * dae.addEventListener(FileLoadEvent.ANIMATIONS_COMPLETE, myOnAnimationsCompleteHandler);
	 * dae.addEventListener(FileLoadEvent.ANIMATIONS_PROGRESS, myOnAnimationsProgressHandler);
	 * 
	 *   dae.load( "path/to/collada" );
	 * </pre>
	 * @author Tim Knip
	 */
	public class DAE extends DisplayObject3D implements IAnimatable, IAnimationProvider, IControllerProvider
	{
		public static const ROOTNODE_NAME : String = "COLLADA_Scene";

		/// Default line color for splines.
		public static var DEFAULT_LINE_COLOR : uint;

		/// Default line width for splines
		public static var DEFAULT_LINE_WIDTH : Number;

		/// change this to a value > 0 if you're DAE is picking the wrong coordinates
		public var forceCoordSet : int;

		/// The loaded XML.
		public var COLLADA : XML;

		/// The filename - if applicable.
		public var filename : String;

		/// The filetitle - if applicable.
		public var fileTitle : String;

		/// Base url.
		public var baseUrl : String;

		/// The COLLADA parser.
		public var parser : DaeReader;

		/// The DaeDocument. @see org.ascollada.core.DaeDocument
		public var document : DaeDocument;
		protected var _animation : AnimationController;
		protected var _colladaID : Dictionary;
		protected var _colladaSID : Dictionary;
		protected var _colladaIDToObject : Object;
		protected var _colladaSIDToObject : Object;
		protected var _objectToNode : Object;
		protected var _rootNode : DisplayObject3D;
		protected var _autoPlay : Boolean;
		protected var _rightHanded : Boolean;
		protected var _controllers : Array;
		protected var _playerType : String;
		protected var _loop : Boolean;
		protected var _fileSearchPaths : Array;
		private static var _numClone : int;

		/**
		 * Gets / sets the animation controller.
		 * @see org.papervision3d.core.controller.AnimationController
		 */
		public function set animation (value:AnimationController) : void;
		public function get animation () : AnimationController;

		/**
		 * Gets all controlllers.
		 * @return	Array of controllers.
		 * @see org.papervision3d.core.controller.IObjectController
		 * @see org.papervision3d.core.controller.AnimationController
		 * @see org.papervision3d.core.controller.MorphController
		 * @see org.papervision3d.core.controller.SkinController
		 */
		public function get controllers () : Array;
		public function set controllers (value:Array) : void;

		/**
		 * Whether the animation is playing. This property is read-only.
		 * @return True when playing.
		 */
		public function get playing () : Boolean;

		/// Whether the COLLADA uses Y-up, Z-up otherwise.
		public function get yUp () : Boolean;

		public function set rootNode (value:DisplayObject3D) : void;
		public function get rootNode () : DisplayObject3D;

		/**
		 * Constructor.
		 * @param	autoPlay	Whether to start the _animation automatically.
		 * @param	name	Optional name for the DAE.
		 */
		public function DAE (autoPlay:Boolean=true, name:String=null, loop:Boolean=false);

		/**
		 * Pauses the animation.
		 */
		public function pause () : void;

		/**
		 * Plays the animation.
		 * @param 	clip	Clip to play. Default is "all"
		 * @param 	loop	Whether the animation should loop. Default is true.
		 */
		public function play (clip:String="all", loop:Boolean=true) : void;

		/**
		 * Resumes a paused animation.
		 * @param loop 	Whether the animation should loop. Defaults is true.
		 */
		public function resume (loop:Boolean=true) : void;

		/**
		 * Stops the animation.
		 */
		public function stop () : void;

		/**
		 *
		 */
		public function addFileSearchPath (path:String) : void;

		/**
		 *
		 */
		public function clone () : DisplayObject3D;

		private function getObjectByTransform (object:DisplayObject3D, transform:Matrix3D) : DisplayObject3D;

		/**
		 * Loads the COLLADA.
		 * @param	asset The url, an XML object or a ByteArray specifying the COLLADA file.
		 * @param	materials	An optional materialsList.
		 */
		public function load (asset:*, materials:MaterialsList=null, asynchronousParsing:Boolean=false) : void;

		/**
		 * Removes a child.
		 * @param	child	The child to remove
		 * @return	The removed child
		 */
		public function removeChild (child:DisplayObject3D) : DisplayObject3D;

		/**
		 * Project.
		 * @param	parent
		 * @param	renderSessionData
		 * @return	Number
		 */
		public function project (parent:DisplayObject3D, renderSessionData:RenderSessionData) : Number;

		/**
		 *
		 */
		protected function buildAnimatedTransforms (object:DisplayObject3D, node:DaeNode, channels:Array, bakeChannels:Boolean=true) : void;

		/**
		 * Builds animated vertices if needed. 
		 * NOTE: this is a Feeling specific feature. Its not part of the COLLADA 1.4.1 spec.
		 * @param target
		 * @param vertices
		 */
		protected function buildAnimatedVertices (target:TriangleMesh3D, vertices:DaeVertices) : void;

		/**
		 *
		 */
		protected function buildAnimationClips () : void;

		/**
		 * Builds the _animation for an object and its children.
		 * @param object
		 */
		protected function buildAnimations (object:DisplayObject3D) : void;

		/**
		 * Links the controllers to the objects.
		 * @param instance
		 */
		protected function buildControllers (instance:DisplayObject3D=null) : void;

		/**
		 *
		 * @param	asset
		 * @return
		 */
		protected function buildFileInfo (asset:*) : void;

		/**
		 *
		 */
		protected function buildGeometry (target:TriangleMesh3D, daeGeometry:DaeGeometry, daeBindMaterial:DaeBindMaterial) : void;

		/**
		 *
		 */
		protected function buildGeometryLines (target:Lines3D, daeGeometry:DaeGeometry, daeBindMaterial:DaeBindMaterial) : void;

		/**
		 *
		 */
		protected function buildMaterialInstance (daeInstanceMaterial:DaeInstanceMaterial, outBVI:DaeBindVertexInput) : MaterialObject3D;

		/**
		 * Builds a Matrix3D from a node's transform array.
		 * @see org.ascollada.core.DaeNode#transforms
		 * @param	node
		 * @return
		 */
		protected function buildMatrix (node:DaeNode) : Matrix3D;

		/**
		 *
		 * @param	node
		 * @return
		 */
		protected function buildMatrixFromTransform (transform:DaeTransform) : Matrix3D;

		/**
		 *
		 * @param	node
		 * @return
		 */
		protected function buildMatrixStack (node:DaeNode) : Array;

		/**
		 *
		 */
		protected function buildMesh (node:DaeNode) : DisplayObject3D;

		/**
		 * Builds a morph controller.
		 * @param instance
		 * @param morph
		 * @param bindMaterial
		 * @return
		 */
		protected function buildMorphController (instance:TriangleMesh3D, morph:DaeMorph) : MorphController;

		/**
		 * Builds a DisplayObject3D from a node.
		 * @see org.ascollada.core.DaeNode
		 * @param	node
		 * @return	The created DisplayObject3D.
		 * @see org.papervision3d.objects.DisplayObject3D
		 */
		protected function buildNode (node:DaeNode, parent:DisplayObject3D) : void;

		/**
		 * Builds a primitive.
		 * @param mesh
		 * @param daePrimitive
		 * @param daeInstanceMaterial
		 * @param vertexStart
		 */
		protected function buildPrimitive (mesh:TriangleMesh3D, daePrimitive:DaePrimitive, daeInstanceMaterial:DaeInstanceMaterial, vertexStart:int) : void;

		/**
		 * Builds the scene.
		 */
		protected function buildScene () : void;

		/**
		 * Builds a skin controller.
		 * @param instance
		 * @param skin
		 */
		protected function buildSkinController (instance:DisplayObject3D, skin:DaeSkin) : SkinController;

		/**
		 * Builds vertices from a COLLADA mesh.
		 * @param	mesh	The COLLADA mesh.
		 * @see org.ascollada.core.DaeMesh
		 * @return	Array of Vertex3D
		 */
		protected function buildVertices (mesh:DaeMesh) : Array;

		/**
		 * Called when the parser completed parsing animations.
		 * @param	event
		 */
		protected function onParseAnimationsComplete (event:Event=null) : void;

		/**
		 * Called on parse animations progress.
		 * @param	event
		 */
		protected function onParseAnimationsProgress (event:ProgressEvent) : void;

		/**
		 * Called when the DaeReader completed parsing.
		 * @param	event
		 */
		protected function onParseComplete (event:Event) : void;

		/**
		 * Called on parsing error (invalid file name)
		 * @param	event
		 */
		protected function onParseError (event:IOErrorEvent) : void;

		/**
		 * Called on parsing progress.
		 * @param	event
		 */
		protected function onParseProgress (event:ProgressEvent) : void;
	}
}
