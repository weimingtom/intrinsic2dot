package org.papervision3d.typography
{
	import org.papervision3d.core.proto.MaterialObject3D;
	import org.papervision3d.materials.special.Letter3DMaterial;
	import org.papervision3d.objects.DisplayObject3D;
	import org.papervision3d.objects.special.VectorShape3D;

	/**
	 *
	 * @author Mark Barcinski
	 */
	public class Text3D extends VectorShape3D
	{
		public var letters : Array;
		protected var _text : String;
		public var font : Font3D;
		public var lines : Array;
		private var _letterSpacing : Number;
		private var _lineSpacing : Number;
		private var _align : String;
		private var _lineHeight : Number;

		/// ////////////////////////////////////////////
		public function get letterSpacing () : Number;
		public function set letterSpacing (spacing:Number) : void;

		public function get lineSpacing () : Number;
		public function set lineSpacing (lineSpacing:Number) : void;

		public function get align () : String;
		public function set align (align:String) : void;

		public function get text () : String;
		public function set text (text:String) : void;

		public function Text3D (text:String, font:Font3D, material:MaterialObject3D, name:String=null);

		protected function createLetters (material:MaterialObject3D) : void;

		private function alignLetters () : void;

		private function removeLetters () : void;
	}
}
