package org.papervision3d.objects.special.commands
{
	import flash.display.Graphics;

	/**
	 *
	 * @author Mark Barcinski
	 */
	public class LineStyle implements IVectorShape
	{
		public var thickness : Number;
		public var color : uint;
		public var alpha : Number;
		public var pixelHinting : Boolean;
		public var scaleMode : String;
		public var caps : String;
		public var joints : String;
		public var miterLimit : Number;

		public function LineStyle (thickness:Number=-1, color:uint=0, alpha:Number=1.0, pixelHinting:Boolean=false, scaleMode:String="normal", caps:String=null, joints:String=null, miterLimit:Number=3);

		public function draw (graphics:Graphics, prevDrawn:Boolean) : Boolean;
	}
}
