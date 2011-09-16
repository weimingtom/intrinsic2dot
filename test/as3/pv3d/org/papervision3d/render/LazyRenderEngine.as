package org.papervision3d.render
{
	import org.papervision3d.core.proto.CameraObject3D;
	import org.papervision3d.core.render.IRenderEngine;
	import org.papervision3d.core.render.data.RenderStatistics;
	import org.papervision3d.scenes.Scene3D;
	import org.papervision3d.view.Viewport3D;

	/**
	 *
	 * @Author Ralph Hauwert
	 */
	public class LazyRenderEngine extends BasicRenderEngine implements IRenderEngine
	{
		protected var _camera : CameraObject3D;
		protected var _scene : Scene3D;
		protected var _viewport : Viewport3D;

		public function set camera (camera:CameraObject3D) : void;
		public function get camera () : CameraObject3D;

		public function set scene (scene:Scene3D) : void;
		public function get scene () : Scene3D;

		public function set viewport (viewport:Viewport3D) : void;
		public function get viewport () : Viewport3D;

		public function LazyRenderEngine (scene:Scene3D, camera:CameraObject3D, viewport:Viewport3D);

		public function render () : RenderStatistics;
	}
}
