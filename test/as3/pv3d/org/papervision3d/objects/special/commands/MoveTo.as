package org.papervision3d.objects.special.commands
{
	import flash.display.Graphics;
	import org.papervision3d.core.geom.renderables.Vertex3D;

	/**
	 *
	 * @author Mark Barcinski
	 */
	public class MoveTo implements IVectorShape
	{
		public var vertex : Vertex3D;

		public function MoveTo (vertex:Vertex3D);

		public function draw (graphics:Graphics, prevDrawn:Boolean) : Boolean;
	}
}
