package org.papervision3d.render
{
	import org.papervision3d.cameras.Camera3D;
	import org.papervision3d.core.clipping.draw.Clipping;
	import org.papervision3d.core.clipping.draw.RectangleClipping;
	import org.papervision3d.core.proto.CameraObject3D;
	import org.papervision3d.core.proto.SceneObject3D;
	import org.papervision3d.core.render.IRenderEngine;
	import org.papervision3d.core.render.command.RenderableListItem;
	import org.papervision3d.core.render.data.QuadTree;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.core.render.data.RenderStatistics;
	import org.papervision3d.core.render.filter.AbstractQuadrantFilter;
	import org.papervision3d.core.render.filter.BasicRenderFilter;
	import org.papervision3d.core.render.filter.QuadrantFilter;
	import org.papervision3d.core.render.filter.QuadrantZFilter;
	import org.papervision3d.core.render.material.MaterialManager;
	import org.papervision3d.core.render.project.BasicProjectionPipeline;
	import org.papervision3d.core.render.sort.BasicRenderSorter;
	import org.papervision3d.core.utils.StopWatch;
	import org.papervision3d.events.RendererEvent;
	import org.papervision3d.scenes.Scene3D;
	import org.papervision3d.view.Viewport3D;
	import org.papervision3d.view.layer.ViewportLayer;

	/**
	 * <code>BasicRenderEngine</code> links <code>Viewport3D</code>s, 
	 * <code>Scene3D</code>, and <code>Camera3D</code>s together
	 * by gathering in all of their data, rendering the data, then calling the 
	 * necessary functions to update from the rendered data
	 */
	public class QuadrantRenderEngine extends BasicRenderEngine implements IRenderEngine
	{
		public var quadTree : QuadTree;
		private var clip : Clipping;
		public var quadFilters : Array;
		public static var CORRECT_Z_FILTER : Number;
		public static var QUAD_SPLIT_FILTER : Number;
		public static var ALL_FILTERS : Number;

		/**
		 * Creates and prepares all the objects and events needed for rendering
		 */
		public function QuadrantRenderEngine (type:Number=3);

		/// @private
		protected function init () : void;

		/**
		 * Takes the data from the scene, camera, and viewport, renders it, then updates the viewport
		 * @param camera			The <code>CameraObject3D</code> looking at the scene
		 * @param scene				The <code>Scene3D</code> holding the <code>DisplayObject3D</code>'s you want rendered
		 * @param viewPort			The <code>Viewport3D</code> that will display your scene
		 * @return RenderStatistics		The <code>RenderStatistics</code> objectholds all the data from the last render
		 */
		public function renderScene (scene:SceneObject3D, camera:CameraObject3D, viewPort:Viewport3D) : RenderStatistics;

		/// @private
		private function getLayerObjects (layers:Array) : Array;

		/// @private
		protected function doRender (renderSessionData:RenderSessionData, layers:Array=null) : RenderStatistics;

		public function addToRenderList (renderCommand:RenderableListItem) : int;
	}
}
