package org.papervision3d.materials.special
{
	import flash.display.Graphics;
	import org.papervision3d.core.proto.MaterialObject3D;
	import org.papervision3d.core.render.command.RenderLine;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.core.render.draw.ILineDrawer;

	public class LineMaterial extends MaterialObject3D implements ILineDrawer
	{
		public function LineMaterial (color:Number=0xFF0000, alpha:Number=1);

		public function drawLine (line:RenderLine, graphics:Graphics, renderSessionData:RenderSessionData) : void;
	}
}
