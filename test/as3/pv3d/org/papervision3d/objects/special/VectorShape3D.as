package org.papervision3d.objects.special
{
	import org.papervision3d.core.geom.Vertices3D;
	import org.papervision3d.core.geom.renderables.Vertex3D;
	import org.papervision3d.core.proto.GeometryObject3D;
	import org.papervision3d.core.proto.MaterialObject3D;
	import org.papervision3d.core.render.command.RenderVectorShape;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.materials.special.VectorShapeMaterial;
	import org.papervision3d.objects.DisplayObject3D;

	/**
	 *
	 * @author Mark Barcinski
	 */
	public class VectorShape3D extends Vertices3D
	{
		public var graphicsCommands : Array;
		public var renderCommand : RenderVectorShape;
		public var graphics : Graphics3D;

		public function set material (material:MaterialObject3D) : void;

		public function VectorShape3D (material:MaterialObject3D, vertices:Array=null, name:String=null);

		public function project (parent:DisplayObject3D, renderSessionData:RenderSessionData) : Number;
	}
}
