package org.papervision3d.view.stats
{
	import flash.system.System;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	import org.papervision3d.core.render.AbstractRenderEngine;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.core.render.data.RenderStatistics;
	import org.papervision3d.objects.DisplayObject3D;
	import org.papervision3d.scenes.Scene3D;

	public class StatsView extends AbstractStatsView
	{
		protected var statsFormat : TextFormat;
		public var totalPolyCount : Number;
		protected var polyCountField : TextField;
		protected var memInfoTestField : TextField;
		protected var fpsInfoTextField : TextField;
		protected var objectInfoTextField : TextField;
		protected var renderInfoTextField : TextField;
		protected var cullingInfoTextField : TextField;

		public function set renderSessionData (renderSessionData:RenderSessionData) : void;

		public function set fps (fps:int) : void;

		public static function countPolys (obj:DisplayObject3D) : Number;

		protected static function recurseDisplayObject (obj:DisplayObject3D, polygonCount:Number) : Number;

		public function StatsView (renderEngine:AbstractRenderEngine);

		protected function init () : void;

		protected function setupView () : void;

		public function updatePolyCount (scene:Scene3D) : void;
	}
}
