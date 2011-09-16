package org.papervision3d.objects.special
{
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.objects.DisplayObject3D;

	public class SimpleLevelOfDetail extends DisplayObject3D
	{
		public var currentObject : DisplayObject3D;
		public var objects : Array;
		public var minDepth : Number;
		public var maxDepth : Number;
		public var distances : Array;

		public function SimpleLevelOfDetail (objects:Array, minDepth:Number=1000, maxDepth:Number=10000, distances:Array=null);

		public function updateLoD (index:Number=-1) : void;

		public function project (parent:DisplayObject3D, renderSessionData:RenderSessionData) : Number;
	}
}
