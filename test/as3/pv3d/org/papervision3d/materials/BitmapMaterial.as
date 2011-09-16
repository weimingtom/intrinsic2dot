package org.papervision3d.materials
{
	import org.papervision3d.Papervision3D;
	import org.papervision3d.core.geom.renderables.Triangle3D;
	import org.papervision3d.core.geom.renderables.Vertex3DInstance;
	import org.papervision3d.core.log.PaperLogger;
	import org.papervision3d.core.material.TriangleMaterial;
	import org.papervision3d.core.proto.MaterialObject3D;
	import org.papervision3d.core.render.command.RenderTriangle;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.core.render.draw.ITriangleDrawer;
	import org.papervision3d.materials.utils.PrecisionMode;
	import org.papervision3d.materials.utils.RenderRecStorage;
	import flash.display.BitmapData;
	import flash.display.Graphics;
	import flash.geom.Matrix;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.utils.Dictionary;

	/**
	 * The BitmapMaterial class creates a texture from a BitmapData object.
	 * 
	 *   Materials collect data about how objects appear when rendered.
	 * 
	 */
	public class BitmapMaterial extends TriangleMaterial implements ITriangleDrawer
	{
		protected static const DEFAULT_FOCUS : Number = 200;
		protected static var hitRect : Rectangle;
		protected var renderRecStorage : Array;
		protected var focus : Number;
		protected var _precise : Boolean;
		protected var _precision : int;
		protected var _perPixelPrecision : int;
		public var minimumRenderSize : Number;
		protected var _texture : Object;

		/**
		 * Indicates if mip mapping is forced.
		 */
		public static var AUTO_MIP_MAPPING : Boolean;

		/**
		 * Levels of mip mapping to force.
		 */
		public static var MIP_MAP_DEPTH : Number;

		/**
		 * Precision mode indicates how triangles are created for precise texture render.
		 */
		public var precisionMode : int;
		public var uvMatrices : Dictionary;

		/**
		 *
		 * @private
		 */
		protected static var _triMatrix : Matrix;
		protected static var _triMap : Matrix;

		/**
		 *
		 * @private
		 */
		protected static var _localMatrix : Matrix;
		private var x0 : Number;
		private var y0 : Number;
		private var x1 : Number;
		private var y1 : Number;
		private var x2 : Number;
		private var y2 : Number;
		protected var ax : Number;
		protected var ay : Number;
		protected var az : Number;
		protected var bx : Number;
		protected var by : Number;
		protected var bz : Number;
		protected var cx : Number;
		protected var cy : Number;
		protected var cz : Number;
		protected var faz : Number;
		protected var fbz : Number;
		protected var fcz : Number;
		protected var mabz : Number;
		protected var mbcz : Number;
		protected var mcaz : Number;
		protected var mabx : Number;
		protected var maby : Number;
		protected var mbcx : Number;
		protected var mbcy : Number;
		protected var mcax : Number;
		protected var mcay : Number;
		protected var dabx : Number;
		protected var daby : Number;
		protected var dbcx : Number;
		protected var dbcy : Number;
		protected var dcax : Number;
		protected var dcay : Number;
		protected var dsab : Number;
		protected var dsbc : Number;
		protected var dsca : Number;
		protected var dmax : Number;
		protected var cullRect : Rectangle;
		protected var tempPreGrp : Graphics;
		protected var tempPreBmp : BitmapData;
		protected var tempPreRSD : RenderSessionData;
		protected var tempTriangleMatrix : Matrix;
		private var a2 : Number;
		private var b2 : Number;
		private var c2 : Number;
		private var d2 : Number;
		private var dx : Number;
		private var dy : Number;
		private var d2ab : Number;
		private var d2bc : Number;
		private var d2ca : Number;

		/**
		 * Sets the material's precise rendering mode. If set to true, material will adaptively render triangles to conquer texture distortion.
		 */
		public function set precise (boolean:Boolean) : void;
		public function get precise () : Boolean;

		/**
		 * If the material is rendering with
		 * @see precise to true, this sets tesselation per pixel ratio.
		 */
		public function set precision (precision:int) : void;
		public function get precision () : int;

		/**
		 * If the material is rendering with
		 * @see precise to true, this sets tesselation per pixel ratio.
		 *   
		 *     corrected to set per pixel precision exactly.
		 */
		public function set pixelPrecision (precision:int) : void;
		public function get pixelPrecision () : int;

		/**
		 * A texture object.
		 */
		public function get texture () : Object;
		/**
		 *
		 * @private
		 */
		public function set texture (asset:Object) : void;

		/**
		 * The BitmapMaterial class creates a texture from a BitmapData object.
		 * @param	asset				A BitmapData object.
		 */
		public function BitmapMaterial (asset:BitmapData=null, precise:Boolean=false);

		protected function createRenderRecStorage () : void;

		/**
		 * Resets the mapping coordinates. Use when the texture has been resized.
		 */
		public function resetMapping () : void;

		/**
		 *  drawTriangle
		 */
		public function drawTriangle (tri:RenderTriangle, graphics:Graphics, renderSessionData:RenderSessionData, altBitmap:BitmapData=null, altUV:Matrix=null) : void;

		/**
		 * Applies the updated UV texture mapping values to the triangle. This is required to speed up rendering.
		 * 
		 */
		public function transformUV (face3D:Triangle3D) : Matrix;

		/**
		 * Applies the updated UV texture mapping values to the triangle. This is required to speed up rendering.
		 * 
		 */
		public function transformUVRT (tri:RenderTriangle) : Matrix;

		protected function renderRec (emMap:Matrix, v0:Vertex3DInstance, v1:Vertex3DInstance, v2:Vertex3DInstance, index:Number) : void;

		/**
		 * Returns a string value representing the material properties in the specified BitmapMaterial object.
		 * @return	A string.
		 */
		public function toString () : String;

		protected function createBitmap (asset:BitmapData) : BitmapData;

		protected function correctBitmap (bitmap:BitmapData) : BitmapData;

		protected function extendBitmapEdges (bmp:BitmapData, originalWidth:Number, originalHeight:Number) : void;

		/**
		 * resetUVMatrices();
		 * 
		 *   Resets the precalculated uvmatrices, so they can be recalculated
		 */
		public function resetUVS () : void;

		/**
		 * Copies the properties of a material.
		 * @param	material	Material to copy from.
		 */
		public function copy (material:MaterialObject3D) : void;

		/**
		 * Creates a copy of the material.
		 * @return	A newly created material that contains the same properties.
		 */
		public function clone () : MaterialObject3D;

		public function destroy () : void;
	}
}
