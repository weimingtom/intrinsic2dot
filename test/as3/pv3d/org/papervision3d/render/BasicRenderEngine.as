package org.papervision3d.render
{
	import flash.geom.Point;
	import org.papervision3d.core.clipping.DefaultClipping;
	import org.papervision3d.core.proto.CameraObject3D;
	import org.papervision3d.core.proto.SceneObject3D;
	import org.papervision3d.core.render.AbstractRenderEngine;
	import org.papervision3d.core.render.IRenderEngine;
	import org.papervision3d.core.render.command.IRenderListItem;
	import org.papervision3d.core.render.command.RenderableListItem;
	import org.papervision3d.core.render.data.RenderHitData;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.core.render.data.RenderStatistics;
	import org.papervision3d.core.render.filter.BasicRenderFilter;
	import org.papervision3d.core.render.filter.IRenderFilter;
	import org.papervision3d.core.render.material.MaterialManager;
	import org.papervision3d.core.render.project.BasicProjectionPipeline;
	import org.papervision3d.core.render.project.ProjectionPipeline;
	import org.papervision3d.core.render.sort.BasicRenderSorter;
	import org.papervision3d.core.render.sort.IRenderSorter;
	import org.papervision3d.core.utils.StopWatch;
	import org.papervision3d.events.RendererEvent;
	import org.papervision3d.view.Viewport3D;
	import org.papervision3d.view.layer.ViewportLayer;

	/**
	 * <code>BasicRenderEngine</code> links <code>Viewport3D</code>s, 
	 * <code>Scene3D</code>, and <code>Camera3D</code>s together
	 * by gathering in all of their data, rendering the data, then calling the 
	 * necessary functions to update from the rendered data
	 */
	public class BasicRenderEngine extends AbstractRenderEngine implements IRenderEngine
	{
		/**
		 * The type of projection pipeline used for projecting and culling. Defaults
		 * to BasicProjectionPipeline
		 * @see org.papervision3d.core.render.project.BasicProjectionPipeline
		 */
		public var projectionPipeline : ProjectionPipeline;

		/**
		 * The type of z-sorting to be used with the rendered data based on 
		 * their respective screen depth. Defaults to <code>BasicRenderSorter</code>.
		 * @see org.papervision3d.core.render.sort.BasicRenderSorter
		 */
		public var sorter : IRenderSorter;
		public var clipping : DefaultClipping;

		/**
		 * A filter (such as FogFilter) to be used in the renderList. Defaults to 
		 * <code>BasicRenderFilter</code>
		 * @see org.papervision3d.core.render.filter.BasicRenderFilter
		 * @see org.papervision3d.core.render.filter.FogFilter
		 */
		public var filter : IRenderFilter;

		/// @private
		protected var renderDoneEvent : RendererEvent;

		/// @private
		protected var projectionDoneEvent : RendererEvent;

		/// @private
		protected var renderStatistics : RenderStatistics;

		/// @private
		protected var renderList : Array;

		/// @private
		protected var renderSessionData : RenderSessionData;

		/// @private
		protected var cleanRHD : RenderHitData;

		/// @private
		protected var stopWatch : StopWatch;

		/**
		 * Creates and prepares all the objects and events needed for rendering
		 */
		public function BasicRenderEngine ();

		/**
		 * Destroys all of <code>BasicRenderEngine</code>'s objects for Garbage Collection purposes.
		 */
		public function destroy () : void;

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

		/**
		 * Works similarly to <code>renderScene</code>, but also takes an array 
		 * of specific <code>ViewportLayer3D</code>'s to
		 * render
		 * @param camera				The <code>CameraObject3D</code> looking at the scene
		 * @param scene					The <code>Scene3D</code> holding the <code>DisplayObject3D</code>'s you want rendered
		 * @param viewPort				The <code>Viewport3D</code> that will display your scene
		 * @return RenderStatistics		The <code>RenderStatistics</code> objectholds all the data from the last render
		 * @see #renderScene
		 */
		public function renderLayers (scene:SceneObject3D, camera:CameraObject3D, viewPort:Viewport3D, layers:Array=null) : RenderStatistics;

		/// @private
		private function getLayerObjects (layers:Array) : Array;

		/// @private
		protected function doRender (renderSessionData:RenderSessionData, layers:Array=null) : RenderStatistics;

		/**
		 *
		 * @private
		 */
		public function hitTestPoint2D (point:Point, viewPort3D:Viewport3D) : RenderHitData;

		/**
		 * Adds a <code>renderCommand</code> to the <code>renderList</code>
		 * @param renderCommand		A command to be used in the <code>renderList</code>
		 * @return int				An integer representing the length of the <code>renderList</code>
		 */
		public function addToRenderList (renderCommand:RenderableListItem) : int;

		/**
		 * Removes a <code>renderCommand</code> from the <code>renderList</code>
		 * @param renderCommand		A command to be removed from the <code>renderList</code>
		 * @return int				An integer representing the length of the <code>renderList</code>
		 */
		public function removeFromRenderList (renderCommand:IRenderListItem) : int;
	}
}
