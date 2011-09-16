package org.papervision3d.materials.shaders
{
	import flash.display.BitmapData;
	import flash.display.BitmapDataChannel;
	import flash.display.Graphics;
	import flash.display.Sprite;
	import flash.filters.DisplacementMapFilter;
	import flash.filters.DisplacementMapFilterMode;
	import flash.geom.Matrix;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import org.papervision3d.core.geom.renderables.Triangle3D;
	import org.papervision3d.core.geom.renderables.Vertex3DInstance;
	import org.papervision3d.core.math.Matrix3D;
	import org.papervision3d.core.math.Number3D;
	import org.papervision3d.core.proto.LightObject3D;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.core.render.shader.ShaderObjectData;
	import org.papervision3d.materials.utils.BumpmapGenerator;

	/**
	 *
	 * @Author Ralph Hauwert
	 */
	public class EnvMapShader extends LightShader implements IShader
	{
		protected var lightmapHalfwidth : Number;
		protected var lightmapHalfheight : Number;
		private var dFilter : DisplacementMapFilter;
		private var _envMap : BitmapData;
		private var _backEnvMap : BitmapData;
		private var _specularMap : BitmapData;
		private var _bumpMap : BitmapData;
		private var _ambientColor : int;
		private static var mapOrigin : Point;
		private static var origin : Point;
		private static var triMatrix : Matrix;
		private static var transformMatrix : Matrix;
		private static var light : Number3D;
		private static var p0 : Number;
		private static var q0 : Number;
		private static var p1 : Number;
		private static var q1 : Number;
		private static var p2 : Number;
		private static var q2 : Number;
		private static var v0 : Vertex3DInstance;
		private static var v1 : Vertex3DInstance;
		private static var v2 : Vertex3DInstance;
		private static var currentGraphics : Graphics;
		private static var v0x : Number;
		private static var v0y : Number;
		private static var v0z : Number;
		private static var v1x : Number;
		private static var v1y : Number;
		private static var v1z : Number;
		private static var v2x : Number;
		private static var v2y : Number;
		private static var v2z : Number;
		private static var sod : ShaderObjectData;
		private static var n0 : Number3D;
		private static var n1 : Number3D;
		private static var n2 : Number3D;
		private static var r : Rectangle;
		private static var lm : Matrix3D;

		/**
		 * Localized stuff.
		 */
		private static var useMap : BitmapData;
		private static var ts : Sprite;

		public function set bumpmap (bumpmap:BitmapData) : void;
		public function get bumpmap () : BitmapData;

		public function set envMap (lightMap:BitmapData) : void;
		public function get envMap () : BitmapData;

		public function set specularMap (specularMap:BitmapData) : void;
		public function get specularMap () : BitmapData;

		public function set ambientColor (ambient:int) : void;
		public function get ambientColor () : int;

		public function set backenvmap (envmap:BitmapData) : void;
		public function get backenvmap () : BitmapData;

		public function EnvMapShader (light:LightObject3D, envmap:BitmapData, backenvmap:BitmapData=null, ambientColor:int=0x000000, bumpMap:BitmapData=null, specularMap:BitmapData=null);

		public function renderLayer (triangle:Triangle3D, renderSessionData:RenderSessionData, sod:ShaderObjectData) : void;

		public function renderTri (triangle:Triangle3D, renderSessionData:RenderSessionData, sod:ShaderObjectData, bmp:BitmapData) : void;

		public function updateAfterRender (renderSessionData:RenderSessionData, sod:ShaderObjectData) : void;
	}
}
