package org.papervision3d.objects.parsers
{
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.ProgressEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import org.papervision3d.core.geom.TriangleMesh3D;
	import org.papervision3d.core.geom.renderables.Triangle3D;
	import org.papervision3d.core.geom.renderables.Vertex3D;
	import org.papervision3d.core.log.PaperLogger;
	import org.papervision3d.core.math.Matrix3D;
	import org.papervision3d.core.math.NumberUV;
	import org.papervision3d.core.proto.DisplayObjectContainer3D;
	import org.papervision3d.core.proto.GeometryObject3D;
	import org.papervision3d.core.proto.MaterialObject3D;
	import org.papervision3d.events.FileLoadEvent;
	import org.papervision3d.materials.BitmapFileMaterial;
	import org.papervision3d.materials.utils.MaterialsList;
	import org.papervision3d.objects.DisplayObject3D;

	/**
	 * The Collada class lets you load and parse Collada scenes.
	 * <p/>
	 * Recommended DCC Settings:
	 * <ul><li><b>Maya</b>:
	 * <ul><li>General Export Options
	 * <ul><li>Relative Paths, Triangulate.</li></ul>
	 * <li>Filter Export
	 * <ul><li>Polygon meshes, Normals, Texture Coordinates.</li></ul>
	 * </li></ul>
	 * <li><b>3DS Max</b>:
	 * <ul><li>Standard Options
	 * <ul><li>Relative Paths.</li></ul>
	 * <li>Geometry
	 * <ul><li>Normals, Triangulate.</li></ul>
	 * </li></ul>
	 */
	public class SketchupCollada extends DisplayObject3D
	{
		/**
		 * Default scaling value for constructor.
		 */
		public static var DEFAULT_SCALING : Number;

		/**
		 * Internal scaling value.
		 */
		private static var INTERNAL_SCALING : Number;

		/**
		 * Whether or not the scene has been loaded.
		 */
		public var loaded : Boolean;
		public var materialsToLoad : int;
		private static var COLLADASECTION : String;
		private static var LIBRARYSECTION : String;
		private static var ASSETSECTION : String;
		private static var SCENESECTION : String;
		private static var LIGHTPREFAB : String;
		private static var CAMERAPREFAB : String;
		private static var MATERIALSECTION : String;
		private static var GEOMETRYSECTION : String;
		private static var MESHSECTION : String;
		private static var SOURCESECTION : String;
		private static var ARRAYSECTION : String;
		private static var ACCESSORSECTION : String;
		private static var VERTICESSECTION : String;
		private static var INPUTTAG : String;
		private static var POLYGONSSECTION : String;
		private static var POLYGON : String;
		private static var NODESECTION : String;
		private static var LOOKATNODE : String;
		private static var MATRIXNODE : String;
		private static var PERSPECTIVENODE : String;
		private static var ROTATENODE : String;
		private static var SCALENODE : String;
		private static var TRANSLATENODE : String;
		private static var SKEWNODE : String;
		private static var INSTANCENODE : String;
		private static var INSTACESCENE : String;
		private static var PARAMTAG : String;
		private static var POSITIONINPUT : String;
		private static var VERTEXINPUT : String;
		private static var NORMALINPUT : String;
		private static var TEXCOORDINPUT : String;
		private static var UVINPUT : String;
		private static var TANGENTINPUT : String;
		private var COLLADA : XML;
		private var _container : DisplayObjectContainer3D;
		private var _geometries : Object;
		private var _loader : URLLoader;
		private var _filename : String;
		private var _materials : MaterialsList;
		private var _scaling : Number;
		private var _yUp : Boolean;
		private static var toDEGREES : Number;
		private static var toRADIANS : Number;

		/**
		 * Creates a new Collada object.
		 * <p/>
		 * The Collada class lets you load and parse a Collada scene.
		 * <p/>
		 * COLLADA is a COLLAborative Design Activity for establishing an interchange file format for interactive 3D applications.
		 * <p/>
		 * COLLADA defines an open standard XML schema for exchanging digital assets among various container software applications that might otherwise store their assets in incompatible formats.
		 * <p/>
		 * COLLADA documents that describe digital assets are XML files, usually identified with a .dae (digital asset exchange) filename extension.
		 * <p/>
		 * @param	COLLADA		An XML COLLADA object or the filename of the .dae scene to load.
		 *   <p/>
		 * @param	materials	A MaterialsList object.
		 *   <p/>
		 * @param	scale		Scaling factor.
		 *   <p/>
		 */
		public function SketchupCollada (COLLADA:*, materials:MaterialsList=null, scale:Number=1);

		private function loadCollada () : void;

		private function handleLoadProgress (e:ProgressEvent) : void;

		private function handleIOError (e:IOErrorEvent) : void;

		private function handleSecurityLoadError (e:SecurityErrorEvent) : void;

		private function onComplete (evt:Event) : void;

		private function buildCollada () : void;

		private function parseScene (scene:XML) : void;

		private function parseNode (node:XML, parent:DisplayObjectContainer3D) : void;

		private function parseGeometry (geometry:XML, instance:DisplayObject3D, matrix2:Matrix3D=null, bindMaterial:Object=null) : void;

		private function buildObject (semantics:Object, instance:DisplayObject3D, matrix:Matrix3D=null) : void;

		private function getArray (spaced:String) : Array;

		private function addMaterial (instance:DisplayObject3D, name:String, bindMaterial:Object) : void;

		private function onMaterialLoadComplete (event:FileLoadEvent) : void;

		private function onMaterialLoadError (event:FileLoadEvent) : void;

		private function getTexture (name:String) : String;

		private function rotateMatrix (vector:Array) : Matrix3D;

		private function translateMatrix (vector:Array) : Matrix3D;

		private function scaleMatrix (vector:Array) : Matrix3D;

		private function bakedMatrix (matrix:Matrix3D) : Matrix3D;

		private function deserialize (input:XML, geo:XML) : Array;

		public function getMaterialsList () : MaterialsList;

		private function getId (url:String) : String;
	}
}
