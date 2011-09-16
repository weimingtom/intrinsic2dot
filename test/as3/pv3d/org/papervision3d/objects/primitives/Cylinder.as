package org.papervision3d.objects.primitives
{
	import org.papervision3d.Papervision3D;
	import org.papervision3d.core.geom.*;
	import org.papervision3d.core.geom.renderables.Triangle3D;
	import org.papervision3d.core.geom.renderables.Vertex3D;
	import org.papervision3d.core.math.NumberUV;
	import org.papervision3d.core.proto.*;

	/**
	 * The Cylinder class lets you create and display Cylinders.
	 * <p/>
	 * The Cylinder is divided in vertical and horizontal segment, the smallest combination is two vertical and three horizontal segments.
	 */
	public class Cylinder extends TriangleMesh3D
	{
		/**
		 * Number of segments horizontally. Defaults to 8.
		 */
		public var segmentsW : Number;

		/**
		 * Number of segments vertically. Defaults to 6.
		 */
		public var segmentsH : Number;

		/**
		 * Default radius of Cylinder if not defined.
		 */
		public static const DEFAULT_RADIUS : Number = 100;

		/**
		 * Default height if not defined.
		 */
		public static const DEFAULT_HEIGHT : Number = 100;

		/**
		 * Default scale of Cylinder texture if not defined.
		 */
		public static const DEFAULT_SCALE : Number = 1;

		/**
		 * Default value of gridX if not defined.
		 */
		public static const DEFAULT_SEGMENTSW : Number = 8;

		/**
		 * Default value of gridY if not defined.
		 */
		public static const DEFAULT_SEGMENTSH : Number = 6;

		/**
		 * Minimum value of gridX.
		 */
		public static const MIN_SEGMENTSW : Number = 3;

		/**
		 * Minimum value of gridY.
		 */
		public static const MIN_SEGMENTSH : Number = 1;

		/**
		 * Create a new Cylinder object.
		 * <p/>
		 * @param	material	A MaterialObject3D object that contains the material properties of the object.
		 *   <p/>
		 * @param	radius		[optional] - Desired radius.
		 *   <p/>
		 * @param	segmentsW	[optional] - Number of segments horizontally. Defaults to 8.
		 *   <p/>
		 * @param	segmentsH	[optional] - Number of segments vertically. Defaults to 6.
		 *   <p/>
		 * @param	topRadius	[optional] - An optional parameter for con- or diverging cylinders.
		 *   <p/>
		 * @param	topFace		[optional] - An optional parameter specifying if the top face of the cylinder should be drawn.
		 *   <p/>
		 * @param	bottomFace	[optional] - An optional parameter specifying if the bottom face of the cylinder should be drawn.
		 *   <p/>
		 */
		public function Cylinder (material:MaterialObject3D=null, radius:Number=100, height:Number=100, segmentsW:int=8, segmentsH:int=6, topRadius:Number=-1, topFace:Boolean=true, bottomFace:Boolean=true);

		private function buildCylinder (fRadius:Number, fHeight:Number, fTopRadius:Number, fTopFace:Boolean, fBottomFace:Boolean) : void;
	}
}
