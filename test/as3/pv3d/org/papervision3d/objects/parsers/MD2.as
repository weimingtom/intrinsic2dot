package org.papervision3d.objects.parsers
{
	import org.papervision3d.Papervision3D;
	import flash.events.Event;
	import flash.events.ProgressEvent;
	import flash.net.URLLoader;
	import flash.net.URLLoaderDataFormat;
	import flash.net.URLRequest;
	import flash.utils.ByteArray;
	import flash.utils.Endian;
	import org.papervision3d.core.animation.IAnimatable;
	import org.papervision3d.core.animation.IAnimationProvider;
	import org.papervision3d.core.animation.clip.AnimationClip3D;
	import org.papervision3d.core.controller.IControllerProvider;
	import org.papervision3d.core.controller.IObjectController;
	import org.papervision3d.core.animation.key.LinearCurveKey3D;
	import org.papervision3d.core.animation.curve.Curve3D;
	import org.papervision3d.core.animation.channel.geometry.VerticesChannel3D;
	import org.papervision3d.core.animation.channel.Channel3D;
	import org.papervision3d.core.controller.AnimationController;
	import org.papervision3d.core.geom.TriangleMesh3D;
	import org.papervision3d.core.geom.renderables.*;
	import org.papervision3d.core.log.PaperLogger;
	import org.papervision3d.core.math.NumberUV;
	import org.papervision3d.core.proto.MaterialObject3D;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.events.FileLoadEvent;
	import org.papervision3d.objects.DisplayObject3D;

	/**
	 * Loads Quake 2 MD2 file with animation!
	 * </p>Please feel free to use, but please mention me!</p>
	 * @author Philippe Ajoux (philippe.ajoux@gmail.com) adapted by Tim Knip(tim.knip at gmail.com).
	 * @website www.d3s.net
	 * @version 04.11.07:11:56
	 */
	public class MD2 extends TriangleMesh3D implements IAnimatable, IAnimationProvider, IControllerProvider
	{
		/**
		 *
		 */
		protected var _animation : AnimationController;

		/**
		 *
		 */
		protected var _controllers : Array;

		/**
		 * Variables used in the loading of the file
		 */
		protected var file : String;
		protected var loader : URLLoader;
		protected var loadScale : Number;

		/**
		 * MD2 Header data
		 * These are all the variables found in the md2_header_t
		 * C style struct that starts every MD2 file.
		 */
		protected var ident : int;
		protected var version : int;
		protected var skinwidth : int;
		protected var skinheight : int;
		protected var framesize : int;
		protected var num_skins : int;
		protected var num_vertices : int;
		protected var num_st : int;
		protected var num_tris : int;
		protected var num_glcmds : int;
		protected var num_frames : int;
		protected var offset_skins : int;
		protected var offset_st : int;
		protected var offset_tris : int;
		protected var offset_frames : int;
		protected var offset_glcmds : int;
		protected var offset_end : int;
		protected var _fps : int;
		protected var _autoPlay : Boolean;

		/**
		 * Gets / sets the animation controller.
		 * @see org.papervision3d.core.controller.AnimationController
		 */
		public function set animation (value:AnimationController) : void;
		public function get animation () : AnimationController;

		/**
		 * Gets / sets all controlllers.
		 * @return	Array of controllers.
		 * @see org.papervision3d.core.controller.IObjectController
		 * @see org.papervision3d.core.controller.AnimationController
		 * @see org.papervision3d.core.controller.MorphController
		 * @see org.papervision3d.core.controller.SkinController
		 */
		public function set controllers (value:Array) : void;
		public function get controllers () : Array;

		/**
		 * Whether the animation is playing. This property is read-only.
		 * @return True when playing.
		 */
		public function get playing () : Boolean;

		/**
		 * Constructor.
		 * @param	autoPlay	Whether to start the _animation automatically.
		 */
		public function MD2 (autoPlay:Boolean=true);

		/**
		 * Pauses the animation.
		 */
		public function pause () : void;

		/**
		 * Plays the animation.
		 * @param 	clip	Clip to play. Default is "all"
		 * @param 	loop	Whether the animation should loop. Default is true.
		 */
		public function play (clip:String="all", loop:Boolean=true) : void;

		/**
		 * Resumes a paused animation.
		 * @param loop 	Whether the animation should loop. Defaults is true.
		 */
		public function resume (loop:Boolean=true) : void;

		/**
		 * Stops the animation.
		 */
		public function stop () : void;

		/**
		 * Loads the MD2.
		 * @param	asset	URL or ByteArray
		 * @param	material	The material for the MD2
		 * @param	fps		Frames per second
		 * @param	scale	Scale
		 */
		public function load (asset:*, material:MaterialObject3D=null, fps:int=6, scale:Number=1) : void;

		/**
		 * Project.
		 * @param	parent
		 * @param	renderSessionData
		 * @return	Number
		 */
		public function project (parent:DisplayObject3D, renderSessionData:RenderSessionData) : Number;

		/**
		 * <p>Parses the MD2 file. This is actually pretty straight forward.
		 * Only complicated parts (bit convoluded) are the frame loading
		 * and "metaface" loading. Hey, it works, use it =)</p>
		 * @param	data	A ByteArray
		 */
		protected function parse (data:ByteArray) : void;

		/**
		 * Reads in all the frames
		 */
		protected function readFrames (data:ByteArray) : void;

		/**
		 * Reads in all that MD2 Header data that is declared as private variables.
		 * I know its a lot, and it looks ugly, but only way to do it in Flash
		 */
		protected function readMd2Header (data:ByteArray) : void;

		/**
		 *
		 */
		protected function loadCompleteHandler (event:Event) : void;

		/**
		 *
		 * @param	event
		 * @return
		 */
		protected function loadProgressHandler (event:ProgressEvent) : void;
	}
}
