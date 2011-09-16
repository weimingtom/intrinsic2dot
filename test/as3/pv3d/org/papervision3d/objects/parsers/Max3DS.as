package org.papervision3d.objects.parsers
{
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLLoaderDataFormat;
	import flash.net.URLRequest;
	import flash.utils.ByteArray;
	import flash.utils.Endian;
	import org.papervision3d.Papervision3D;
	import org.papervision3d.core.geom.TriangleMesh3D;
	import org.papervision3d.core.geom.renderables.Triangle3D;
	import org.papervision3d.core.geom.renderables.Vertex3D;
	import org.papervision3d.core.math.NumberUV;
	import org.papervision3d.core.proto.MaterialObject3D;
	import org.papervision3d.events.FileLoadEvent;
	import org.papervision3d.materials.BitmapFileMaterial;
	import org.papervision3d.materials.ColorMaterial;
	import org.papervision3d.materials.utils.MaterialsList;
	import org.papervision3d.objects.DisplayObject3D;

	/**
	 * 3DS File parser.
	 * @author Tim Knip (based on Away3D's Max3DS class : http://away3d.com)
	 */
	public class Max3DS extends DisplayObject3D
	{
		public var filename : String;
		public const AMBIENT : String = "ambient";
		public const DIFFUSE : String = "diffuse";
		public const SPECULAR : String = "specular";
		public const PRIMARY : int = 0x4D4D;
		public const EDIT3DS : int = 0x3D3D;
		public const KEYF3DS : int = 0xB000;
		public const VERSION : int = 0x0002;
		public const MESH_VERSION : int = 0x3D3E;
		public const KFVERSION : int = 0x0005;
		public const COLOR_F : int = 0x0010;
		public const COLOR_RGB : int = 0x0011;
		public const LIN_COLOR_24 : int = 0x0012;
		public const LIN_COLOR_F : int = 0x0013;
		public const INT_PERCENTAGE : int = 0x0030;
		public const FLOAT_PERC : int = 0x0031;
		public const MASTER_SCALE : int = 0x0100;
		public const IMAGE_FILE : int = 0x1100;
		public const AMBIENT_LIGHT : int = 0X2100;
		public const MESH : int = 0x4000;
		public const MESH_OBJECT : int = 0x4100;
		public const MESH_VERTICES : int = 0x4110;
		public const VERTEX_FLAGS : int = 0x4111;
		public const MESH_FACES : int = 0x4120;
		public const MESH_MATER : int = 0x4130;
		public const MESH_TEX_VERT : int = 0x4140;
		public const MESH_XFMATRIX : int = 0x4160;
		public const MESH_COLOR_IND : int = 0x4165;
		public const MESH_TEX_INFO : int = 0x4170;
		public const HEIRARCHY : int = 0x4F00;
		public const MATERIAL : int = 0xAFFF;
		public const MAT_NAME : int = 0xA000;
		public const MAT_AMBIENT : int = 0xA010;
		public const MAT_DIFFUSE : int = 0xA020;
		public const MAT_SPECULAR : int = 0xA030;
		public const MAT_SHININESS : int = 0xA040;
		public const MAT_FALLOFF : int = 0xA052;
		public const MAT_EMISSIVE : int = 0xA080;
		public const MAT_SHADER : int = 0xA100;
		public const MAT_TEXMAP : int = 0xA200;
		public const MAT_TEXFLNM : int = 0xA300;
		public const OBJ_LIGHT : int = 0x4600;
		public const OBJ_CAMERA : int = 0x4700;
		public const ANIM_HEADER : int = 0xB00A;
		public const ANIM_OBJ : int = 0xB002;
		public const ANIM_NAME : int = 0xB010;
		public const ANIM_POS : int = 0xB020;
		public const ANIM_ROT : int = 0xB021;
		public const ANIM_SCALE : int = 0xB022;
		private var _data : ByteArray;
		private var _textureDir : String;
		private var _textureExtensionReplacements : Object;

		/**
		 * Constuctor
		 * @param	name
		 */
		public function Max3DS (name:String=null);

		/**
		 * Load.
		 * @param	asset
		 * @param	materials
		 * @param	textureDir
		 */
		public function load (asset:*, materials:MaterialsList=null, textureDir:String="./image/") : void;

		/**
		 * Replaces a texture extension with an alternative extension.
		 * @param	originalExtension	For example "bmp", "gif", etc
		 * @param	preferredExtension	For example "png"
		 */
		public function replaceTextureExtension (originalExtension:String, preferredExtension:String="png") : void;

		/**
		 * Build a mesh
		 * @param	meshData
		 */
		private function buildMesh (meshData:MeshData) : void;

		/**
		 *
		 * @param	event
		 */
		private function onFileLoadComplete (event:Event=null) : void;

		/**
		 *
		 * @param	event
		 */
		private function onFileLoadError (event:IOErrorEvent) : void;

		/**
		 * Parse.
		 * @param	data
		 */
		private function parse (data:ByteArray) : void;

		/**
		 * Read the base 3DS object.
		 * @param chunk
		 *   
		 */
		private function parse3DS (chunk:Chunk3ds) : void;

		/**
		 * Read the Edit chunk
		 * @param chunk
		 */
		private function parseEdit3DS (chunk:Chunk3ds) : void;

		/**
		 * Read a material chunk.
		 * @param	chunk
		 */
		private function parseMaterial (chunk:Chunk3ds) : String;

		private function parseMesh (chunk:Chunk3ds, meshData:MeshData) : void;

		/**
		 *
		 * @param	chunk
		 */
		private function readMeshFaces (chunk:Chunk3ds) : Array;

		/**
		 * Read the Mesh Material chunk
		 * @param chunk
		 */
		private function readMeshMaterial (chunk:Chunk3ds, meshData:MeshData) : void;

		/**
		 *
		 * @param	chunk
		 * @return
		 */
		private function readMeshTexVert (chunk:Chunk3ds) : Array;

		/**
		 *
		 * @param	chunk
		 */
		private function readMeshVertices (chunk:Chunk3ds) : Array;

		/**
		 * Reads a null-terminated ascii string out of a byte array.
		 * @param data The byte array to read from.
		 * @return The string read, without the null-terminating character.
		 */
		private function readASCIIZString (data:ByteArray) : String;

		/**
		 *
		 */
		private function readColor (colorChunk:Chunk3ds) : int;

		/**
		 * Read Scaled Color
		 * @param	chunk
		 */
		private function readColorScale (chunk:Chunk3ds) : int;

		/**
		 * Read RGB
		 * @param	chunk
		 */
		private function readColorRGB (chunk:Chunk3ds) : int;

		/**
		 * Read id and length of 3ds chunk
		 * @param chunk
		 */
		private function readChunk (chunk:Chunk3ds) : void;

		/**
		 * Skips past a chunk. If we don't understand the meaning of a chunk id,
		 * we just skip past it.
		 * @param chunk
		 */
		private function skipChunk (chunk:Chunk3ds) : void;
	}
	private class Chunk3ds
	{
		public var id : int;
		public var length : int;
		public var bytesRead : int;
	}
	private class MeshData
	{
		public var name : String;
		public var vertices : Array;
		public var faces : Array;
		public var uvs : Array;
		public var materials : Array;
	}
	private class MaterialData
	{
		public var name : String;
		public var faces : Array;
	}
}
