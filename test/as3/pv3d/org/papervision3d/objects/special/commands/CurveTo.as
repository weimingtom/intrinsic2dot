package org.papervision3d.objects.special.commands
{
	import flash.display.Graphics;
	import org.papervision3d.core.geom.renderables.Vertex3D;
	import org.papervision3d.core.geom.renderables.Vertex3DInstance;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.materials.special.VectorShapeMaterial;
	import org.papervision3d.objects.special.commands.IVectorShape;

	/**
	 *
	 * @author Mark Barcinski
	 */
	public class CurveTo implements IVectorShape
	{
		public var control : Vertex3D;
		public var anchor : Vertex3D;
		private static var halfPI : Number;

		public function CurveTo (control:Vertex3D, anchor:Vertex3D);

		public function draw (graphics:Graphics, prevDrawn:Boolean) : Boolean;

		public function drawScaledStroke (prevVertex:Vertex3D, graphics:Graphics, renderSessionData:RenderSessionData, material:VectorShapeMaterial) : void;
	}
}
