package org.papervision3d.materials.shaders
{
	import flash.display.BitmapData;
	import flash.display.Graphics;
	import flash.geom.Matrix;
	import flash.utils.Dictionary;
	import org.papervision3d.core.log.PaperLogger;
	import org.papervision3d.core.material.TriangleMaterial;
	import org.papervision3d.core.render.command.RenderTriangle;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.core.render.draw.ITriangleDrawer;
	import org.papervision3d.core.render.material.IUpdateAfterMaterial;
	import org.papervision3d.core.render.material.IUpdateBeforeMaterial;
	import org.papervision3d.core.render.shader.ShaderObjectData;
	import org.papervision3d.materials.BitmapMaterial;
	import org.papervision3d.objects.DisplayObject3D;

	/**
	 *
	 * @Author Ralph Hauwert
	 */
	public class ShadedMaterial extends TriangleMaterial implements ITriangleDrawer, IUpdateBeforeMaterial, IUpdateAfterMaterial
	{
		private var _shaderCompositeMode : int;
		public var shader : Shader;
		public var material : BitmapMaterial;
		public var shaderObjectData : Dictionary;

		/**
		 * Localized vars
		 */
		private static var bmp : BitmapData;

		public function set shaderCompositeMode (compositeMode:int) : void;
		public function get shaderCompositeMode () : int;

		public function ShadedMaterial (material:BitmapMaterial, shader:Shader, compositeMode:int=0);

		private function init () : void;

		public function drawTriangle (tri:RenderTriangle, graphics:Graphics, renderSessionData:RenderSessionData, altBitmap:BitmapData=null, altUV:Matrix=null) : void;

		public function updateBeforeRender (renderSessionData:RenderSessionData) : void;

		public function updateAfterRender (renderSessionData:RenderSessionData) : void;

		public function registerObject (displayObject3D:DisplayObject3D) : void;

		public function unregisterObject (displayObject3D:DisplayObject3D) : void;

		/**
		 * Debug thingy.
		 */
		public function getOutputBitmapDataFor (object:DisplayObject3D) : BitmapData;

		public function destroy () : void;
	}
}
