package org.papervision3d.view.layer
{
	import flash.display.Graphics;
	import flash.display.Sprite;
	import flash.utils.Dictionary;
	import org.papervision3d.core.log.PaperLogger;
	import org.papervision3d.core.ns.pv3dview;
	import org.papervision3d.core.render.command.RenderableListItem;
	import org.papervision3d.objects.DisplayObject3D;
	import org.papervision3d.view.Viewport3D;
	import org.papervision3d.view.layer.util.ViewportLayerSortMode;

	/**
	 *
	 * @Author Ralph Hauwert
	 */
	public class ViewportLayer extends Sprite
	{
		public var childLayers : Array;
		public var layers : Dictionary;
		public var displayObject3D : DisplayObject3D;
		public var displayObjects : Dictionary;
		public var layerIndex : Number;
		public var forceDepth : Boolean;
		public var screenDepth : Number;
		public var originDepth : Number;
		public var weight : Number;
		public var sortMode : String;
		public var dynamicLayer : Boolean;
		public var graphicsChannel : Graphics;
		protected var viewport : Viewport3D;

		public function ViewportLayer (viewport:Viewport3D, do3d:DisplayObject3D, isDynamic:Boolean=false);

		public function addDisplayObject3D (do3d:DisplayObject3D, recurse:Boolean=false) : void;

		public function removeDisplayObject3D (do3d:DisplayObject3D) : void;

		public function hasDisplayObject3D (do3d:DisplayObject3D) : Boolean;

		protected function init () : void;

		public function getChildLayer (do3d:DisplayObject3D, createNew:Boolean=true, recurse:Boolean=false) : ViewportLayer;

		protected function getChildLayerFor (displayObject3D:DisplayObject3D, recurse:Boolean=false) : ViewportLayer;

		public function childLayerIndex (do3d:DisplayObject3D) : Number;

		public function addLayer (vpl:ViewportLayer) : void;

		private function linkChild (do3d:DisplayObject3D, vpl:ViewportLayer, e:ViewportLayerEvent=null) : void;

		private function unlinkChild (do3d:DisplayObject3D, e:ViewportLayerEvent=null) : void;

		private function onChildAdded (e:ViewportLayerEvent) : void;

		private function onChildRemoved (e:ViewportLayerEvent) : void;

		public function updateBeforeRender () : void;

		public function updateAfterRender () : void;

		public function removeLayer (vpl:ViewportLayer) : void;

		public function removeLayerAt (index:Number) : void;

		public function getLayerObjects (ar:Array=null) : Array;

		public function clear () : void;

		protected function reset () : void;

		public function sortChildLayers () : void;

		protected function orderLayers () : void;

		public function processRenderItem (rc:RenderableListItem) : void;

		public function updateInfo () : void;

		public function removeAllLayers () : void;
	}
}
