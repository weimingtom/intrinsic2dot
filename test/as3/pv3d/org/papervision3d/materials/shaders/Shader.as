package org.papervision3d.materials.shaders
{
	import flash.display.BitmapData;
	import flash.display.BlendMode;
	import flash.display.Sprite;
	import flash.events.EventDispatcher;
	import flash.filters.BitmapFilter;
	import flash.utils.Dictionary;
	import org.papervision3d.core.geom.renderables.Triangle3D;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.core.render.shader.ShaderObjectData;
	import org.papervision3d.objects.DisplayObject3D;

	/**
	 *
	 * @Author Ralph Hauwert
	 */
	public class Shader extends EventDispatcher implements IShader
	{
		protected var _filter : BitmapFilter;
		protected var _blendMode : String;
		protected var _object : DisplayObject3D;
		protected var layers : Dictionary;

		public function set filter (filter:BitmapFilter) : void;
		public function get filter () : BitmapFilter;

		public function set layerBlendMode (blendMode:String) : void;
		public function get layerBlendMode () : String;

		public function Shader ();

		public function renderLayer (triangle:Triangle3D, renderSessionData:RenderSessionData, sod:ShaderObjectData) : void;

		public function renderTri (triangle:Triangle3D, renderSessionData:RenderSessionData, sod:ShaderObjectData, bmp:BitmapData) : void;

		public function destroy () : void;

		public function setContainerForObject (object:DisplayObject3D, layer:Sprite) : void;

		public function updateAfterRender (renderSessionData:RenderSessionData, sod:ShaderObjectData) : void;
	}
}
