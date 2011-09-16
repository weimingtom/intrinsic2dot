package org.papervision3d.materials.shadematerials
{
	import flash.display.BitmapData;
	import flash.display.Graphics;
	import flash.geom.Matrix;
	import org.papervision3d.core.geom.renderables.Triangle3D;
	import org.papervision3d.core.geom.renderables.Vertex3DInstance;
	import org.papervision3d.core.material.AbstractSmoothShadeMaterial;
	import org.papervision3d.core.math.Matrix3D;
	import org.papervision3d.core.proto.LightObject3D;
	import org.papervision3d.core.render.command.RenderTriangle;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.core.render.draw.ITriangleDrawer;

	/**
	 *
	 * @Author Ralph Hauwert
	 */
	public class EnvMapMaterial extends AbstractSmoothShadeMaterial implements ITriangleDrawer
	{
		private static var p0 : Number;
		private static var q0 : Number;
		private static var p1 : Number;
		private static var q1 : Number;
		private static var p2 : Number;
		private static var q2 : Number;
		private static var v0 : Vertex3DInstance;
		private static var v1 : Vertex3DInstance;
		private static var v2 : Vertex3DInstance;
		private static var x1 : Number;
		private static var x0 : Number;
		private static var x2 : Number;
		private static var y0 : Number;
		private static var y1 : Number;
		private static var y2 : Number;
		protected var lightmapHalfheight : Number;
		protected var lightmapHalfwidth : Number;
		public var _lightMap : BitmapData;
		public var backenvmap : BitmapData;

		/**
		 * Localized stuff.
		 */
		private static var useMap : BitmapData;

		public function set lightMap (lightMap:BitmapData) : void;
		public function get lightMap () : BitmapData;

		public function EnvMapMaterial (light:LightObject3D, lightMap:BitmapData, backEnvMap:BitmapData=null, ambientColor:int=0);

		public function drawTriangle (tri:RenderTriangle, graphics:Graphics, renderSessionData:RenderSessionData, altBitmap:BitmapData=null, altUV:Matrix=null) : void;
	}
}
