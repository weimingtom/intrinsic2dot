package org.papervision3d.objects.primitives
{
	import org.papervision3d.core.geom.TriangleMesh3D;
	import org.papervision3d.core.geom.renderables.Triangle3D;
	import org.papervision3d.core.geom.renderables.Vertex3D;
	import org.papervision3d.core.proto.MaterialObject3D;

	/**
	 * The PaperPlane class lets you create a paper plane object.
	 * <p/>
	 * Paper planes are useful for testing, when you want to know the direction an object is facing.
	 */
	public class PaperPlane extends TriangleMesh3D
	{
		/**
		 * Default value of segments.
		 */
		public static var DEFAULT_SCALE : Number;

		/**
		 * Creates a new PaperPlane object.
		 * <p/>
		 * @param	material	A Material3D object that contains the material properties of the object.
		 *   <p/>
		 * @param	scale		[optional] - Scaling factor
		 *   <p/>
		 */
		public function PaperPlane (material:MaterialObject3D=null, scale:Number=0);

		private function buildPaperPlane (scale:Number) : void;
	}
}
