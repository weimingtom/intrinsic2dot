package org.papervision3d.objects.parsers
{
	import nochump.util.zip.*;
	import org.ascollada.namespaces.*;
	import org.papervision3d.core.geom.*;
	import org.papervision3d.events.FileLoadEvent;
	import org.papervision3d.materials.*;
	import org.papervision3d.materials.utils.*;
	import flash.display.Bitmap;
	import flash.display.Loader;
	import flash.events.*;
	import flash.net.URLLoader;
	import flash.net.URLLoaderDataFormat;
	import flash.net.URLRequest;
	import flash.utils.*;

	/**
	 *
	 * @author Tim Knip
	 */
	public class KMZ extends TriangleMesh3D
	{
		/// The DAE
		public var dae : DAE;
		private var _loadedTextures : uint;
		private var _totalTextures : uint;
		private var _loadedDAE : ByteArray;

		/**
		 * Constructor.
		 */
		public function KMZ (name:String=null);

		/**
		 * Loads a KMZ.
		 * @param	asset	URL or ByteArray.
		 */
		public function load (asset:*, materials:MaterialsList=null) : void;

		private function progressHandler (event:ProgressEvent) : void;

		private function securityErrorHandler (event:SecurityErrorEvent) : void;

		private function httpStatusHandler (event:HTTPStatusEvent) : void;

		private function ioErrorHandler (event:IOErrorEvent) : void;

		/**
		 * Gets the COLLADA from the zip.
		 * @param	zipFile
		 */
		private function getColladaFromZip (zipFile:ZipFile) : ByteArray;

		/**
		 * The KMZ was successfully loaded.
		 * @param 	event
		 */
		private function onLoadComplete (event:Event) : void;

		/**
		 * A texture was successfully loaded.
		 * @param 	event
		 */
		private function onTextureComplete (event:Event=null) : void;

		/**
		 *
		 */
		private function onColladaComplete (event:Event) : void;

		/**
		 * Parse the KMZ data.
		 * @param	data
		 */
		private function parse (data:ByteArray) : void;

		/**
		 * Gets the number of textures inside a zip.
		 * @param	zipFile
		 * @return	The number of textures.
		 */
		private function numTexturesInZip (zipFile:ZipFile) : uint;
	}
}
