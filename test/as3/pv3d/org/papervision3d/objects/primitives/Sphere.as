package org.papervision3d.objects.primitives
{
	import org.papervision3d.Papervision3D;
	import org.papervision3d.core.geom.*;
	import org.papervision3d.core.geom.renderables.Triangle3D;
	import org.papervision3d.core.geom.renderables.Vertex3D;
	import org.papervision3d.core.math.NumberUV;
	import org.papervision3d.core.proto.*;

	/**
	 * The Sphere class lets you create and display spheres.
	 * <p/>
	 * The sphere is divided in vertical and horizontal segment, the smallest combination is two vertical and three horizontal segments.
	 */
	public class Sphere extends TriangleMesh3D
	{
		/**
		 * Number of segments horizontally. Defaults to 8.
		 */
		private var segmentsW : Number;

		/**
		 * Number of segments vertically. Defaults to 6.
		 */
		private var segmentsH : Number;

		/**
		 * Default radius of Sphere if not defined.
		 */
		public static var DEFAULT_RADIUS : Number;

		/**
		 * Default scale of Sphere texture if not defined.
		 */
		public static var DEFAULT_SCALE : Number;

		/**
		 * Default value of gridX if not defined.
		 */
		public static var DEFAULT_SEGMENTSW : Number;

		/**
		 * Default value of gridY if not defined.
		 */
		public static var DEFAULT_SEGMENTSH : Number;

		/**
		 * Minimum value of gridX.
		 */
		public static var MIN_SEGMENTSW : Number;

		/**
		 * Minimum value of gridY.
		 */
		public static var MIN_SEGMENTSH : Number;

		/**
		 * Create a new Sphere object.
		 * <p/>
		 * @param	material	A MaterialObject3D object that contains the material properties of the object.
		 *   <p/>
		 * @param	radius		[optional] - Desired radius.
		 *   <p/>
		 * @param	segmentsW	[optional] - Number of segments horizontally. Defaults to 8.
		 *   <p/>
		 * @param	segmentsH	[optional] - Number of segments vertically. Defaults to 6.
		 *   <p/>
		 */
		public function Sphere (material:MaterialObject3D=null, radius:Number=100, segmentsW:int=8, segmentsH:int=6);

		private function buildSphere (fRadius:Number) : void;
	}
}
