package org.papervision3d.materials.shaders
{
	import flash.display.BitmapData;
	import flash.display.Graphics;
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import org.papervision3d.core.geom.renderables.Triangle3D;
	import org.papervision3d.core.math.Matrix3D;
	import org.papervision3d.core.proto.LightObject3D;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.core.render.shader.ShaderObjectData;
	import org.papervision3d.materials.utils.LightMaps;

	/**
	 *
	 * @Author Ralph Hauwert
	 */
	public class FlatShader extends LightShader implements IShader, ILightShader
	{
		private static var triMatrix : Matrix;
		private static var currentGraphics : Graphics;
		private static var zAngle : Number;
		private static var currentColor : int;
		private static var vx : Number;
		private static var vy : Number;
		private static var vz : Number;
		public var lightColor : int;
		public var ambientColor : int;
		public var specularLevel : int;
		private var _colors : Array;
		private var _colorRamp : BitmapData;

		/**
		 * Localized vars
		 */
		private static var zd : Number;
		private static var lightMatrix : Matrix3D;
		private static var sod : ShaderObjectData;

		/**
		 *Localized var
		 */
		public static var scaleMatrix : Matrix;

		public function FlatShader (light:LightObject3D, lightColor:int=0xFFFFFF, ambientColor:int=0x000000, specularLevel:int=0);

		public function renderLayer (triangle:Triangle3D, renderSessionData:RenderSessionData, sod:ShaderObjectData) : void;

		public function renderTri (triangle:Triangle3D, renderSessionData:RenderSessionData, sod:ShaderObjectData, bmp:BitmapData) : void;
	}
}
