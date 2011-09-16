package org.papervision3d.materials
{
	import flash.display.DisplayObject;
	import flash.events.NetStatusEvent;
	import flash.geom.Matrix;
	import flash.media.Video;
	import flash.net.NetStream;
	import org.papervision3d.core.render.draw.ITriangleDrawer;

	public class VideoStreamMaterial extends MovieMaterial implements ITriangleDrawer
	{
		/**
		 * The NetStream and Vdeo that are used as a texture.
		 */
		public var stream : NetStream;
		public var video : Video;

		/**
		 * The MovieMaterial class creates a texture from an existing Video instance.
		 * @param	video			A video object that display the FLV file
		 * @param	stream			Stream that is used to play the FLV file
		 * @param 	transparent		Whether we're using a transparent video or not.
		 */
		public function VideoStreamMaterial (video:Video, stream:NetStream, precise:Boolean=false, transparent:Boolean=false);

		/**
		 * Executes when the VideoMaterial is instantiated
		 */
		private function initMaterial (video:Video, stream:NetStream) : void;

		/**
		 * Updates Video Bitmap
		 * 
		 *   Draws the current Video frame onto bitmap.
		 */
		public function updateBitmap () : void;

		/**
		 * Executes when the status of the NetStream object changes
		 * @param Event that invoked the handler
		 */
		private function onStreamStatus (event:NetStatusEvent) : void;

		/**
		 * Returns a string value representing the material properties in the specified VideoMaterial object.
		 * @return	A string.
		 */
		public function toString () : String;
	}
}
