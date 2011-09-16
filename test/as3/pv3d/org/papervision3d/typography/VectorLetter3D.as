package org.papervision3d.typography
{
	import org.papervision3d.core.geom.renderables.Vertex3D;
	import org.papervision3d.materials.special.Letter3DMaterial;
	import org.papervision3d.objects.special.VectorShape3D;

	/**
	 *
	 * @author Mark Barcinski
	 */
	public class VectorLetter3D extends VectorShape3D implements Letter3D
	{
		private var _width : Number;
		private var _height : Number;
		private var _char : String;
		private var _font : Font3D;

		public function get width () : Number;
		public function set width (value:Number) : void;

		public function get height () : Number;
		public function set height (height:Number) : void;

		public function get char () : String;
		public function set char (value:String) : void;

		public function get font () : Font3D;
		public function set font (value:Font3D) : void;

		public function VectorLetter3D (char:String, material:Letter3DMaterial, font:Font3D);

		protected function getLetterFromFont () : void;

		protected function createVertices (motif:Array) : void;
	}
}
