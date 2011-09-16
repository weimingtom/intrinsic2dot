package org.papervision3d.view.layer
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import org.papervision3d.core.effects.AbstractEffect;
	import org.papervision3d.core.effects.utils.BitmapClearMode;
	import org.papervision3d.core.effects.utils.BitmapDrawCommand;
	import org.papervision3d.objects.DisplayObject3D;
	import org.papervision3d.view.Viewport3D;

	public class BitmapEffectLayer extends ViewportLayer
	{
		public var canvas : BitmapData;
		private var transMat : Matrix;
		public var clearMode : String;
		public var clippingRect : Rectangle;
		public var clippingPoint : Point;
		public var drawCommand : BitmapDrawCommand;
		public var clearBeforeRender : Boolean;
		public var bitmapContainer : Bitmap;
		private var _width : Number;
		private var _height : Number;
		public var trackingObject : DisplayObject3D;
		public var trackingOffset : Point;
		public var scrollX : Number;
		public var scrollY : Number;
		public var effects : Array;
		public var drawLayer : Sprite;
		public var renderAbove : Boolean;

		public function BitmapEffectLayer (viewport:Viewport3D, w:Number=640, h:Number=480, transparent:Boolean=true, fillColor:uint=0, clearMode:String="clear_pre", renderAbove:Boolean=false, clearBeforeRender:Boolean=false);

		public function setBitmapOffset (x:Number, y:Number) : void;

		public function setTracking (object:DisplayObject3D, offset:Point=null) : void;

		public function setScroll (x:Number=0, y:Number=0) : void;

		public function fillCanvas (color:uint) : void;

		public function renderEffects () : void;

		public function removeEffect (fx:AbstractEffect) : void;

		public function setClipping (rect:Rectangle, point:Point) : void;

		public function addEffect (fx:AbstractEffect) : void;

		public function updateBeforeRender () : void;

		public function updateAfterRender () : void;

		public function getTranslationMatrix () : Matrix;
	}
}
