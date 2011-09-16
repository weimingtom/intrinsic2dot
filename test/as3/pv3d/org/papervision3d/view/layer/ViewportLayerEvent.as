package org.papervision3d.view.layer
{
	import flash.events.Event;
	import org.papervision3d.objects.DisplayObject3D;

	public class ViewportLayerEvent extends Event
	{
		public var do3d : DisplayObject3D;
		public var layer : ViewportLayer;
		public static const CHILD_ADDED : String = "childAdded";
		public static const CHILD_REMOVED : String = "childRemoved";

		public function ViewportLayerEvent (type:String, do3d:DisplayObject3D=null, layer:ViewportLayer=null);
	}
}
