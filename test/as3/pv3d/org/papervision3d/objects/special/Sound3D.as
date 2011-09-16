package org.papervision3d.objects.special
{
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.media.SoundTransform;
	import org.papervision3d.core.proto.CameraObject3D;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.objects.DisplayObject3D;

	public class Sound3D extends DisplayObject3D
	{
		public var sound : Sound;
		public var soundChannel : SoundChannel;
		public var maxSoundDistance : Number;
		public var soundDistance : Number;
		public var soundPan : Number;

		public function play (startTime:Number=0, loops:int=0, sndTransform:SoundTransform=null) : void;

		public function stop (startTime:Number=0, loops:int=0, sndTransform:SoundTransform=null) : void;

		private function setPan (pan:Number) : void;

		private function setVolume (volume:Number) : void;

		public function updateSound (camera:CameraObject3D) : void;

		public function Sound3D (soundObj:Sound=null);

		public function project (parent:DisplayObject3D, renderSessionData:RenderSessionData) : Number;
	}
}
