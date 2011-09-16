package org.papervision3d.view.stats
{
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.utils.getTimer;
	import org.papervision3d.core.render.AbstractRenderEngine;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.events.RendererEvent;

	public class AbstractStatsView extends MovieClip
	{
		protected var _renderEngine : AbstractRenderEngine;
		protected var _renderSessionData : RenderSessionData;
		protected var _fps : int;
		protected var lastFrameTime : int;
		protected var currentFrameTime : int;

		public function set renderEngine (renderEngine:AbstractRenderEngine) : void;
		public function get renderEngine () : AbstractRenderEngine;

		public function set renderSessionData (renderSessionData:RenderSessionData) : void;
		public function get renderSessionData () : RenderSessionData;

		public function set fps (fps:int) : void;
		public function get fps () : int;

		public function AbstractStatsView ();

		protected function setupListeners () : void;

		protected function onRenderDone (event:RendererEvent) : void;

		protected function onFrame (event:Event) : void;
	}
}
