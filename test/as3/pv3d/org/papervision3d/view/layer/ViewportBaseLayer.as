package org.papervision3d.view.layer
{
	import org.papervision3d.objects.DisplayObject3D;
	import org.papervision3d.view.Viewport3D;

	/**
	 *
	 * @Author Ralph Hauwert
	 */
	public class ViewportBaseLayer extends ViewportLayer
	{
		public function ViewportBaseLayer (viewport:Viewport3D);

		public function getChildLayer (do3d:DisplayObject3D, createNew:Boolean=true, recurse:Boolean=false) : ViewportLayer;

		public function updateBeforeRender () : void;
	}
}
