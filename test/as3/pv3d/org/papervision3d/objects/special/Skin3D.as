package org.papervision3d.objects.special
{
	import org.papervision3d.core.geom.TriangleMesh3D;
	import org.papervision3d.core.math.Matrix3D;
	import org.papervision3d.core.proto.MaterialObject3D;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.objects.DisplayObject3D;

	/**
	 *
	 * @author Tim Knip
	 */
	public class Skin3D extends TriangleMesh3D
	{
		public function Skin3D (material:MaterialObject3D, vertices:Array, faces:Array, name:String=null);

		public function project (parent:DisplayObject3D, renderSessionData:RenderSessionData) : Number;

		public function clone () : DisplayObject3D;
	}
}
