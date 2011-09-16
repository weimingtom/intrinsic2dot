package org.papervision3d.view
{
	import org.papervision3d.cameras.SpringCamera3D;
	import org.papervision3d.cameras.Camera3D;
	import org.papervision3d.cameras.CameraType;
	import org.papervision3d.cameras.DebugCamera3D;
	import org.papervision3d.core.view.IView;
	import org.papervision3d.objects.DisplayObject3D;
	import org.papervision3d.render.BasicRenderEngine;
	import org.papervision3d.scenes.Scene3D;

	/**
	 * <p>
	 * BasicView provides a simple template for quickly setting up
	 * basic Papervision3D projects by creating a viewport, scene,
	 * camera, and renderer for you. Because BasicView is a subclass of
	 * Sprite, it can be added to any DisplayObject.
	 * 
	 *   </p>
	 * 
	 *   <p>
	 * <p>
	 * Example:
	 * </p>
	 * <pre><code>
	 * var width:Number = 640;
	 * var heigth:Number = 480;
	 * var scaleToStage:Boolean = true;
	 * var interactive:Boolean = true;
	 * var cameraType:String = Camera3D.TYPE;
	 * 
	 *   var myBasicView:BasicView = new BasicView(width, height, scaleToStage, interactive, cameraType);
	 * myDisplayObject.addChild(myBasicView);
	 * </code></pre>
	 * </p>
	 * @author Ralph Hauwert
	 */
	public class BasicView extends AbstractView implements IView
	{
		/**
		 * Exposes the camera as a <code>Camera3D</code>
		 */
		public function get cameraAsCamera3D () : Camera3D;

		/**
		 * Exposes the camera as a <code>DebugCamera3D</code>
		 */
		public function get cameraAsDebugCamera3D () : DebugCamera3D;

		/**
		 *
		 * @param viewportWidth		Width of the viewport
		 * @param viewportHeight	Height of the viewport
		 * @param scaleToStage		Whether you viewport should scale with the stage
		 * @param interactive		Whether your scene should be interactive
		 * @param cameraType		A String for the type of camera.
		 * @see org.papervision3d.cameras.CameraType
		 *   
		 */
		public function BasicView (viewportWidth:Number=640, viewportHeight:Number=480, scaleToStage:Boolean=true, interactive:Boolean=false, cameraType:String="Target");
	}
}
