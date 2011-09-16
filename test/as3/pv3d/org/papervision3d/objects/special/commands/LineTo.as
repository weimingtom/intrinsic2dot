package org.papervision3d.objects.special.commands
{
	import org.papervision3d.materials.special.VectorShapeMaterial;
	import flash.display.Graphics;
	import org.papervision3d.core.geom.renderables.Vertex3D;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.core.geom.renderables.Vertex3DInstance;

	/**
	 *
	 * @author Mark Barcinski
	 */
	public class LineTo implements IVectorShape
	{
		public var vertex : Vertex3D;
		private static const halfPI : Number = Math.PI/2;

		public function LineTo (vertex:Vertex3D);

		public function draw (graphics:Graphics, prevDrawn:Boolean) : Boolean;

		public function drawScaledStroke (prevVertex:Vertex3D, graphics:Graphics, renderSessionData:RenderSessionData, material:VectorShapeMaterial) : void;
	}
}
