package org.papervision3d.materials.shadematerials
{
	import flash.display.BitmapData;
	import flash.display.Graphics;
	import flash.geom.Matrix;
	import org.papervision3d.core.geom.renderables.Triangle3D;
	import org.papervision3d.core.material.AbstractSmoothShadeMaterial;
	import org.papervision3d.core.math.Matrix3D;
	import org.papervision3d.core.proto.LightObject3D;
	import org.papervision3d.core.render.command.RenderTriangle;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.core.render.draw.ITriangleDrawer;
	import org.papervision3d.core.render.material.IUpdateBeforeMaterial;
	import org.papervision3d.materials.utils.LightMaps;

	/**
	 *
	 * @Author Ralph Hauwert
	 */
	public class GouraudMaterial extends AbstractSmoothShadeMaterial implements ITriangleDrawer, IUpdateBeforeMaterial
	{
		private var gouraudMap : BitmapData;

		public function GouraudMaterial (light:LightObject3D, lightColor:uint=0xFFFFFF, ambientColor:uint=0x000000, specularLevel:uint=0);

		public function drawTriangle (tri:RenderTriangle, graphics:Graphics, renderSessionData:RenderSessionData, altBitmap:BitmapData=null, altUV:Matrix=null) : void;
	}
}
