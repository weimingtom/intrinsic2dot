package org.papervision3d.objects.primitives
{
	import org.papervision3d.Papervision3D;
	import org.papervision3d.core.geom.*;
	import org.papervision3d.core.geom.renderables.Triangle3D;
	import org.papervision3d.core.geom.renderables.Vertex3D;
	import org.papervision3d.core.log.PaperLogger;
	import org.papervision3d.core.math.Number3D;
	import org.papervision3d.core.math.NumberUV;
	import org.papervision3d.core.proto.*;
	import org.papervision3d.materials.utils.MaterialsList;

	/**
	 * The Cube class lets you create and display flat rectangle objects.
	 * <p/>
	 * The rectangle can be divided in smaller segments. This is usually done to reduce linear mapping artifacts.
	 * <p/>
	 * Dividing the Cube in the direction of the perspective or vanishing point, helps to reduce this problem. Perspective distortion dissapears when the Cube is facing straignt to the camera, i.e. it is perpendicular with the vanishing point of the scene.
	 */
	public class Cube extends TriangleMesh3D
	{
		/**
		 * Number of segments per axis. Defaults to 1.
		 */
		public var segments : Number3D;

		/**
		 * No faces selected.
		 */
		public static var NONE : int;

		/**
		 * Front face selection
		 */
		public static var FRONT : int;

		/**
		 * Back face selection
		 */
		public static var BACK : int;

		/**
		 * Right face selection
		 */
		public static var RIGHT : int;

		/**
		 * Left face selection
		 */
		public static var LEFT : int;

		/**
		 * Top face selection
		 */
		public static var TOP : int;

		/**
		 * Bottom face selection
		 */
		public static var BOTTOM : int;

		/**
		 * All faces selected.
		 */
		public static var ALL : int;
		private var insideFaces : int;
		private var excludeFaces : int;

		/**
		 * Create a new Cube object.
		 * <p/>
		 * @param	materials	A MaterialObject3D object that contains the material properties of the object.
		 *   
		 *     Supported materials are: front, back, right, left, top, bottom & all, for example:
		 *   
		 *     var materials:MaterialsList = new MaterialsList(
		 *   {
		 *   all:	new MovieAssetMaterial( "Front", true ), // This is the default material
		 *   front:  new MovieAssetMaterial( "Front", true ),
		 *   back:   new MovieAssetMaterial( "Back", true ),
		 *   right:  new MovieAssetMaterial( "Right", true ),
		 *   left:   new MovieAssetMaterial( "Left", true ),
		 *   top:    new MovieAssetMaterial( "Top", true ),
		 *   bottom: new MovieAssetMaterial( "Bottom", true )
		 *   } );
		 *   
		 *     <p/>
		 * @param	width			[optional] - Desired width.
		 *   <p/>
		 * @param	depth			[optional] - Desired depth.
		 *   <p/>
		 * @param	height			[optional] - Desired height.
		 *   <p/>
		 * @param	segmentsS		[optional] - Number of segments sagitally (plane perpendicular to width). Defaults to 1.
		 *   <p/>
		 * @param	segmentsT		[optional] - Number of segments transversally (plane perpendicular to depth). Defaults to segmentsS.
		 *   <p/>
		 * @param	segmentsH		[optional] - Number of segments horizontally (plane perpendicular to height). Defaults to segmentsS.
		 *   <p/>
		 * @param	insideFaces		[optional] - Faces that are visible from the inside. Defaults to Cube.NONE.
		 *   
		 *     You can add or sustract faces to your selection. For examples: Cube.FRONT+Cube.BACK or Cube.ALL-Cube.Top.
		 *   
		 *     <p/>
		 * @param	excludeFaces	[optional] - Faces that will not be created. Defaults to Cube.NONE.
		 *   
		 *     You can add or sustract faces to your selection. For examples: Cube.FRONT+Cube.BACK or Cube.ALL-Cube.Top.
		 *   
		 *     <p/>
		 */
		public function Cube (materials:MaterialsList, width:Number=500, depth:Number=500, height:Number=500, segmentsS:int=1, segmentsT:int=1, segmentsH:int=1, insideFaces:int=0, excludeFaces:int=0);

		protected function buildCube (width:Number, height:Number, depth:Number) : void;

		protected function buildPlane (mat:String, u:String, v:String, width:Number, height:Number, depth:Number, reverse:Boolean=false) : void;

		public function destroy () : void;
	}
}
