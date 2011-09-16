package org.papervision3d.materials.special
{
	import flash.display.BitmapData;
	import flash.display.Graphics;
	import flash.geom.Matrix;
	import org.papervision3d.core.geom.renderables.Triangle3D;
	import org.papervision3d.core.material.TriangleMaterial;
	import org.papervision3d.core.proto.MaterialObject3D;
	import org.papervision3d.core.render.command.RenderTriangle;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.core.render.draw.ITriangleDrawer;
	import org.papervision3d.objects.DisplayObject3D;

	public class CompositeMaterial extends TriangleMaterial implements ITriangleDrawer
	{
		public var materials : Array;

		public function CompositeMaterial ();

		private function init () : void;

		public function addMaterial (material:MaterialObject3D) : void;

		public function removeMaterial (material:MaterialObject3D) : void;

		public function removeAllMaterials () : void;

		public function registerObject (displayObject3D:DisplayObject3D) : void;

		public function unregisterObject (displayObject3D:DisplayObject3D) : void;

		public function drawTriangle (tri:RenderTriangle, graphics:Graphics, renderSessionData:RenderSessionData, altBitmap:BitmapData=null, altUV:Matrix=null) : void;
	}
}
