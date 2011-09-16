package org.papervision3d.objects.parsers
{
	import flash.events.*;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import org.papervision3d.core.geom.*;
	import org.papervision3d.core.geom.renderables.Triangle3D;
	import org.papervision3d.core.geom.renderables.Vertex3D;
	import org.papervision3d.core.log.PaperLogger;
	import org.papervision3d.core.math.NumberUV;
	import org.papervision3d.core.proto.*;
	import org.papervision3d.events.FileLoadEvent;

	/**
	 * The Ase class lets you load and parse ASE format objects exported from 3DS Max.
	 * <p/>
	 * Only the geometry and mapping of one mesh is currently parsed.
	 * <p/>
	 * For more complex objects, it is recommended to import Collada scenes with addCollada method.
	 */
	public class Ase extends TriangleMesh3D
	{
		/**
		 * Whether or not the scene has been loaded.
		 */
		public var loaded : Boolean;

		/**
		 * Default scaling value for constructor.
		 */
		public static var DEFAULT_SCALING : Number;

		/**
		 * Internal scaling value.
		 */
		public static var INTERNAL_SCALING : Number;
		private var _scaleAse : Number;
		private var _loaderAse : URLLoader;
		private var _filename : String;

		/**
		 * Creates a new Ase object that will load and parse a 3DS Max exported .ASE mesh.
		 * <p/>
		 * Only the geometry and mapping of one mesh is currently parsed.
		 * <p/>
		 * @param	material	A MaterialObject3D object that contains the material properties of the object.
		 *   <p/>
		 * @param	filename	Filename of the .ASE object to parse.
		 *   <p/>
		 * @param	scale		Scaling factor.
		 *   <p/>
		 */
		public function Ase (material:MaterialObject3D, filename:String, scale:Number=1);

		private function loadAse (filename:String) : void;

		/**
		 * Taken from w3d at http://blog.andre-michelle.com/2005/flash8-sourcecodes
		 * By Andre Michelle, with much respect
		 */
		private function parseAse (e:Event) : void;

		private function ioErrorHandler (event:IOErrorEvent) : void;

		private function progressHandler (event:ProgressEvent) : void;
	}
}
