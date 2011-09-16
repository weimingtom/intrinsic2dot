package org.papervision3d.materials.shaders
{
	import flash.display.BitmapData;
	import flash.display.Graphics;
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.geom.Rectangle;
	import org.papervision3d.core.geom.renderables.Triangle3D;
	import org.papervision3d.core.geom.renderables.Vertex3DInstance;
	import org.papervision3d.core.math.Matrix3D;
	import org.papervision3d.core.math.Number3D;
	import org.papervision3d.core.proto.LightObject3D;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.core.render.shader.ShaderObjectData;
	import org.papervision3d.materials.utils.LightMaps;

	/**
	 *
	 * @Author Ralph Hauwert
	 */
	public class GouraudShader extends LightShader
	{
		private var _ambientColor : int;
		private var gouraudMap : BitmapData;
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

		/**
		 * Localized vars
		 */
		private var lightMatrix : Matrix3D;
		private static var ts : Sprite;

		public function set ambientColor (ambient:int) : void;
		public function get ambientColor () : int;

		public function GouraudShader (light:LightObject3D, lightColor:uint=0xFFFFFF, ambientColor:uint=0x000000, specularLevel:uint=0);

		public function renderLayer (triangle:Triangle3D, renderSessionData:RenderSessionData, sod:ShaderObjectData) : void;

		public function renderTri (triangle:Triangle3D, renderSessionData:RenderSessionData, sod:ShaderObjectData, bmp:BitmapData) : void;
	}
}
