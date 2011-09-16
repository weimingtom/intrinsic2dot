package org.papervision3d.objects.special
{
	import org.papervision3d.core.proto.GeometryObject3D;
	import flash.display.BitmapData;
	import flash.geom.Matrix;
	import org.papervision3d.core.geom.renderables.Vertex3D;
	import org.papervision3d.objects.special.commands.BeginFill;
	import org.papervision3d.objects.special.commands.CurveTo;
	import org.papervision3d.objects.special.commands.EndFill;
	import org.papervision3d.objects.special.commands.LineStyle;
	import org.papervision3d.objects.special.commands.LineTo;
	import org.papervision3d.objects.special.commands.MoveTo;
	import org.papervision3d.objects.DisplayObject3D;

	/**
	 *
	 * @author Mark Barcinski
	 */
	public class Graphics3D
	{
		private var vectorshape : VectorShape3D;

		public function Graphics3D (vectorshape:VectorShape3D);

		public function beginFill (color:uint, alpha:Number=1) : void;

		public function endFill () : void;

		public function curveTo (controlX:Number, controlY:Number, anchorX:Number, anchorY:Number) : void;

		public function lineTo (x:Number, y:Number) : void;

		public function moveTo (x:Number, y:Number) : void;

		public function lineStyle (thickness:Number=-1, color:uint=0, alpha:Number=1.0, pixelHinting:Boolean=false, scaleMode:String="normal", caps:String=null, joints:String=null, miterLimit:Number=3) : void;

		public function drawRect (x:Number, y:Number, width:Number, height:Number) : void;

		public function drawRoundRect (x:Number, y:Number, width:Number, height:Number, ellipseWidth:Number, ellipseHeight:Number) : void;

		public function clear () : void;

		public function drawCircle (x:Number, y:Number, radius:Number, numPoints:int=8) : void;

		public function drawEllipse (x:Number, y:Number, width:Number, height:Number, numPoints:int=8) : void;
	}
}
