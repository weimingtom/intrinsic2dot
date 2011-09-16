package org.papervision3d.materials.special
{
	import flash.display.Graphics;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.view.Viewport3D;

	public class FogMaterial
	{
		public var color : uint;
		public var alpha : Number;

		public function FogMaterial (color:uint=0);

		public function draw (renderSessionData:RenderSessionData, graphics:Graphics, alpha:Number) : void;
	}
}
