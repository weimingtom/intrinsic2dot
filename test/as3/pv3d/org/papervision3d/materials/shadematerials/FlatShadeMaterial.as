package org.papervision3d.materials.shadematerials
{
	import flash.display.BitmapData;
	import flash.display.Graphics;
	import flash.geom.Matrix;
	import org.papervision3d.core.geom.renderables.Triangle3D;
	import org.papervision3d.core.material.AbstractLightShadeMaterial;
	import org.papervision3d.core.math.Matrix3D;
	import org.papervision3d.core.proto.LightObject3D;
	import org.papervision3d.core.render.command.RenderTriangle;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.core.render.draw.ITriangleDrawer;
	import org.papervision3d.materials.utils.LightMaps;

	/**
	 *
	 * @Author Ralph Hauwert
	 */
	public class FlatShadeMaterial extends AbstractLightShadeMaterial implements ITriangleDrawer
	{
		private static var currentColor : int;
		private static var zAngle : int;
		protected var _colors : Array;

		/**
		 * Localized stuff.
		 */
		private static var zd : Number;
		private static var x0 : Number;
		private static var y0 : Number;

		public function FlatShadeMaterial (light:LightObject3D, lightColor:uint=0xffffff, ambientColor:uint=0x000000, specularLevel:uint=0);

		public function drawTriangle (tri:RenderTriangle, graphics:Graphics, renderSessionData:RenderSessionData, altBitmap:BitmapData=null, altUV:Matrix=null) : void;
	}
}
