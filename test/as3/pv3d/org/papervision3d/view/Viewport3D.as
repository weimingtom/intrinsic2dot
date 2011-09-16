package org.papervision3d.view
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.utils.Dictionary;
	import org.papervision3d.core.culling.DefaultLineCuller;
	import org.papervision3d.core.culling.DefaultParticleCuller;
	import org.papervision3d.core.culling.DefaultTriangleCuller;
	import org.papervision3d.core.culling.ILineCuller;
	import org.papervision3d.core.culling.IParticleCuller;
	import org.papervision3d.core.culling.ITriangleCuller;
	import org.papervision3d.core.culling.RectangleLineCuller;
	import org.papervision3d.core.culling.RectangleParticleCuller;
	import org.papervision3d.core.culling.RectangleTriangleCuller;
	import org.papervision3d.core.culling.ViewportObjectFilter;
	import org.papervision3d.core.geom.renderables.Triangle3D;
	import org.papervision3d.core.log.PaperLogger;
	import org.papervision3d.core.render.IRenderEngine;
	import org.papervision3d.core.render.command.IRenderListItem;
	import org.papervision3d.core.render.command.RenderableListItem;
	import org.papervision3d.core.render.data.RenderHitData;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.core.utils.InteractiveSceneManager;
	import org.papervision3d.core.view.IViewport3D;
	import org.papervision3d.objects.DisplayObject3D;
	import org.papervision3d.view.layer.ViewportBaseLayer;
	import org.papervision3d.view.layer.ViewportLayer;

	public class Viewport3D extends Sprite implements IViewport3D
	{
		/// @private
		protected var _width : Number;

		/// @private
		protected var _hWidth : Number;

		/// @private
		protected var _height : Number;

		/// @private
		protected var _hHeight : Number;

		/// @private
		protected var _autoClipping : Boolean;

		/// @private
		protected var _autoCulling : Boolean;

		/// @private
		protected var _autoScaleToStage : Boolean;

		/// @private
		protected var _interactive : Boolean;

		/// @private
		protected var _lastRenderer : IRenderEngine;

		/// @private
		protected var _viewportObjectFilter : ViewportObjectFilter;

		/// @private
		protected var _containerSprite : ViewportBaseLayer;

		/// @private
		protected var _layerInstances : Dictionary;

		/**
		 * sizeRectangle stores the width and the height of the Viewport3D sprite
		 * @see #viewportWidth
		 * @see #viewportHeight
		 */
		public var sizeRectangle : Rectangle;

		/**
		 * cullingRectangle stores the width, height, x, y of the culling rectangle. It's used to determine the bounds in which the triangles are drawn.
		 * @see #autoCulling
		 */
		public var cullingRectangle : Rectangle;

		/**
		 * triangleCuller uses the cullingRectangle to determine which triangles will not be rendered in BasicRenderEngine
		 * @see #autoCulling
		 */
		public var triangleCuller : ITriangleCuller;

		/**
		 * particleCuller uses the cullingRectangle to determine which particles will not be rendered in BasicRenderEngine
		 * @see #autoCulling
		 */
		public var particleCuller : IParticleCuller;

		/**
		 * lineCuller uses the culling Rectangle to determine which particles will not be rendered in BasicRenderEngine
		 * @see #autoCulling
		 */
		public var lineCuller : ILineCuller;

		/**
		 * lastRenderList stores RenderableListItems (Triangles, Lines, Pixels, Particles, Fog) of everything that was rendered in the last pass. This list is used to determine hitTests in hitTestPoint2D.
		 * @see #hitTestPoint2D()
		 */
		public var lastRenderList : Array;

		/**
		 * interactiveSceneManager manages the interaction between the user's mouse and the Papervision3D scene. This is done by checking the mouse against renderHitData. renderHitData is generated from hitTestPoint2D and passed into the interactiveSceneManager to check agains the various mouse actions.
		 * @see #hitTestPoint2D()
		 * @see org.papervision3d.core.utils.InteractiveSceneManager#renderHitData
		 */
		public var interactiveSceneManager : InteractiveSceneManager;

		/// @private
		protected var renderHitData : RenderHitData;
		private var stageScaleModeSet : Boolean;

		/**
		 * Sets the viewport width
		 * @param width		A number designating the width of the viewport
		 */
		public function set viewportWidth (width:Number) : void;
		/**
		 * Width of the <code>Viewport3D</code>
		 */
		public function get viewportWidth () : Number;

		/**
		 * Sets the the height of the <code>Viewport3D</code>
		 * @param height 	A number designating the height of the <code>Viewport3D</code>
		 */
		public function set viewportHeight (height:Number) : void;
		/**
		 * Height of the Viewport
		 */
		public function get viewportHeight () : Number;

		/**
		 * The <code>Sprite</code> holding the <code>Viewport3D</code>
		 */
		public function get containerSprite () : ViewportLayer;

		/**
		 * Whether clipping is enabled (not rendering bitmap data outside the rectangle of the viewport by making use of the <code>Sprite.scrollRect</code>)
		 * @see flash.display.Sprite#scrollRect
		 * @see http://www.gskinner.com/blog/archives/2006/11/understanding_d.html
		 */
		public function get autoClipping () : Boolean;
		public function set autoClipping (clip:Boolean) : void;

		/**
		 * Whether culling is enabled (not rendering triangles hidden behind other triangles)
		 * @see #lineCuller
		 * @see #particleCuller
		 * @see #triangleCuller
		 */
		public function get autoCulling () : Boolean;
		public function set autoCulling (culling:Boolean) : void;

		/**
		 * Whether the <code>Viewport3D</code> should scale with the <code>Stage</code>
		 */
		public function set autoScaleToStage (scale:Boolean) : void;
		/**
		 * The auto scale to stage boolean flag
		 */
		public function get autoScaleToStage () : Boolean;

		/**
		 * Whether the <code>Viewport3D</code> should listen for <code>Mouse</code> events and create an <code>InteractiveSceneManager</code>
		 */
		public function set interactive (b:Boolean) : void;
		/**
		 * The interactive boolean flag
		 */
		public function get interactive () : Boolean;

		/**
		 * Sets the <code>ViewportObjectFilter</code> of the <code>Viewport3D</code>
		 * @param vof		The <code>ViewportObjectFilter</code> you want applied
		 */
		public function set viewportObjectFilter (vof:ViewportObjectFilter) : void;
		/**
		 * The <code>ViewportObjectFilter</code>
		 */
		public function get viewportObjectFilter () : ViewportObjectFilter;

		/**
		 *
		 * @param viewportWidth 	Width of the viewport
		 * @param viewportHeight 	Height of the viewport
		 * @param autoScaleToStage 	Determines whether the viewport should resize when the stage resizes
		 * @param interactive 		Determines whether the viewport should listen for Mouse events by creating an <code>InteractiveSceneManager</code>
		 * @param autoClipping 		Determines whether DisplayObject3Ds outside the rectangle of the viewport should be rendered
		 * @param autoCulling 		Detemines whether only the objects in front of the camera should be rendered. In other words, if a triangle is hidden by another triangle from the camera, it will not be rendered.
		 */
		public function Viewport3D (viewportWidth:Number=640, viewportHeight:Number=480, autoScaleToStage:Boolean=false, interactive:Boolean=false, autoClipping:Boolean=true, autoCulling:Boolean=true);

		/**
		 * Removes all references and sets the viewport's
		 * InteractiveSceneManager to null for a future
		 * garbage collection sweep
		 */
		public function destroy () : void;

		/**
		 *
		 * @private
		 */
		protected function init () : void;

		/**
		 * Checks the Mouse x and y against the <code>RenderHitData</code>
		 * @return RenderHitData of the current mouse location
		 */
		public function hitTestMouse () : RenderHitData;

		/**
		 * Checks a <code>Point</code> against the <code>RenderHitData</code>
		 * of the viewport
		 * @param point		a 2d <code>Point</code> you want to analyze into 3d space
		 * @return <code>RenderHitData</code> of the given <code>Point</code>
		 */
		public function hitTestPoint2D (point:Point) : RenderHitData;

		public function hitTestPointObject (point:Point, object:DisplayObject3D) : RenderHitData;

		/**
		 * Creates or receives a <code>ViewportLayer</code> of the given <code>DisplayObject3D</code>
		 * @param do3d			A <code>DisplayObject3D</code> used to either find the layer or create a new one
		 * @param createNew		Forces the creation of a new layer
		 * @param recurse		Adds the <code>DisplayObject3D</code> as well as all of its children to a new layer
		 * @return <code>ViewportLayer</code> of the given <code>DisplayObject3D</code>
		 */
		public function getChildLayer (do3d:DisplayObject3D, createNew:Boolean=true, recurse:Boolean=true) : ViewportLayer;

		/**
		 * Gets the layer of the RenderListItem. Most-likely internal use.
		 * @param rc			A RenderableListItem to look for
		 * @param setInstance	sets the container to the layer
		 * @return 				The found <code>ViewportLayer</code>
		 */
		public function accessLayerFor (rc:RenderableListItem, setInstance:Boolean=false) : ViewportLayer;

		/**
		 * Triggered when added to the stage to start listening to stage resizing
		 */
		protected function onAddedToStage (event:Event) : void;

		/**
		 * Triggered when removed from the stage to remove the stage resizing listener
		 */
		protected function onRemovedFromStage (event:Event) : void;

		/**
		 * Resizes the viewport when the stage is resized (if autoScaleToStage == true)
		 */
		protected function onStageResize (event:Event=null) : void;

		protected function setStageScaleMode () : void;

		/**
		 * Updates a <code>ViewportLayer</code> prior to the 3d data being rendered into the 2d scene
		 * @param renderSessionData		All the information regarding the current renderSession packed into one class
		 */
		public function updateBeforeRender (renderSessionData:RenderSessionData) : void;

		/**
		 * Updates a <code>ViewportLayer</code> after the 3d data is rendered into the 2d scene
		 * @param renderSessionData		All the information regarding the current renderSession packed into one class
		 */
		public function updateAfterRender (renderSessionData:RenderSessionData) : void;
	}
}
