package org.papervision3d.materials.special
{
	import org.papervision3d.core.geom.renderables.Vertex3D;
	import org.papervision3d.core.math.Matrix3D;
	import org.papervision3d.core.math.Number3D;
	import org.papervision3d.core.proto.MaterialObject3D;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.objects.DisplayObject3D;
	import org.papervision3d.objects.special.VectorShape3D;
	import org.papervision3d.objects.special.commands.CurveTo;
	import org.papervision3d.objects.special.commands.LineTo;
	import org.papervision3d.objects.special.commands.MoveTo;
	import flash.display.Graphics;

	/**
	 *
	 * @author Mark Barcinski
	 */
	public class Letter3DMaterial extends VectorShapeMaterial
	{
		public var scaleStroke : Boolean;
		private static var viewVector : Number3D;
		private static var normalVector : Number3D;

		public function Letter3DMaterial (fillColor:uint=0xFF00FF, fillAlpha:Number=1);

		public function drawShape (vectorShape:VectorShape3D, graphics:Graphics, renderSessionData:RenderSessionData) : void;
	}
}
