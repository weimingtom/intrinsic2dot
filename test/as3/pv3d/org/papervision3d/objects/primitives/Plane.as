package org.papervision3d.objects.primitives
{
	import org.papervision3d.Papervision3D;
	import org.papervision3d.core.geom.*;
	import org.papervision3d.core.geom.renderables.Triangle3D;
	import org.papervision3d.core.geom.renderables.Vertex3D;
	import org.papervision3d.core.math.NumberUV;
	import org.papervision3d.core.proto.*;

	/**
	 * The Plane class lets you create and display flat rectangle objects.
	 * <p/>
	 * The rectangle can be divided in smaller segments. This is usually done to reduce linear mapping artifacts.
	 * <p/>
	 * Dividing the plane in the direction of the perspective or vanishing point, helps to reduce this problem. Perspective distortion dissapears when the plane is facing straignt to the camera, i.e. it is perpendicular with the vanishing point of the scene.
	 */
	public class Plane extends TriangleMesh3D
	{
		/**
		 * Number of segments horizontally. Defaults to 1.
		 */
		public var segmentsW : Number;

		/**
		 * Number of segments vertically. Defaults to 1.
		 */
		public var segmentsH : Number;

		/**
		 * Default size of Plane if not texture is defined.
		 */
		public static var DEFAULT_SIZE : Number;

		/**
		 * Default size of Plane if not texture is defined.
		 */
		public static var DEFAULT_SCALE : Number;

		/**
		 * Default value of gridX if not defined. The default value of gridY is gridX.
		 */
		public static var DEFAULT_SEGMENTS : Number;

		/**
		 * Create a new Plane object.
		 * <p/>
		 * @param	material	A MaterialObject3D object that contains the material properties of the object.
		 *   <p/>
		 * @param	width		[optional] - Desired width or scaling factor if there's bitmap texture in material and no height is supplied.
		 *   <p/>
		 * @param	height		[optional] - Desired height.
		 *   <p/>
		 * @param	segmentsW	[optional] - Number of segments horizontally. Defaults to 1.
		 *   <p/>
		 * @param	segmentsH	[optional] - Number of segments vertically. Defaults to segmentsW.
		 *   <p/>
		 */
		public function Plane (material:MaterialObject3D=null, width:Number=0, height:Number=0, segmentsW:Number=0, segmentsH:Number=0);

		private function buildPlane (width:Number, height:Number) : void;
	}
}
